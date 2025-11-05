package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.util.LongSparseArray;
import android.util.Property;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BotHelpCell;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.UserInfoCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.ChatGreetingsView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ThanosEffect;
import org.telegram.ui.TextMessageEnterTransition;
import org.telegram.ui.VoiceMessageEnterTransition;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ChatListItemAnimator extends DefaultItemAnimator {
    public static final Interpolator DEFAULT_INTERPOLATOR = new CubicBezierInterpolator(0.19919472913616398d, 0.010644531250000006d, 0.27920937042459737d, 0.91025390625d);
    private final ChatActivity activity;
    long alphaEnterDelay;
    private ChatGreetingsView chatGreetingsView;
    private Utilities.Callback0Return getThanosEffectContainer;
    private RecyclerView.ViewHolder greetingsSticker;
    private final RecyclerListView recyclerListView;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean reversePositions;
    private boolean shouldAnimateEnterFromBottom;
    private Utilities.Callback0Return supportsThanosEffectContainer;
    private HashMap willRemovedGroup = new HashMap();
    private ArrayList willChangedGroups = new ArrayList();
    HashMap animators = new HashMap();
    ArrayList thanosViews = new ArrayList();
    ArrayList runOnAnimationsEnd = new ArrayList();
    HashMap groupIdToEnterDelay = new HashMap();
    private final ArrayList toBeSnapped = new ArrayList();

    class ItemHolderInfoExtended extends RecyclerView.ItemAnimator.ItemHolderInfo {
        float imageHeight;
        float imageWidth;
        float imageX;
        float imageY;

        ItemHolderInfoExtended() {
        }
    }

    class MoveInfoExtended extends DefaultItemAnimator.MoveInfo {
        public boolean animateBackgroundOnly;
        public boolean animateChangeGroupBackground;
        public boolean animateChangeInternal;
        boolean animateImage;
        public boolean animatePinnedBottom;
        boolean animateRemoveGroup;
        int deltaBottom;
        int deltaLeft;
        int deltaRight;
        int deltaTop;
        public int groupOffsetBottom;
        public int groupOffsetLeft;
        public int groupOffsetRight;
        public int groupOffsetTop;
        float imageHeight;
        float imageWidth;
        float imageX;
        float imageY;

        MoveInfoExtended(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            super(viewHolder, i, i2, i3, i4);
        }
    }

    public ChatListItemAnimator(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        this.activity = chatActivity;
        this.recyclerListView = recyclerListView;
        this.translationInterpolator = DEFAULT_INTERPOLATOR;
        this.alwaysCreateMoveAnimationIfPossible = true;
        setSupportsChangeAnimations(false);
    }

    private void animateRemoveGroupImpl(final ArrayList arrayList) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("animate remove group impl with thanos");
        }
        this.mRemoveAnimations.addAll(arrayList);
        ThanosEffect thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run();
        for (int i = 0; i < arrayList.size(); i++) {
            dispatchRemoveStarting((RecyclerView.ViewHolder) arrayList.get(i));
        }
        final ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((RecyclerView.ViewHolder) arrayList.get(i2)).itemView);
        }
        thanosEffect.animateGroup(arrayList2, new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$animateRemoveGroupImpl$10(arrayList2, arrayList);
            }
        });
        this.thanosViews.add((View) arrayList2.get(0));
        this.recyclerListView.stopScroll();
    }

    private void cancelAnimators() {
        ThanosEffect thanosEffect;
        ArrayList arrayList = new ArrayList(this.animators.values());
        this.animators.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (animator != null) {
                animator.cancel();
            }
        }
        if (this.thanosViews.isEmpty() || (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) == null) {
            return;
        }
        thanosEffect.kill();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateAddImpl$8(ChatMessageCell chatMessageCell, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.getTransitionParams().animateChangeProgress = fFloatValue;
        if (chatMessageCell.getTransitionParams().animateChangeProgress > 1.0f) {
            chatMessageCell.getTransitionParams().animateChangeProgress = 1.0f;
        }
        float f9 = 1.0f - fFloatValue;
        chatMessageCell.getPhotoImage().setImageCoords(f + (f2 * f9), f3 + (f4 * f9), (f5 * f9) + (f6 * fFloatValue), (f7 * f9) + (f8 * fFloatValue));
        chatMessageCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$2(MoveInfoExtended moveInfoExtended, ChatMessageCell.TransitionParams transitionParams, boolean z, float f, float f2, ChatMessageCell chatMessageCell, int[] iArr, RecyclerView.ViewHolder viewHolder, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f3 = 1.0f - fFloatValue;
        float f4 = (moveInfoExtended.imageX * f3) + (transitionParams.animateToImageX * fFloatValue);
        float f5 = (moveInfoExtended.imageY * f3) + (transitionParams.animateToImageY * fFloatValue);
        float f6 = (moveInfoExtended.imageWidth * f3) + (transitionParams.animateToImageW * fFloatValue);
        float f7 = (moveInfoExtended.imageHeight * f3) + (transitionParams.animateToImageH * fFloatValue);
        if (z) {
            float f8 = (f * f3) + (f2 * fFloatValue);
            transitionParams.captionEnterProgress = f8;
            if (chatMessageCell.getCurrentMessagesGroup() != null) {
                chatMessageCell.getCurrentMessagesGroup().transitionParams.captionEnterProgress = f8;
            }
        }
        if (transitionParams.animateRadius) {
            int[] iArr2 = transitionParams.animateToRadius;
            chatMessageCell.getPhotoImage().setRoundRadius((int) ((iArr[0] * f3) + (iArr2[0] * fFloatValue)), (int) ((iArr[1] * f3) + (iArr2[1] * fFloatValue)), (int) ((iArr[2] * f3) + (iArr2[2] * fFloatValue)), (int) ((iArr[3] * f3) + (iArr2[3] * fFloatValue)));
        }
        chatMessageCell.setImageCoords(f4, f5, f6, f7);
        viewHolder.itemView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$3(MoveInfoExtended moveInfoExtended, ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        float translationY;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (moveInfoExtended.animateBackgroundOnly) {
            transitionParams.deltaLeft = (-moveInfoExtended.deltaLeft) * fFloatValue;
            transitionParams.deltaRight = (-moveInfoExtended.deltaRight) * fFloatValue;
            transitionParams.deltaTop = (-moveInfoExtended.deltaTop) * fFloatValue;
            translationY = (-moveInfoExtended.deltaBottom) * fFloatValue;
        } else {
            transitionParams.deltaLeft = ((-moveInfoExtended.deltaLeft) * fFloatValue) - chatMessageCell.getAnimationOffsetX();
            transitionParams.deltaRight = ((-moveInfoExtended.deltaRight) * fFloatValue) - chatMessageCell.getAnimationOffsetX();
            transitionParams.deltaTop = ((-moveInfoExtended.deltaTop) * fFloatValue) - chatMessageCell.getTranslationY();
            translationY = ((-moveInfoExtended.deltaBottom) * fFloatValue) - chatMessageCell.getTranslationY();
        }
        transitionParams.deltaBottom = translationY;
        chatMessageCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$4(MessageObject.GroupedMessages.TransitionParams transitionParams, MoveInfoExtended moveInfoExtended, boolean z, float f, float f2, RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        transitionParams.offsetTop = moveInfoExtended.groupOffsetTop * fFloatValue;
        transitionParams.offsetBottom = moveInfoExtended.groupOffsetBottom * fFloatValue;
        transitionParams.offsetLeft = moveInfoExtended.groupOffsetLeft * fFloatValue;
        transitionParams.offsetRight = moveInfoExtended.groupOffsetRight * fFloatValue;
        if (z) {
            transitionParams.captionEnterProgress = (f * fFloatValue) + (f2 * (1.0f - fFloatValue));
        }
        if (recyclerListView != null) {
            recyclerListView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$5(ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        transitionParams.changePinnedBottomProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$6(ChatMessageCell.TransitionParams transitionParams, ChatMessageCell chatMessageCell, ValueAnimator valueAnimator) {
        transitionParams.animateChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatMessageCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$animateMoveImpl$7(ChatActionCell.TransitionParams transitionParams, ChatActionCell chatActionCell, ValueAnimator valueAnimator) {
        transitionParams.animateChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        chatActionCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateRemoveGroupImpl$10(ArrayList arrayList, ArrayList arrayList2) {
        for (int i = 0; i < arrayList.size(); i++) {
            ((View) arrayList.get(i)).setVisibility(0);
        }
        if (this.mRemoveAnimations.removeAll(arrayList2)) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                dispatchRemoveFinished((RecyclerView.ViewHolder) arrayList2.get(i2));
            }
            dispatchFinishedWhenDone();
        }
        this.thanosViews.removeAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateRemoveImpl$9(View view, RecyclerView.ViewHolder viewHolder) {
        view.setVisibility(0);
        if (this.mRemoveAnimations.remove(viewHolder)) {
            dispatchRemoveFinished(viewHolder);
            dispatchFinishedWhenDone();
        }
        this.thanosViews.remove(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$runAlphaEnterTransition$1(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return viewHolder2.itemView.getTop() - viewHolder.itemView.getTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runPendingAnimations$0(ValueAnimator valueAnimator) {
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null) {
            chatActivity.onListItemAnimatorTick();
        } else {
            this.recyclerListView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004f A[PHI: r3
      0x004f: PHI (r3v4 int) = (r3v3 int), (r3v9 int) binds: [B:10:0x004d, B:5:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void restoreTransitionParams(View view) {
        int measuredHeight;
        view.setAlpha(1.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        float top = BitmapDescriptorFactory.HUE_RED;
        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        if (view instanceof BotHelpCell) {
            measuredHeight = (this.recyclerListView.getMeasuredHeight() / 2) - (view.getMeasuredHeight() / 2);
            ((BotHelpCell) view).setAnimating(false);
            if (view.getTop() > measuredHeight) {
                top = measuredHeight - view.getTop();
            }
        } else {
            if (!(view instanceof UserInfoCell)) {
                if (view instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                    chatMessageCell.getTransitionParams().resetAnimation();
                    chatMessageCell.setAnimationOffsetX(BitmapDescriptorFactory.HUE_RED);
                    return;
                } else if (view instanceof ChatActionCell) {
                    ((ChatActionCell) view).getTransitionParams().resetAnimation();
                    return;
                } else {
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
            }
            measuredHeight = (this.recyclerListView.getMeasuredHeight() / 2) - (view.getMeasuredHeight() / 2);
            ((UserInfoCell) view).setAnimating(false);
            if (view.getTop() > measuredHeight) {
            }
        }
        view.setTranslationY(top);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void runAlphaEnterTransition() {
        final boolean z;
        MessageObject.GroupedMessages currentMessagesGroup;
        MessageObject messageObject;
        Utilities.Callback0Return callback0Return;
        boolean z2 = !this.mPendingRemovals.isEmpty();
        boolean z3 = !this.mPendingMoves.isEmpty();
        boolean z4 = !this.mPendingChanges.isEmpty();
        boolean z5 = !this.mPendingAdditions.isEmpty();
        if (z2 || z3 || z5 || z4) {
            boolean z6 = (this.getThanosEffectContainer == null || (callback0Return = this.supportsThanosEffectContainer) == null || !((Boolean) callback0Return.run()).booleanValue()) ? false : true;
            if (z6) {
                LongSparseArray longSparseArray = null;
                int i = 0;
                while (i < this.mPendingRemovals.size()) {
                    RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) this.mPendingRemovals.get(i);
                    if (this.toBeSnapped.contains(viewHolder)) {
                        View view = viewHolder.itemView;
                        if ((view instanceof ChatMessageCell) && ((ChatMessageCell) view).getCurrentMessagesGroup() != null && (messageObject = ((ChatMessageCell) viewHolder.itemView).getMessageObject()) != null && messageObject.getGroupId() != 0) {
                            if (longSparseArray == null) {
                                longSparseArray = new LongSparseArray();
                            }
                            ArrayList arrayList = (ArrayList) longSparseArray.get(messageObject.getGroupId());
                            if (arrayList == null) {
                                long groupId = messageObject.getGroupId();
                                ArrayList arrayList2 = new ArrayList();
                                longSparseArray.put(groupId, arrayList2);
                                arrayList = arrayList2;
                            }
                            this.toBeSnapped.remove(viewHolder);
                            this.mPendingRemovals.remove(i);
                            i--;
                            arrayList.add(viewHolder);
                        }
                    }
                    i++;
                }
                if (longSparseArray != null) {
                    z = false;
                    for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                        ArrayList arrayList3 = (ArrayList) longSparseArray.valueAt(i2);
                        if (arrayList3.size() > 0) {
                            View view2 = ((RecyclerView.ViewHolder) arrayList3.get(0)).itemView;
                            if (!(view2 instanceof ChatMessageCell) || (currentMessagesGroup = ((ChatMessageCell) view2).getCurrentMessagesGroup()) == null || currentMessagesGroup.messages.size() <= arrayList3.size()) {
                                animateRemoveGroupImpl(arrayList3);
                                z = true;
                            } else {
                                this.mPendingRemovals.addAll(arrayList3);
                            }
                        }
                    }
                } else {
                    z = false;
                }
            }
            Iterator it = this.mPendingRemovals.iterator();
            while (it.hasNext()) {
                RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) it.next();
                boolean z7 = this.toBeSnapped.remove(viewHolder2) && z6;
                animateRemoveImpl(viewHolder2, z7);
                if (z7) {
                    z = true;
                }
            }
            this.mPendingRemovals.clear();
            if (z3) {
                final ArrayList arrayList4 = new ArrayList();
                arrayList4.addAll(this.mPendingMoves);
                this.mMovesList.add(arrayList4);
                this.mPendingMoves.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList4.iterator();
                        while (it2.hasNext()) {
                            DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) it2.next();
                            ChatListItemAnimator.this.animateMoveImpl(moveInfo.holder, moveInfo, z);
                        }
                        arrayList4.clear();
                        ChatListItemAnimator.this.mMovesList.remove(arrayList4);
                    }
                };
                if (this.delayAnimations && z2) {
                    ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator.MoveInfo) arrayList4.get(0)).holder.itemView, runnable, z ? 0L : getMoveAnimationDelay());
                } else {
                    runnable.run();
                }
            }
            if (z4) {
                final ArrayList arrayList5 = new ArrayList();
                arrayList5.addAll(this.mPendingChanges);
                this.mChangesList.add(arrayList5);
                this.mPendingChanges.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList5.iterator();
                        while (it2.hasNext()) {
                            ChatListItemAnimator.this.animateChangeImpl((DefaultItemAnimator.ChangeInfo) it2.next());
                        }
                        arrayList5.clear();
                        ChatListItemAnimator.this.mChangesList.remove(arrayList5);
                    }
                };
                if (this.delayAnimations && z2) {
                    ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator.ChangeInfo) arrayList5.get(0)).oldHolder.itemView, runnable2, 0L);
                } else {
                    runnable2.run();
                }
            }
            if (z5) {
                ArrayList arrayList6 = new ArrayList();
                arrayList6.addAll(this.mPendingAdditions);
                this.mPendingAdditions.clear();
                this.alphaEnterDelay = 0L;
                Collections.sort(arrayList6, new Comparator() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda7
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ChatListItemAnimator.lambda$runAlphaEnterTransition$1((RecyclerView.ViewHolder) obj, (RecyclerView.ViewHolder) obj2);
                    }
                });
                Iterator it2 = arrayList6.iterator();
                while (it2.hasNext()) {
                    animateAddImpl((RecyclerView.ViewHolder) it2.next());
                }
                arrayList6.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void runMessageEnterTransition() {
        boolean z = !this.mPendingRemovals.isEmpty();
        boolean z2 = !this.mPendingMoves.isEmpty();
        boolean z3 = !this.mPendingChanges.isEmpty();
        boolean z4 = !this.mPendingAdditions.isEmpty();
        if (z || z2 || z4 || z3) {
            int height = 0;
            for (int i = 0; i < this.mPendingAdditions.size(); i++) {
                View view = ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).itemView;
                if (view instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                    if (chatMessageCell.getCurrentPosition() == null || (chatMessageCell.getCurrentPosition().flags & 1) != 0) {
                        height += ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).itemView.getHeight();
                    }
                }
            }
            Iterator it = this.mPendingRemovals.iterator();
            while (it.hasNext()) {
                animateRemoveImpl((RecyclerView.ViewHolder) it.next());
            }
            this.mPendingRemovals.clear();
            if (z2) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.mPendingMoves);
                this.mPendingMoves.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) it2.next();
                    animateMoveImpl(moveInfo.holder, moveInfo);
                }
                arrayList.clear();
            }
            if (z4) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(this.mPendingAdditions);
                this.mPendingAdditions.clear();
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    animateAddImpl((RecyclerView.ViewHolder) it3.next(), height);
                }
                arrayList2.clear();
            }
        }
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        viewHolder.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (this.shouldAnimateEnterFromBottom) {
            View view = viewHolder.itemView;
            if (view instanceof ChatMessageCell) {
                ((ChatMessageCell) view).getTransitionParams().messageEntering = true;
            }
        } else {
            viewHolder.itemView.setScaleX(0.9f);
            viewHolder.itemView.setScaleY(0.9f);
        }
        this.mPendingAdditions.add(viewHolder);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x024a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void animateAddImpl(final RecyclerView.ViewHolder viewHolder) {
        ViewPropertyAnimator viewPropertyAnimatorTranslationX;
        boolean z;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("animate add impl");
        }
        final View view = viewHolder.itemView;
        this.mAddAnimations.add(viewHolder);
        if (viewHolder == this.greetingsSticker) {
            view.setAlpha(1.0f);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        if (view instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) view;
            if (chatMessageCell.getAnimationOffsetX() != BitmapDescriptorFactory.HUE_RED) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(chatMessageCell, (Property<ChatMessageCell, Float>) chatMessageCell.ANIMATION_OFFSET_X, chatMessageCell.getAnimationOffsetX(), BitmapDescriptorFactory.HUE_RED));
            }
            chatMessageCell.setPivotX(chatMessageCell.getBackgroundDrawableLeft() + ((chatMessageCell.getBackgroundDrawableRight() - chatMessageCell.getBackgroundDrawableLeft()) / 2.0f));
            viewPropertyAnimatorTranslationX = view.animate();
        } else {
            viewPropertyAnimatorTranslationX = view.animate().translationX(BitmapDescriptorFactory.HUE_RED);
        }
        viewPropertyAnimatorTranslationX.translationY(BitmapDescriptorFactory.HUE_RED).setDuration(getAddDuration()).start();
        long jMax = (long) ((1.0f - Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, view.getBottom() / this.recyclerListView.getMeasuredHeight()))) * 100.0f);
        if (view instanceof ChatMessageCell) {
            if (viewHolder != this.greetingsSticker) {
                MessageObject.GroupedMessages currentMessagesGroup = ((ChatMessageCell) view).getCurrentMessagesGroup();
                if (currentMessagesGroup == null) {
                    jMax = jMax;
                    if (currentMessagesGroup != null && currentMessagesGroup.transitionParams.backgroundChangeBounds) {
                        animatorSet.setStartDelay(140L);
                    }
                } else {
                    Long l = (Long) this.groupIdToEnterDelay.get(Long.valueOf(currentMessagesGroup.groupId));
                    if (l == null) {
                        this.groupIdToEnterDelay.put(Long.valueOf(currentMessagesGroup.groupId), Long.valueOf(jMax));
                        jMax = jMax;
                        if (currentMessagesGroup != null) {
                            animatorSet.setStartDelay(140L);
                        }
                    } else {
                        jMax = l.longValue();
                        if (currentMessagesGroup != null) {
                        }
                    }
                }
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 1.0f));
                if (z) {
                }
                if (viewHolder == this.greetingsSticker) {
                }
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        view.setAlpha(1.0f);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animator.removeAllListeners();
                        view.setAlpha(1.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                            ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                            ChatListItemAnimator.this.dispatchFinishedWhenDone();
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
                    }
                });
                this.animators.put(viewHolder, animatorSet);
                animatorSet.start();
            }
            ChatGreetingsView chatGreetingsView = this.chatGreetingsView;
            if (chatGreetingsView != null) {
                chatGreetingsView.stickerToSendView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            this.recyclerListView.setClipChildren(false);
            final ChatMessageCell chatMessageCell2 = (ChatMessageCell) view;
            View view2 = (View) this.chatGreetingsView.getParent();
            float x = this.chatGreetingsView.stickerToSendView.getX() + this.chatGreetingsView.getX() + view2.getX();
            float y = this.chatGreetingsView.stickerToSendView.getY() + this.chatGreetingsView.getY() + view2.getY();
            float imageX = chatMessageCell2.getPhotoImage().getImageX() + this.recyclerListView.getX() + chatMessageCell2.getX();
            float imageY = chatMessageCell2.getPhotoImage().getImageY() + this.recyclerListView.getY() + chatMessageCell2.getY();
            final float width = this.chatGreetingsView.stickerToSendView.getWidth();
            final float height = this.chatGreetingsView.stickerToSendView.getHeight();
            final float imageWidth = chatMessageCell2.getPhotoImage().getImageWidth();
            final float imageHeight = chatMessageCell2.getPhotoImage().getImageHeight();
            final float f = x - imageX;
            final float f2 = y - imageY;
            final float imageX2 = chatMessageCell2.getPhotoImage().getImageX();
            final float imageY2 = chatMessageCell2.getPhotoImage().getImageY();
            chatMessageCell2.getTransitionParams().imageChangeBoundsTransition = true;
            chatMessageCell2.getTransitionParams().animateDrawingTimeAlpha = true;
            chatMessageCell2.getPhotoImage().setImageCoords(imageX2 + f, imageX2 + f2, width, height);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatListItemAnimator.lambda$animateAddImpl$8(chatMessageCell2, imageX2, f, imageY2, f2, width, imageWidth, height, imageHeight, valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    chatMessageCell2.getTransitionParams().resetAnimation();
                    chatMessageCell2.getPhotoImage().setImageCoords(imageX2, imageY2, imageWidth, imageHeight);
                    if (ChatListItemAnimator.this.chatGreetingsView != null) {
                        ChatListItemAnimator.this.chatGreetingsView.stickerToSendView.setAlpha(1.0f);
                    }
                    chatMessageCell2.invalidate();
                }
            });
            animatorSet.play(valueAnimatorOfFloat);
            jMax = jMax;
            z = false;
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 1.0f));
            if (z) {
                view.setScaleX(0.9f);
                view.setScaleY(0.9f);
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, view.getScaleY(), 1.0f));
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, view.getScaleX(), 1.0f));
            } else {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
            }
            if (viewHolder == this.greetingsSticker) {
                animatorSet.setDuration(350L);
                animatorSet.setInterpolator(new OvershootInterpolator());
            } else {
                animatorSet.setStartDelay(jMax);
                animatorSet.setDuration(250L);
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    view.setAlpha(1.0f);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeAllListeners();
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                        ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
                }
            });
            this.animators.put(viewHolder, animatorSet);
            animatorSet.start();
        }
        z = true;
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 1.0f));
        if (z) {
        }
        if (viewHolder == this.greetingsSticker) {
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                    ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
            }
        });
        this.animators.put(viewHolder, animatorSet);
        animatorSet.start();
    }

    public void animateAddImpl(final RecyclerView.ViewHolder viewHolder, int i) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mAddAnimations.add(viewHolder);
        view.setTranslationY(i);
        viewHolder.itemView.setScaleX(1.0f);
        viewHolder.itemView.setScaleY(1.0f);
        View view2 = viewHolder.itemView;
        ChatMessageCell chatMessageCell = view2 instanceof ChatMessageCell ? (ChatMessageCell) view2 : null;
        if (chatMessageCell == null || !chatMessageCell.getTransitionParams().ignoreAlpha) {
            viewHolder.itemView.setAlpha(1.0f);
        }
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null && chatMessageCell != null && chatActivity.animatingMessageObjects.contains(chatMessageCell.getMessageObject())) {
            this.activity.animatingMessageObjects.remove(chatMessageCell.getMessageObject());
            if (this.activity.getChatActivityEnterView().canShowMessageTransition()) {
                if (chatMessageCell.getMessageObject().isVoice()) {
                    if (Math.abs(view.getTranslationY()) < view.getMeasuredHeight() * 3.0f) {
                        new VoiceMessageEnterTransition(chatMessageCell, this.activity.getChatActivityEnterView(), this.recyclerListView, this.activity.messageEnterTransitionContainer, this.resourcesProvider).start();
                    }
                } else if (SharedConfig.getDevicePerformanceClass() != 0 && Math.abs(view.getTranslationY()) < this.recyclerListView.getMeasuredHeight()) {
                    ChatActivity chatActivity2 = this.activity;
                    new TextMessageEnterTransition(chatMessageCell, chatActivity2, this.recyclerListView, chatActivity2.messageEnterTransitionContainer, this.resourcesProvider).start();
                }
                this.activity.getChatActivityEnterView().startMessageTransition();
            }
        }
        viewPropertyAnimatorAnimate.translationY(BitmapDescriptorFactory.HUE_RED).setDuration(getMoveDuration()).setInterpolator(this.translationInterpolator).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                View view3 = view;
                if (view3 instanceof ChatMessageCell) {
                    ((ChatMessageCell) view3).getTransitionParams().messageEntering = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                View view3 = view;
                if (view3 instanceof ChatMessageCell) {
                    ((ChatMessageCell) view3).getTransitionParams().messageEntering = false;
                }
                viewPropertyAnimatorAnimate.setListener(null);
                if (ChatListItemAnimator.this.mAddAnimations.remove(viewHolder)) {
                    ChatListItemAnimator.this.dispatchAddFinished(viewHolder);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchAddStarting(viewHolder);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean animateAppearance(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int height;
        boolean zAnimateAppearance = super.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
        if (zAnimateAppearance && this.shouldAnimateEnterFromBottom) {
            boolean z = false;
            for (int i = 0; i < this.mPendingAdditions.size(); i++) {
                if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == 0) {
                    z = true;
                }
            }
            if (z) {
                height = 0;
                for (int i2 = 0; i2 < this.mPendingAdditions.size(); i2++) {
                    height += ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i2)).itemView.getHeight();
                }
            } else {
                height = 0;
            }
            for (int i3 = 0; i3 < this.mPendingAdditions.size(); i3++) {
                ((RecyclerView.ViewHolder) this.mPendingAdditions.get(i3)).itemView.setTranslationY(height);
            }
        }
        return zAnimateAppearance;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, itemHolderInfo, i, i2, i3, i4);
        }
        View view = viewHolder.itemView;
        float animationOffsetX = view instanceof ChatMessageCell ? ((ChatMessageCell) view).getAnimationOffsetX() : view.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        resetAnimation(viewHolder);
        int i5 = (int) ((i3 - i) - animationOffsetX);
        int i6 = (int) ((i4 - i2) - translationY);
        View view2 = viewHolder.itemView;
        if (view2 instanceof ChatMessageCell) {
            ((ChatMessageCell) view2).setAnimationOffsetX(animationOffsetX);
        } else {
            view2.setTranslationX(animationOffsetX);
        }
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            resetAnimation(viewHolder2);
            View view3 = viewHolder2.itemView;
            if (view3 instanceof ChatMessageCell) {
                ((ChatMessageCell) view3).setAnimationOffsetX(-i5);
            } else {
                view3.setTranslationX(-i5);
            }
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        this.mPendingChanges.add(new DefaultItemAnimator.ChangeInfo(viewHolder, viewHolder2, i, i2, i3, i4));
        checkIsRunning();
        return true;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    public void animateChangeImpl(final DefaultItemAnimator.ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        final View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        final View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.mChangeAnimations.add(changeInfo.oldHolder);
            duration.translationX(changeInfo.toX - changeInfo.fromX);
            duration.translationY(changeInfo.toY - changeInfo.fromY);
            duration.alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleX(1.0f);
                    View view3 = view;
                    if (view3 instanceof ChatMessageCell) {
                        ((ChatMessageCell) view3).setAnimationOffsetX(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        view3.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    }
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (ChatListItemAnimator.this.mChangeAnimations.remove(changeInfo.oldHolder)) {
                        ChatListItemAnimator.this.dispatchChangeFinished(changeInfo.oldHolder, true);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchChangeStarting(changeInfo.oldHolder, true);
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.mChangeAnimations.add(changeInfo.newHolder);
            viewPropertyAnimatorAnimate.translationX(BitmapDescriptorFactory.HUE_RED).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(getChangeDuration()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setScaleX(1.0f);
                    view2.setScaleX(1.0f);
                    View view3 = view2;
                    if (view3 instanceof ChatMessageCell) {
                        ((ChatMessageCell) view3).setAnimationOffsetX(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        view3.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    }
                    view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (ChatListItemAnimator.this.mChangeAnimations.remove(changeInfo.newHolder)) {
                        ChatListItemAnimator.this.dispatchChangeFinished(changeInfo.newHolder, false);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchChangeStarting(changeInfo.newHolder, false);
                }
            }).start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d1  */
    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
        int topMediaOffset;
        int translationX;
        ChatMessageCell chatMessageCell;
        ChatActionCell chatActionCell;
        int translationX2;
        float f;
        float imageWidth;
        float f2;
        float f3;
        int i5;
        int i6;
        int i7;
        boolean z;
        float f4;
        MessageObject.GroupedMessages groupedMessages;
        int i8;
        int i9;
        View view = viewHolder.itemView;
        if (view instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell2 = (ChatMessageCell) view;
            translationX2 = i + ((int) chatMessageCell2.getAnimationOffsetX());
            topMediaOffset = chatMessageCell2.getTransitionParams().lastTopOffset != chatMessageCell2.getTopMediaOffset() ? i2 + (chatMessageCell2.getTransitionParams().lastTopOffset - chatMessageCell2.getTopMediaOffset()) : i2;
            chatMessageCell = chatMessageCell2;
            chatActionCell = null;
        } else {
            if (!(view instanceof ChatActionCell)) {
                topMediaOffset = i2;
                translationX = i + ((int) view.getTranslationX());
                chatMessageCell = null;
                chatActionCell = null;
                int translationY = topMediaOffset + ((int) viewHolder.itemView.getTranslationY());
                int[] iArr = new int[4];
                if (chatMessageCell == null) {
                    float imageX = chatMessageCell.getPhotoImage().getImageX();
                    float imageY = chatMessageCell.getPhotoImage().getImageY();
                    imageWidth = chatMessageCell.getPhotoImage().getImageWidth();
                    float imageHeight = chatMessageCell.getPhotoImage().getImageHeight();
                    for (int i10 = 0; i10 < 4; i10++) {
                        iArr[i10] = chatMessageCell.getPhotoImage().getRoundRadius()[i10];
                    }
                    f3 = imageX;
                    f2 = imageY;
                    f = imageHeight;
                } else {
                    f = BitmapDescriptorFactory.HUE_RED;
                    imageWidth = BitmapDescriptorFactory.HUE_RED;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    f3 = BitmapDescriptorFactory.HUE_RED;
                }
                resetAnimation(viewHolder);
                int i11 = i3 - translationX;
                i5 = i4 - translationY;
                if (i5 != 0) {
                    view.setTranslationY(-i5);
                }
                ChatActionCell chatActionCell2 = chatActionCell;
                int i12 = i11;
                float f5 = f;
                float f6 = imageWidth;
                float f7 = f2;
                float f8 = f3;
                MoveInfoExtended moveInfoExtended = new MoveInfoExtended(viewHolder, translationX, translationY, i3, i4);
                if (chatMessageCell == null) {
                    ChatMessageCell.TransitionParams transitionParams = chatMessageCell.getTransitionParams();
                    if (!transitionParams.supportChangeAnimation()) {
                        if (i12 == 0 && i5 == 0) {
                            dispatchMoveFinished(viewHolder);
                            return false;
                        }
                        if (i12 != 0) {
                            view.setTranslationX(-i12);
                        }
                        this.mPendingMoves.add(moveInfoExtended);
                        checkIsRunning();
                        return true;
                    }
                    MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                    if (i12 != 0) {
                        chatMessageCell.setAnimationOffsetX(-i12);
                    }
                    if (itemHolderInfo instanceof ItemHolderInfoExtended) {
                        ImageReceiver photoImage = chatMessageCell.getPhotoImage();
                        ItemHolderInfoExtended itemHolderInfoExtended = (ItemHolderInfoExtended) itemHolderInfo;
                        boolean z2 = (!transitionParams.wasDraw || itemHolderInfoExtended.imageHeight == BitmapDescriptorFactory.HUE_RED || itemHolderInfoExtended.imageWidth == BitmapDescriptorFactory.HUE_RED) ? false : true;
                        moveInfoExtended.animateImage = z2;
                        if (z2) {
                            this.recyclerListView.setClipChildren(false);
                            this.recyclerListView.invalidate();
                            transitionParams.imageChangeBoundsTransition = true;
                            if (chatMessageCell.getMessageObject().isRoundVideo()) {
                                transitionParams.animateToImageX = f8;
                                transitionParams.animateToImageY = f7;
                                transitionParams.animateToImageW = f6;
                                transitionParams.animateToImageH = f5;
                                transitionParams.animateToRadius = iArr;
                            } else {
                                transitionParams.animateToImageX = photoImage.getImageX();
                                transitionParams.animateToImageY = photoImage.getImageY();
                                transitionParams.animateToImageW = photoImage.getImageWidth();
                                transitionParams.animateToImageH = photoImage.getImageHeight();
                                transitionParams.animateToRadius = photoImage.getRoundRadius();
                            }
                            transitionParams.animateRadius = false;
                            int i13 = 0;
                            while (true) {
                                if (i13 >= 4) {
                                    break;
                                }
                                if (transitionParams.imageRoundRadius[i13] != transitionParams.animateToRadius[i13]) {
                                    transitionParams.animateRadius = true;
                                    break;
                                }
                                i13++;
                            }
                            float f9 = transitionParams.animateToImageX;
                            float f10 = itemHolderInfoExtended.imageX;
                            if (f9 == f10 && transitionParams.animateToImageY == itemHolderInfoExtended.imageY && transitionParams.animateToImageH == itemHolderInfoExtended.imageHeight && transitionParams.animateToImageW == itemHolderInfoExtended.imageWidth && !transitionParams.animateRadius) {
                                transitionParams.imageChangeBoundsTransition = false;
                                moveInfoExtended.animateImage = false;
                            } else {
                                moveInfoExtended.imageX = f10;
                                moveInfoExtended.imageY = itemHolderInfoExtended.imageY;
                                moveInfoExtended.imageWidth = itemHolderInfoExtended.imageWidth;
                                moveInfoExtended.imageHeight = itemHolderInfoExtended.imageHeight;
                                if (currentMessagesGroup != null) {
                                    boolean z3 = currentMessagesGroup.hasCaption;
                                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                    boolean z4 = transitionParams2.drawCaptionLayout;
                                    if (z3 != z4) {
                                        transitionParams2.captionEnterProgress = z4 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                                    }
                                }
                                if (transitionParams.animateRadius) {
                                    if (transitionParams.animateToRadius == photoImage.getRoundRadius()) {
                                        transitionParams.animateToRadius = new int[4];
                                        for (int i14 = 0; i14 < 4; i14++) {
                                            transitionParams.animateToRadius[i14] = photoImage.getRoundRadius()[i14];
                                        }
                                    }
                                    photoImage.setRoundRadius(transitionParams.imageRoundRadius);
                                }
                                chatMessageCell.setImageCoords(moveInfoExtended.imageX, moveInfoExtended.imageY, moveInfoExtended.imageWidth, moveInfoExtended.imageHeight);
                            }
                        }
                        if (currentMessagesGroup == null && transitionParams.wasDraw) {
                            boolean zIsOutOwner = chatMessageCell.getMessageObject().isOutOwner();
                            boolean z5 = (zIsOutOwner && transitionParams.lastDrawingBackgroundRect.left != chatMessageCell.getBackgroundDrawableLeft()) || !(zIsOutOwner || transitionParams.lastDrawingBackgroundRect.right == chatMessageCell.getBackgroundDrawableRight());
                            if (z5 || transitionParams.lastDrawingBackgroundRect.top != chatMessageCell.getBackgroundDrawableTop() || transitionParams.lastDrawingBackgroundRect.bottom != chatMessageCell.getBackgroundDrawableBottom()) {
                                moveInfoExtended.deltaBottom = chatMessageCell.getBackgroundDrawableBottom() - transitionParams.lastDrawingBackgroundRect.bottom;
                                moveInfoExtended.deltaTop = chatMessageCell.getBackgroundDrawableTop() - transitionParams.lastDrawingBackgroundRect.top;
                                if (chatMessageCell.isSideMenuEnabled != transitionParams.lastDrawingSideMenuEnabled) {
                                    moveInfoExtended.deltaLeft = chatMessageCell.getBackgroundDrawableLeft() - transitionParams.lastDrawingBackgroundRect.left;
                                } else {
                                    if (zIsOutOwner) {
                                        moveInfoExtended.deltaLeft = chatMessageCell.getBackgroundDrawableLeft() - transitionParams.lastDrawingBackgroundRect.left;
                                    }
                                    moveInfoExtended.animateBackgroundOnly = true;
                                    transitionParams.animateBackgroundBoundsInner = true;
                                    transitionParams.animateBackgroundWidth = z5;
                                    transitionParams.deltaLeft = -moveInfoExtended.deltaLeft;
                                    transitionParams.deltaRight = -moveInfoExtended.deltaRight;
                                    transitionParams.deltaTop = -moveInfoExtended.deltaTop;
                                    transitionParams.deltaBottom = -moveInfoExtended.deltaBottom;
                                    this.recyclerListView.setClipChildren(false);
                                    this.recyclerListView.invalidate();
                                }
                                moveInfoExtended.deltaRight = chatMessageCell.getBackgroundDrawableRight() - transitionParams.lastDrawingBackgroundRect.right;
                                moveInfoExtended.animateBackgroundOnly = true;
                                transitionParams.animateBackgroundBoundsInner = true;
                                transitionParams.animateBackgroundWidth = z5;
                                transitionParams.deltaLeft = -moveInfoExtended.deltaLeft;
                                transitionParams.deltaRight = -moveInfoExtended.deltaRight;
                                transitionParams.deltaTop = -moveInfoExtended.deltaTop;
                                transitionParams.deltaBottom = -moveInfoExtended.deltaBottom;
                                this.recyclerListView.setClipChildren(false);
                                this.recyclerListView.invalidate();
                            }
                        }
                    }
                    if (currentMessagesGroup == null || !this.willChangedGroups.contains(currentMessagesGroup)) {
                        i6 = i12;
                        i7 = i5;
                    } else {
                        this.willChangedGroups.remove(currentMessagesGroup);
                        RecyclerListView recyclerListView = (RecyclerListView) viewHolder.itemView.getParent();
                        MessageObject.GroupedMessages.TransitionParams transitionParams3 = currentMessagesGroup.transitionParams;
                        int i15 = 0;
                        int i16 = 0;
                        int i17 = 0;
                        int i18 = 0;
                        int i19 = 0;
                        boolean z6 = true;
                        while (i17 < recyclerListView.getChildCount()) {
                            View childAt = recyclerListView.getChildAt(i17);
                            if (childAt instanceof ChatMessageCell) {
                                ChatMessageCell chatMessageCell3 = (ChatMessageCell) childAt;
                                if (chatMessageCell3.getCurrentMessagesGroup() != currentMessagesGroup || chatMessageCell3.getMessageObject().deleted) {
                                    groupedMessages = currentMessagesGroup;
                                    i8 = i12;
                                    i9 = i5;
                                } else {
                                    int left = chatMessageCell3.getLeft() + chatMessageCell3.getBackgroundDrawableLeft();
                                    groupedMessages = currentMessagesGroup;
                                    int left2 = chatMessageCell3.getLeft() + chatMessageCell3.getBackgroundDrawableRight();
                                    i9 = i5;
                                    int top = chatMessageCell3.getTop() + chatMessageCell3.getPaddingTop() + chatMessageCell3.getBackgroundDrawableTop();
                                    i8 = i12;
                                    int top2 = chatMessageCell3.getTop() + chatMessageCell3.getPaddingTop() + chatMessageCell3.getBackgroundDrawableBottom();
                                    if (i15 == 0 || left < i15) {
                                        i15 = left;
                                    }
                                    if (i16 == 0 || left2 > i16) {
                                        i16 = left2;
                                    }
                                    if (chatMessageCell3.getTransitionParams().wasDraw || transitionParams3.isNewGroup) {
                                        if (i18 == 0 || top < i18) {
                                            i18 = top;
                                        }
                                        if (i19 == 0 || top2 > i19) {
                                            i19 = top2;
                                        }
                                        z6 = false;
                                    }
                                }
                            }
                            i17++;
                            currentMessagesGroup = groupedMessages;
                            i5 = i9;
                            i12 = i8;
                        }
                        i6 = i12;
                        i7 = i5;
                        transitionParams3.isNewGroup = false;
                        if (i18 == 0 && i19 == 0 && i15 == 0 && i16 == 0) {
                            moveInfoExtended.animateChangeGroupBackground = false;
                            transitionParams3.backgroundChangeBounds = false;
                        } else {
                            int i20 = (-i18) + transitionParams3.top;
                            moveInfoExtended.groupOffsetTop = i20;
                            int i21 = (-i19) + transitionParams3.bottom;
                            moveInfoExtended.groupOffsetBottom = i21;
                            int i22 = (-i15) + transitionParams3.left;
                            moveInfoExtended.groupOffsetLeft = i22;
                            int i23 = (-i16) + transitionParams3.right;
                            moveInfoExtended.groupOffsetRight = i23;
                            moveInfoExtended.animateChangeGroupBackground = true;
                            transitionParams3.backgroundChangeBounds = true;
                            transitionParams3.offsetTop = i20;
                            transitionParams3.offsetBottom = i21;
                            transitionParams3.offsetLeft = i22;
                            transitionParams3.offsetRight = i23;
                            transitionParams3.captionEnterProgress = transitionParams3.drawCaptionLayout ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                            recyclerListView.setClipChildren(false);
                            recyclerListView.invalidate();
                        }
                        transitionParams3.drawBackgroundForDeletedItems = z6;
                    }
                    MessageObject.GroupedMessages groupedMessages2 = (MessageObject.GroupedMessages) this.willRemovedGroup.get(Integer.valueOf(chatMessageCell.getMessageObject().getId()));
                    if (groupedMessages2 != null) {
                        MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages2.transitionParams;
                        this.willRemovedGroup.remove(Integer.valueOf(chatMessageCell.getMessageObject().getId()));
                        if (transitionParams.wasDraw) {
                            int left3 = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableLeft();
                            int left4 = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableRight();
                            int top3 = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop();
                            int top4 = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom();
                            moveInfoExtended.animateRemoveGroup = true;
                            transitionParams.animateBackgroundBoundsInner = true;
                            moveInfoExtended.deltaLeft = left3 - transitionParams4.left;
                            moveInfoExtended.deltaRight = left4 - transitionParams4.right;
                            moveInfoExtended.deltaTop = top3 - transitionParams4.top;
                            moveInfoExtended.deltaBottom = top4 - transitionParams4.bottom;
                            moveInfoExtended.animateBackgroundOnly = false;
                            transitionParams.deltaLeft = (int) ((-r2) - chatMessageCell.getAnimationOffsetX());
                            transitionParams.deltaRight = (int) ((-moveInfoExtended.deltaRight) - chatMessageCell.getAnimationOffsetX());
                            transitionParams.deltaTop = (int) ((-moveInfoExtended.deltaTop) - chatMessageCell.getTranslationY());
                            transitionParams.deltaBottom = (int) ((-moveInfoExtended.deltaBottom) - chatMessageCell.getTranslationY());
                            z = true;
                            transitionParams.transformGroupToSingleMessage = true;
                            this.recyclerListView.setClipChildren(false);
                            this.recyclerListView.invalidate();
                        } else {
                            z = true;
                            transitionParams4.drawBackgroundForDeletedItems = true;
                        }
                    } else {
                        z = true;
                    }
                    if (transitionParams.drawPinnedBottomBackground != chatMessageCell.isDrawPinnedBottom()) {
                        moveInfoExtended.animatePinnedBottom = z;
                        f4 = BitmapDescriptorFactory.HUE_RED;
                        transitionParams.changePinnedBottomProgress = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        f4 = BitmapDescriptorFactory.HUE_RED;
                    }
                    boolean zAnimateChange = transitionParams.animateChange();
                    moveInfoExtended.animateChangeInternal = zAnimateChange;
                    if (zAnimateChange) {
                        transitionParams.animateChange = z;
                        transitionParams.animateChangeProgress = f4;
                    }
                    if (i6 == 0 && i7 == 0 && !moveInfoExtended.animateImage && !moveInfoExtended.animateRemoveGroup && !moveInfoExtended.animateChangeGroupBackground && !moveInfoExtended.animatePinnedBottom && !moveInfoExtended.animateBackgroundOnly && !zAnimateChange) {
                        dispatchMoveFinished(viewHolder);
                        return false;
                    }
                } else if (chatActionCell2 != null) {
                    ChatActionCell.TransitionParams transitionParams5 = chatActionCell2.getTransitionParams();
                    if (!transitionParams5.supportChangeAnimation()) {
                        if (i12 == 0 && i5 == 0) {
                            dispatchMoveFinished(viewHolder);
                            return false;
                        }
                        if (i12 != 0) {
                            view.setTranslationX(-i12);
                        }
                        this.mPendingMoves.add(moveInfoExtended);
                        checkIsRunning();
                        return true;
                    }
                    if (i12 != 0) {
                        view.setTranslationX(-i12);
                    }
                    boolean zAnimateChange2 = transitionParams5.animateChange();
                    moveInfoExtended.animateChangeInternal = zAnimateChange2;
                    if (zAnimateChange2) {
                        transitionParams5.animateChange = true;
                        transitionParams5.animateChangeProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (i12 == 0 && i5 == 0 && !zAnimateChange2) {
                        dispatchMoveFinished(viewHolder);
                        return false;
                    }
                } else {
                    View view2 = viewHolder.itemView;
                    if (view2 instanceof BotHelpCell) {
                        ((BotHelpCell) view2).setAnimating(true);
                    } else if (view2 instanceof UserInfoCell) {
                        ((UserInfoCell) view2).setAnimating(true);
                    } else {
                        if (i12 == 0 && i5 == 0) {
                            dispatchMoveFinished(viewHolder);
                            return false;
                        }
                        if (i12 != 0) {
                            view.setTranslationX(-i12);
                        }
                    }
                }
                this.mPendingMoves.add(moveInfoExtended);
                checkIsRunning();
                return true;
            }
            translationX2 = i + ((int) view.getTranslationX());
            topMediaOffset = i2;
            chatActionCell = (ChatActionCell) view;
            chatMessageCell = null;
        }
        translationX = translationX2;
        int translationY2 = topMediaOffset + ((int) viewHolder.itemView.getTranslationY());
        int[] iArr2 = new int[4];
        if (chatMessageCell == null) {
        }
        resetAnimation(viewHolder);
        int i112 = i3 - translationX;
        i5 = i4 - translationY2;
        if (i5 != 0) {
        }
        ChatActionCell chatActionCell22 = chatActionCell;
        int i122 = i112;
        float f52 = f;
        float f62 = imageWidth;
        float f72 = f2;
        float f82 = f3;
        MoveInfoExtended moveInfoExtended2 = new MoveInfoExtended(viewHolder, translationX, translationY2, i3, i4);
        if (chatMessageCell == null) {
        }
        this.mPendingMoves.add(moveInfoExtended2);
        checkIsRunning();
        return true;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected void animateMoveImpl(RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo) {
        animateMoveImpl(viewHolder, moveInfo, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void animateMoveImpl(final RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo, boolean z) {
        AnimatorSet animatorSet;
        ChatMessageCell.TransitionParams transitionParams;
        final ChatMessageCell chatMessageCell;
        final MoveInfoExtended moveInfoExtended;
        final ChatMessageCell.TransitionParams transitionParams2;
        float animationOffsetX;
        final ChatMessageCell chatMessageCell2;
        boolean z2;
        final int[] iArr;
        TimeInterpolator timeInterpolator;
        int i = moveInfo.fromX;
        int i2 = moveInfo.fromY;
        int i3 = moveInfo.toY;
        final View view = viewHolder.itemView;
        final int i4 = i3 - i2;
        AnimatorSet animatorSet2 = new AnimatorSet();
        if (i4 != 0) {
            animatorSet2.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
        }
        this.mMoveAnimations.add(viewHolder);
        final MoveInfoExtended moveInfoExtended2 = (MoveInfoExtended) moveInfo;
        ChatActivity chatActivity = this.activity;
        if (chatActivity != null) {
            View view2 = viewHolder.itemView;
            if (view2 instanceof BotHelpCell) {
                final BotHelpCell botHelpCell = (BotHelpCell) view2;
                final float translationY = botHelpCell.getTranslationY();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        float measuredHeight = ((((ChatListItemAnimator.this.recyclerListView.getMeasuredHeight() - ChatListItemAnimator.this.activity.getChatListViewPadding()) - ChatListItemAnimator.this.activity.blurredViewBottomOffset) / 2.0f) - (botHelpCell.getMeasuredHeight() / 2.0f)) + ChatListItemAnimator.this.activity.getChatListViewPadding();
                        botHelpCell.setTranslationY((translationY * (1.0f - fFloatValue)) + ((((float) botHelpCell.getTop()) > measuredHeight ? measuredHeight - botHelpCell.getTop() : BitmapDescriptorFactory.HUE_RED) * fFloatValue));
                    }
                });
                animatorSet2.playTogether(valueAnimatorOfFloat);
            } else {
                if (chatActivity != null) {
                    View view3 = viewHolder.itemView;
                    if (view3 instanceof UserInfoCell) {
                        final UserInfoCell userInfoCell = (UserInfoCell) view3;
                        final float translationY2 = userInfoCell.getTranslationY();
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.5
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                float measuredHeight = ((((ChatListItemAnimator.this.recyclerListView.getMeasuredHeight() - ChatListItemAnimator.this.activity.getChatListViewPadding()) - ChatListItemAnimator.this.activity.blurredViewBottomOffset) / 2.0f) - (userInfoCell.getMeasuredHeight() / 2.0f)) + ChatListItemAnimator.this.activity.getChatListViewPadding();
                                userInfoCell.setTranslationY((translationY2 * (1.0f - fFloatValue)) + ((((float) userInfoCell.getTop()) > measuredHeight ? measuredHeight - userInfoCell.getTop() : BitmapDescriptorFactory.HUE_RED) * fFloatValue));
                            }
                        });
                        animatorSet2.playTogether(valueAnimatorOfFloat2);
                    }
                }
                View view4 = viewHolder.itemView;
                if (view4 instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell3 = (ChatMessageCell) view4;
                    final ChatMessageCell.TransitionParams transitionParams3 = chatMessageCell3.getTransitionParams();
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(chatMessageCell3, (Property<ChatMessageCell, Float>) chatMessageCell3.ANIMATION_OFFSET_X, BitmapDescriptorFactory.HUE_RED));
                    if (moveInfoExtended2.animateImage) {
                        chatMessageCell3.setImageCoords(moveInfoExtended2.imageX, moveInfoExtended2.imageY, moveInfoExtended2.imageWidth, moveInfoExtended2.imageHeight);
                        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        final float f = chatMessageCell3.getCurrentMessagesGroup() == null ? transitionParams3.captionEnterProgress : chatMessageCell3.getCurrentMessagesGroup().transitionParams.captionEnterProgress;
                        final float fHasCaptionLayout = chatMessageCell3.getCurrentMessagesGroup() == null ? chatMessageCell3.hasCaptionLayout() : chatMessageCell3.getCurrentMessagesGroup().hasCaption;
                        boolean z3 = f != fHasCaptionLayout;
                        if (transitionParams3.animateRadius) {
                            int[] iArr2 = new int[4];
                            for (int i5 = 0; i5 < 4; i5++) {
                                iArr2[i5] = chatMessageCell3.getPhotoImage().getRoundRadius()[i5];
                            }
                            iArr = iArr2;
                        } else {
                            iArr = null;
                        }
                        final boolean z4 = z3;
                        transitionParams = transitionParams3;
                        chatMessageCell = chatMessageCell3;
                        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ChatListItemAnimator.lambda$animateMoveImpl$2(moveInfoExtended2, transitionParams3, z4, f, fHasCaptionLayout, chatMessageCell, iArr, viewHolder, valueAnimator);
                            }
                        });
                        animatorSet = animatorSet2;
                        animatorSet.playTogether(valueAnimatorOfFloat3);
                        moveInfoExtended = moveInfoExtended2;
                    } else {
                        transitionParams = transitionParams3;
                        chatMessageCell = chatMessageCell3;
                        animatorSet = animatorSet2;
                        moveInfoExtended = moveInfoExtended2;
                    }
                    if (moveInfoExtended.deltaBottom == 0 && moveInfoExtended.deltaRight == 0 && moveInfoExtended.deltaTop == 0 && moveInfoExtended.deltaLeft == 0) {
                        transitionParams2 = transitionParams;
                        transitionParams2.toDeltaLeft = BitmapDescriptorFactory.HUE_RED;
                        transitionParams2.toDeltaRight = BitmapDescriptorFactory.HUE_RED;
                        chatMessageCell2 = chatMessageCell;
                        z2 = false;
                    } else {
                        transitionParams2 = transitionParams;
                        this.recyclerListView.setClipChildren(false);
                        this.recyclerListView.invalidate();
                        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                        if (moveInfoExtended.animateBackgroundOnly) {
                            transitionParams2.toDeltaLeft = -moveInfoExtended.deltaLeft;
                            animationOffsetX = -moveInfoExtended.deltaRight;
                        } else {
                            transitionParams2.toDeltaLeft = (-moveInfoExtended.deltaLeft) - chatMessageCell.getAnimationOffsetX();
                            animationOffsetX = (-moveInfoExtended.deltaRight) - chatMessageCell.getAnimationOffsetX();
                        }
                        transitionParams2.toDeltaRight = animationOffsetX;
                        chatMessageCell2 = chatMessageCell;
                        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ChatListItemAnimator.lambda$animateMoveImpl$3(moveInfoExtended, transitionParams2, chatMessageCell2, valueAnimator);
                            }
                        });
                        z2 = false;
                        animatorSet.playTogether(valueAnimatorOfFloat4);
                    }
                    MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell2.getCurrentMessagesGroup();
                    if (currentMessagesGroup == null) {
                        moveInfoExtended.animateChangeGroupBackground = z2;
                    }
                    if (moveInfoExtended.animateChangeGroupBackground) {
                        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                        final MessageObject.GroupedMessages.TransitionParams transitionParams4 = currentMessagesGroup.transitionParams;
                        final RecyclerListView recyclerListView = (RecyclerListView) viewHolder.itemView.getParent();
                        final float f2 = currentMessagesGroup.transitionParams.captionEnterProgress;
                        final float f3 = currentMessagesGroup.hasCaption ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        final boolean z5 = f2 != f3;
                        final MoveInfoExtended moveInfoExtended3 = moveInfoExtended;
                        valueAnimatorOfFloat5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda3
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ChatListItemAnimator.lambda$animateMoveImpl$4(transitionParams4, moveInfoExtended3, z5, f2, f3, recyclerListView, valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat5.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.6
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                MessageObject.GroupedMessages.TransitionParams transitionParams5 = transitionParams4;
                                transitionParams5.backgroundChangeBounds = false;
                                transitionParams5.drawBackgroundForDeletedItems = false;
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat5);
                    }
                    if (moveInfoExtended.animatePinnedBottom) {
                        ValueAnimator valueAnimatorOfFloat6 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        valueAnimatorOfFloat6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda4
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ChatListItemAnimator.lambda$animateMoveImpl$5(transitionParams2, chatMessageCell2, valueAnimator);
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat6);
                    }
                    if (moveInfoExtended.animateChangeInternal) {
                        ValueAnimator valueAnimatorOfFloat7 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        transitionParams2.animateChange = true;
                        valueAnimatorOfFloat7.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda5
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ChatListItemAnimator.lambda$animateMoveImpl$6(transitionParams2, chatMessageCell2, valueAnimator);
                            }
                        });
                        animatorSet.playTogether(valueAnimatorOfFloat7);
                    }
                } else {
                    animatorSet = animatorSet2;
                    if (view4 instanceof ChatActionCell) {
                        final ChatActionCell chatActionCell = (ChatActionCell) view4;
                        final ChatActionCell.TransitionParams transitionParams5 = chatActionCell.getTransitionParams();
                        if (moveInfoExtended2.animateChangeInternal) {
                            ValueAnimator valueAnimatorOfFloat8 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                            transitionParams5.animateChange = true;
                            valueAnimatorOfFloat8.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda6
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    ChatListItemAnimator.lambda$animateMoveImpl$7(transitionParams5, chatActionCell, valueAnimator);
                                }
                            });
                            animatorSet.playTogether(valueAnimatorOfFloat8);
                        }
                    }
                }
            }
            animatorSet = animatorSet2;
        }
        if (!z) {
            timeInterpolator = this.translationInterpolator;
            if (timeInterpolator != null) {
            }
            animatorSet.setDuration((long) (getMoveDuration() * (z ? 1.9f : 1.0f)));
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (i4 != 0) {
                        view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeAllListeners();
                    ChatListItemAnimator.this.restoreTransitionParams(viewHolder.itemView);
                    View view5 = viewHolder.itemView;
                    if (view5 instanceof ChatMessageCell) {
                        ChatMessageCell chatMessageCell4 = (ChatMessageCell) view5;
                        if (chatMessageCell4.makeVisibleAfterChange) {
                            chatMessageCell4.makeVisibleAfterChange = false;
                            chatMessageCell4.setVisibility(0);
                        }
                        MessageObject.GroupedMessages currentMessagesGroup2 = chatMessageCell4.getCurrentMessagesGroup();
                        if (currentMessagesGroup2 != null) {
                            currentMessagesGroup2.transitionParams.reset();
                        }
                    }
                    if (ChatListItemAnimator.this.mMoveAnimations.remove(viewHolder)) {
                        ChatListItemAnimator.this.dispatchMoveFinished(viewHolder);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ChatListItemAnimator.this.dispatchMoveStarting(viewHolder);
                }
            });
            animatorSet.start();
            this.animators.put(viewHolder, animatorSet);
        }
        timeInterpolator = CubicBezierInterpolator.EASE_OUT;
        animatorSet.setInterpolator(timeInterpolator);
        animatorSet.setDuration((long) (getMoveDuration() * (z ? 1.9f : 1.0f)));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i4 != 0) {
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                ChatListItemAnimator.this.restoreTransitionParams(viewHolder.itemView);
                View view5 = viewHolder.itemView;
                if (view5 instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell4 = (ChatMessageCell) view5;
                    if (chatMessageCell4.makeVisibleAfterChange) {
                        chatMessageCell4.makeVisibleAfterChange = false;
                        chatMessageCell4.setVisibility(0);
                    }
                    MessageObject.GroupedMessages currentMessagesGroup2 = chatMessageCell4.getCurrentMessagesGroup();
                    if (currentMessagesGroup2 != null) {
                        currentMessagesGroup2.transitionParams.reset();
                    }
                }
                if (ChatListItemAnimator.this.mMoveAnimations.remove(viewHolder)) {
                    ChatListItemAnimator.this.dispatchMoveFinished(viewHolder);
                    ChatListItemAnimator.this.dispatchFinishedWhenDone();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ChatListItemAnimator.this.dispatchMoveStarting(viewHolder);
            }
        });
        animatorSet.start();
        this.animators.put(viewHolder, animatorSet);
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("animate remove");
        }
        boolean zAnimateRemove = super.animateRemove(viewHolder, itemHolderInfo);
        if (zAnimateRemove && itemHolderInfo != null) {
            int i = itemHolderInfo.top;
            int top = viewHolder.itemView.getTop();
            int left = viewHolder.itemView.getLeft() - itemHolderInfo.left;
            if (top - i != 0) {
                viewHolder.itemView.setTranslationY(-r2);
            }
            View view = viewHolder.itemView;
            if (view instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                if (left != 0) {
                    chatMessageCell.setAnimationOffsetX(-left);
                }
                if (itemHolderInfo instanceof ItemHolderInfoExtended) {
                    ItemHolderInfoExtended itemHolderInfoExtended = (ItemHolderInfoExtended) itemHolderInfo;
                    chatMessageCell.setImageCoords(itemHolderInfoExtended.imageX, itemHolderInfoExtended.imageY, itemHolderInfoExtended.imageWidth, itemHolderInfoExtended.imageHeight);
                }
            } else if (left != 0) {
                view.setTranslationX(-left);
            }
        }
        return zAnimateRemove;
    }

    protected void animateRemoveImpl(final RecyclerView.ViewHolder viewHolder, boolean z) {
        Utilities.Callback0Return callback0Return;
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("animate remove impl ");
            sb.append(z ? " with thanos" : "");
            FileLog.d(sb.toString());
        }
        final View view = viewHolder.itemView;
        this.mRemoveAnimations.add(viewHolder);
        if (!z || (callback0Return = this.getThanosEffectContainer) == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), BitmapDescriptorFactory.HUE_RED);
            dispatchRemoveStarting(viewHolder);
            objectAnimatorOfFloat.setDuration(getRemoveDuration());
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.ChatListItemAnimator.12
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeAllListeners();
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (ChatListItemAnimator.this.mRemoveAnimations.remove(viewHolder)) {
                        ChatListItemAnimator.this.dispatchRemoveFinished(viewHolder);
                        ChatListItemAnimator.this.dispatchFinishedWhenDone();
                    }
                }
            });
            this.animators.put(viewHolder, objectAnimatorOfFloat);
            objectAnimatorOfFloat.start();
        } else {
            ThanosEffect thanosEffect = (ThanosEffect) callback0Return.run();
            dispatchRemoveStarting(viewHolder);
            thanosEffect.animate(view, new Runnable() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$animateRemoveImpl$9(view, viewHolder);
                }
            });
            this.thanosViews.add(view);
        }
        this.recyclerListView.stopScroll();
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        ThanosEffect thanosEffect;
        Animator animator = (Animator) this.animators.remove(viewHolder);
        if (animator != null) {
            animator.cancel();
        }
        if (this.thanosViews.contains(viewHolder.itemView) && (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) != null) {
            thanosEffect.cancel(viewHolder.itemView);
        }
        super.endAnimation(viewHolder);
        restoreTransitionParams(viewHolder.itemView);
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("end animations");
        }
        Iterator it = this.willChangedGroups.iterator();
        while (it.hasNext()) {
            ((MessageObject.GroupedMessages) it.next()).transitionParams.isNewGroup = false;
        }
        this.willChangedGroups.clear();
        cancelAnimators();
        ChatGreetingsView chatGreetingsView = this.chatGreetingsView;
        if (chatGreetingsView != null) {
            chatGreetingsView.stickerToSendView.setAlpha(1.0f);
        }
        this.greetingsSticker = null;
        this.chatGreetingsView = null;
        for (int size = this.mPendingMoves.size() - 1; size >= 0; size--) {
            DefaultItemAnimator.MoveInfo moveInfo = (DefaultItemAnimator.MoveInfo) this.mPendingMoves.get(size);
            restoreTransitionParams(moveInfo.holder.itemView);
            dispatchMoveFinished(moveInfo.holder);
            this.mPendingMoves.remove(size);
        }
        for (int size2 = this.mPendingRemovals.size() - 1; size2 >= 0; size2--) {
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) this.mPendingRemovals.get(size2);
            restoreTransitionParams(viewHolder.itemView);
            dispatchRemoveFinished(viewHolder);
            this.mPendingRemovals.remove(size2);
        }
        for (int size3 = this.mPendingAdditions.size() - 1; size3 >= 0; size3--) {
            RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) this.mPendingAdditions.get(size3);
            restoreTransitionParams(viewHolder2.itemView);
            dispatchAddFinished(viewHolder2);
            this.mPendingAdditions.remove(size3);
        }
        for (int size4 = this.mPendingChanges.size() - 1; size4 >= 0; size4--) {
            endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo) this.mPendingChanges.get(size4));
        }
        this.mPendingChanges.clear();
        if (isRunning()) {
            for (int size5 = this.mMovesList.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.mMovesList.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    DefaultItemAnimator.MoveInfo moveInfo2 = (DefaultItemAnimator.MoveInfo) arrayList.get(size6);
                    restoreTransitionParams(moveInfo2.holder.itemView);
                    dispatchMoveFinished(moveInfo2.holder);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.mMovesList.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.mAdditionsList.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.mAdditionsList.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList2.get(size8);
                    restoreTransitionParams(viewHolder3.itemView);
                    dispatchAddFinished(viewHolder3);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.mAdditionsList.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.mChangesList.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.mChangesList.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    endChangeAnimationIfNecessary((DefaultItemAnimator.ChangeInfo) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.mChangesList.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            dispatchAnimationsFinished();
        }
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected boolean endChangeAnimationIfNecessary(DefaultItemAnimator.ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        ThanosEffect thanosEffect;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("end change if necessary");
        }
        Animator animator = (Animator) this.animators.remove(viewHolder);
        if (animator != null) {
            animator.cancel();
        }
        if (this.thanosViews.contains(viewHolder.itemView) && (thanosEffect = (ThanosEffect) this.getThanosEffectContainer.run()) != null) {
            thanosEffect.cancel(viewHolder.itemView);
        }
        boolean z = false;
        if (changeInfo.newHolder == viewHolder) {
            changeInfo.newHolder = null;
        } else {
            if (changeInfo.oldHolder != viewHolder) {
                return false;
            }
            changeInfo.oldHolder = null;
            z = true;
        }
        restoreTransitionParams(viewHolder.itemView);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public long getChangeDuration() {
        return 250L;
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected long getMoveAnimationDelay() {
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public long getMoveDuration() {
        return 250L;
    }

    public void groupWillChanged(MessageObject.GroupedMessages groupedMessages) {
        if (groupedMessages == null) {
            return;
        }
        if (groupedMessages.messages.size() == 0) {
            groupedMessages.transitionParams.drawBackgroundForDeletedItems = true;
            return;
        }
        MessageObject.GroupedMessages.TransitionParams transitionParams = groupedMessages.transitionParams;
        if (transitionParams.top == 0 && transitionParams.bottom == 0 && transitionParams.left == 0 && transitionParams.right == 0) {
            int childCount = this.recyclerListView.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = this.recyclerListView.getChildAt(i);
                if (childAt instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                    MessageObject messageObject = chatMessageCell.getMessageObject();
                    if (chatMessageCell.getTransitionParams().wasDraw && groupedMessages.messages.contains(messageObject)) {
                        groupedMessages.transitionParams.top = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop();
                        groupedMessages.transitionParams.bottom = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom();
                        groupedMessages.transitionParams.left = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableLeft();
                        groupedMessages.transitionParams.right = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableRight();
                        groupedMessages.transitionParams.drawCaptionLayout = chatMessageCell.hasCaptionLayout();
                        groupedMessages.transitionParams.pinnedTop = chatMessageCell.isPinnedTop();
                        groupedMessages.transitionParams.pinnedBotton = chatMessageCell.isPinnedBottom();
                        groupedMessages.transitionParams.isNewGroup = true;
                        break;
                    }
                }
                i++;
            }
        }
        this.willChangedGroups.add(groupedMessages);
    }

    public void groupWillTransformToSingleMessage(MessageObject.GroupedMessages groupedMessages) {
        this.willRemovedGroup.put(Integer.valueOf(groupedMessages.messages.get(0).getId()), groupedMessages);
    }

    @Override // androidx.recyclerview.widget.DefaultItemAnimator
    protected void onAllAnimationsDone() {
        super.onAllAnimationsDone();
        this.recyclerListView.setClipChildren(true);
        while (!this.runOnAnimationsEnd.isEmpty()) {
            ((Runnable) this.runOnAnimationsEnd.remove(0)).run();
        }
        cancelAnimators();
    }

    public void onAnimationStart() {
    }

    public void onDestroy() {
        onAllAnimationsDone();
    }

    public void onGreetingStickerTransition(RecyclerView.ViewHolder viewHolder, ChatGreetingsView chatGreetingsView) {
        this.greetingsSticker = viewHolder;
        this.chatGreetingsView = chatGreetingsView;
        this.shouldAnimateEnterFromBottom = false;
    }

    public void prepareThanos(RecyclerView.ViewHolder viewHolder) {
        MessageObject messageObject;
        if (viewHolder == null) {
            return;
        }
        this.toBeSnapped.add(viewHolder);
        View view = viewHolder.itemView;
        if (!(view instanceof ChatMessageCell) || (messageObject = ((ChatMessageCell) view).getMessageObject()) == null) {
            return;
        }
        messageObject.deletedByThanos = true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public RecyclerView.ItemAnimator.ItemHolderInfo recordPreLayoutInformation(RecyclerView.State state, RecyclerView.ViewHolder viewHolder, int i, List list) {
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfoRecordPreLayoutInformation = super.recordPreLayoutInformation(state, viewHolder, i, list);
        View view = viewHolder.itemView;
        if (!(view instanceof ChatMessageCell)) {
            return itemHolderInfoRecordPreLayoutInformation;
        }
        ItemHolderInfoExtended itemHolderInfoExtended = new ItemHolderInfoExtended();
        itemHolderInfoExtended.left = itemHolderInfoRecordPreLayoutInformation.left;
        itemHolderInfoExtended.top = itemHolderInfoRecordPreLayoutInformation.top;
        itemHolderInfoExtended.right = itemHolderInfoRecordPreLayoutInformation.right;
        itemHolderInfoExtended.bottom = itemHolderInfoRecordPreLayoutInformation.bottom;
        ChatMessageCell.TransitionParams transitionParams = ((ChatMessageCell) view).getTransitionParams();
        itemHolderInfoExtended.imageX = transitionParams.lastDrawingImageX;
        itemHolderInfoExtended.imageY = transitionParams.lastDrawingImageY;
        itemHolderInfoExtended.imageWidth = transitionParams.lastDrawingImageW;
        itemHolderInfoExtended.imageHeight = transitionParams.lastDrawingImageH;
        return itemHolderInfoExtended;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void runPendingAnimations() {
        boolean z = !this.mPendingRemovals.isEmpty();
        boolean z2 = !this.mPendingMoves.isEmpty();
        boolean z3 = !this.mPendingChanges.isEmpty();
        boolean z4 = !this.mPendingAdditions.isEmpty();
        if (z || z2 || z4 || z3) {
            boolean z5 = false;
            if (this.shouldAnimateEnterFromBottom) {
                boolean z6 = false;
                for (int i = 0; i < this.mPendingAdditions.size(); i++) {
                    if (this.reversePositions) {
                        if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == (this.recyclerListView.getAdapter() == null ? 0 : this.recyclerListView.getAdapter().getItemCount()) - 1) {
                            z6 = true;
                        }
                    } else if (((RecyclerView.ViewHolder) this.mPendingAdditions.get(i)).getLayoutPosition() == 0) {
                    }
                }
                z5 = z6;
            }
            onAnimationStart();
            if (z5) {
                runMessageEnterTransition();
            } else {
                runAlphaEnterTransition();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ChatListItemAnimator$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$runPendingAnimations$0(valueAnimator);
                }
            });
            valueAnimatorOfFloat.setDuration(getRemoveDuration() + getMoveDuration());
            valueAnimatorOfFloat.start();
        }
    }

    public void setOnSnapMessage(Utilities.Callback0Return callback0Return, Utilities.Callback0Return callback0Return2) {
        this.supportsThanosEffectContainer = callback0Return;
        this.getThanosEffectContainer = callback0Return2;
    }

    public void setReversePositions(boolean z) {
        this.reversePositions = z;
    }

    public void setShouldAnimateEnterFromBottom(boolean z) {
        this.shouldAnimateEnterFromBottom = z;
    }

    public boolean willAddedFromAlpha(View view) {
        RecyclerView.ViewHolder childViewHolder;
        if (this.shouldAnimateEnterFromBottom || (childViewHolder = this.recyclerListView.getChildViewHolder(view)) == null) {
            return false;
        }
        return this.mPendingAdditions.contains(childViewHolder) || this.mAddAnimations.contains(childViewHolder);
    }

    public boolean willRemoved(View view) {
        RecyclerView.ViewHolder childViewHolder = this.recyclerListView.getChildViewHolder(view);
        if (childViewHolder != null) {
            return this.mPendingRemovals.contains(childViewHolder) || this.mRemoveAnimations.contains(childViewHolder);
        }
        return false;
    }
}
