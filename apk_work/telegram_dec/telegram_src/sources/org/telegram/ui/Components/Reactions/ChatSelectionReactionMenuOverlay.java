package org.telegram.ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FragmentContextView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.Components.RecyclerListView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ChatSelectionReactionMenuOverlay extends FrameLayout {
    private float currentOffsetY;
    private MessageObject currentPrimaryObject;
    private boolean hiddenByScroll;
    private boolean isVisible;
    private long lastUpdate;
    private int mPadding;
    private int mSidePadding;
    private boolean messageSet;
    private ChatActivity parentFragment;
    private int[] pos;
    private ReactionsContainerLayout reactionsContainerLayout;
    private List selectedMessages;
    private float toOffsetY;
    private float translationOffsetY;

    /* renamed from: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3, reason: invalid class name */
    class AnonymousClass3 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClicked$0() throws Resources.NotFoundException, NumberFormatException {
            if (ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout != null) {
                ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout.dismissParent(true);
            }
            hideMenu();
        }

        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ boolean drawBackground() {
            return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawBackground(this);
        }

        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, float f3, int i, boolean z) {
            ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawRoundRect(this, canvas, rectF, f, f2, f3, i, z);
        }

        public void hideMenu() throws Resources.NotFoundException, NumberFormatException {
            ChatSelectionReactionMenuOverlay.this.parentFragment.clearSelectionMode(true);
        }

        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ boolean needEnterText() {
            return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$needEnterText(this);
        }

        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ void onEmojiWindowDismissed() {
            ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$onEmojiWindowDismissed(this);
        }

        @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            ChatSelectionReactionMenuOverlay.this.parentFragment.selectReaction(null, ChatSelectionReactionMenuOverlay.this.currentPrimaryObject, ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout, view, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, visibleReaction, false, z, z2, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Resources.NotFoundException, NumberFormatException {
                    this.f$0.lambda$onReactionClicked$0();
                }
            });
        }
    }

    public ChatSelectionReactionMenuOverlay(ChatActivity chatActivity, Context context) {
        super(context);
        this.selectedMessages = Collections.emptyList();
        this.mPadding = 22;
        this.mSidePadding = 24;
        this.pos = new int[2];
        setVisibility(8);
        this.parentFragment = chatActivity;
        setClipToPadding(false);
        setClipChildren(false);
        chatActivity.getChatListView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatSelectionReactionMenuOverlay.this.invalidatePosition();
            }
        });
    }

    private void animateVisible(boolean z) {
        if (z) {
            setVisibility(0);
            post(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$animateVisible$0();
                }
            });
            return;
        }
        this.messageSet = false;
        ValueAnimator duration = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateVisible$1(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatSelectionReactionMenuOverlay.this.setVisibility(8);
                if (ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout != null) {
                    ChatSelectionReactionMenuOverlay chatSelectionReactionMenuOverlay = ChatSelectionReactionMenuOverlay.this;
                    chatSelectionReactionMenuOverlay.removeView(chatSelectionReactionMenuOverlay.reactionsContainerLayout);
                    ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout = null;
                }
                ChatSelectionReactionMenuOverlay.this.currentPrimaryObject = null;
            }
        });
        duration.start();
    }

    private void checkCreateReactionsLayout() {
        if (this.reactionsContainerLayout == null) {
            ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout((this.parentFragment.getUserConfig().getClientUserId() > this.parentFragment.getDialogId() ? 1 : (this.parentFragment.getUserConfig().getClientUserId() == this.parentFragment.getDialogId() ? 0 : -1)) == 0 ? 3 : 0, this.parentFragment, getContext(), this.parentFragment.getCurrentAccount(), this.parentFragment.getResourceProvider()) { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.2
                float enabledAlpha = 1.0f;
                long lastUpdate;

                {
                    setWillNotDraw(false);
                }

                @Override // android.view.View
                public void draw(Canvas canvas) {
                    long jMin = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
                    this.lastUpdate = System.currentTimeMillis();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                    canvas.saveLayerAlpha(rectF, (int) (this.enabledAlpha * 255.0f), 31);
                    super.draw(canvas);
                    canvas.restore();
                    if (!isEnabled()) {
                        float f = this.enabledAlpha;
                        if (f != BitmapDescriptorFactory.HUE_RED) {
                            this.enabledAlpha = Math.max(BitmapDescriptorFactory.HUE_RED, f - (jMin / 150.0f));
                            invalidate();
                            if (this.enabledAlpha == BitmapDescriptorFactory.HUE_RED) {
                                setVisibility(8);
                                return;
                            }
                            return;
                        }
                    }
                    if (isEnabled()) {
                        float f2 = this.enabledAlpha;
                        if (f2 != 1.0f) {
                            this.enabledAlpha = Math.min(1.0f, f2 + (jMin / 150.0f));
                            invalidate();
                        }
                    }
                }

                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (i != 8 || this.enabledAlpha == BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    this.enabledAlpha = BitmapDescriptorFactory.HUE_RED;
                }
            };
            this.reactionsContainerLayout = reactionsContainerLayout;
            reactionsContainerLayout.setPadding(AndroidUtilities.dp(4.0f) + (LocaleController.isRTL ? 0 : this.mSidePadding), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f) + (LocaleController.isRTL ? this.mSidePadding : 0), AndroidUtilities.dp(this.mPadding));
            this.reactionsContainerLayout.setDelegate(new AnonymousClass3());
            this.reactionsContainerLayout.setClipChildren(false);
            this.reactionsContainerLayout.setClipToPadding(false);
            addView(this.reactionsContainerLayout, LayoutHelper.createFrame(-2, this.mPadding + 70, 5));
        }
    }

    private MessageObject findPrimaryObject() {
        MessageObject.GroupedMessages group;
        ArrayList<MessageObject> arrayList;
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList arrayList2;
        if (!this.isVisible || this.selectedMessages.isEmpty()) {
            return null;
        }
        MessageObject messageObject = (MessageObject) this.selectedMessages.get(0);
        if (messageObject.getGroupId() != 0 && (group = this.parentFragment.getGroup(messageObject.getGroupId())) != null && (arrayList = group.messages) != null) {
            Iterator<MessageObject> it = arrayList.iterator();
            while (it.hasNext()) {
                MessageObject next = it.next();
                TLRPC.Message message = next.messageOwner;
                if (message != null && (tL_messageReactions = message.reactions) != null && (arrayList2 = tL_messageReactions.results) != null && !arrayList2.isEmpty()) {
                    return next;
                }
            }
        }
        return messageObject;
    }

    private boolean isMessageTypeAllowed(MessageObject messageObject) {
        return (messageObject == null || messageObject.needDrawBluredPreview() || ((!MessageObject.isPhoto(messageObject.messageOwner) || MessageObject.getMedia(messageObject.messageOwner).webpage != null) && (messageObject.getDocument() == null || (!MessageObject.isVideoDocument(messageObject.getDocument()) && !MessageObject.isGifDocument(messageObject.getDocument()))))) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateVisible$0() {
        this.currentPrimaryObject = findPrimaryObject();
        checkCreateReactionsLayout();
        invalidatePosition(false);
        if (!this.reactionsContainerLayout.isEnabled()) {
            this.messageSet = false;
            this.reactionsContainerLayout.setTransitionProgress(1.0f);
        } else {
            this.messageSet = true;
            this.reactionsContainerLayout.setMessage(this.currentPrimaryObject, this.parentFragment.getCurrentChatInfo(), true);
            this.reactionsContainerLayout.startEnterAnimation(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateVisible$1(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.setAlpha(fFloatValue);
        }
    }

    public void invalidatePosition() {
        invalidatePosition(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0174 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void invalidatePosition(boolean z) {
        int height;
        boolean z2;
        boolean z3;
        ReactionsContainerLayout reactionsContainerLayout;
        float fMax;
        if (!this.isVisible || this.currentPrimaryObject == null || this.reactionsContainerLayout == null) {
            return;
        }
        long jMin = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
        this.lastUpdate = System.currentTimeMillis();
        float f = this.currentOffsetY;
        float f2 = this.toOffsetY;
        if (f != f2) {
            float f3 = jMin / 220.0f;
            if (f2 > f) {
                fMax = Math.min(f + f3, f2);
            } else {
                if (f2 < f) {
                    fMax = Math.max(f - f3, f2);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidatePosition();
                    }
                });
            }
            this.currentOffsetY = fMax;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidatePosition();
                }
            });
        }
        RecyclerListView chatListView = this.parentFragment.getChatListView();
        chatListView.getLocationInWindow(this.pos);
        int[] iArr = this.pos;
        boolean z4 = true;
        float f4 = iArr[1];
        getLocationInWindow(iArr);
        float pullingDownOffset = (f4 - this.pos[1]) - this.parentFragment.getPullingDownOffset();
        boolean z5 = false;
        for (int i = 0; i < chatListView.getChildCount(); i++) {
            View childAt = chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (messageObject.getId() == this.currentPrimaryObject.getId()) {
                    boolean zIsOutOwner = messageObject.isOutOwner();
                    ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
                    if (reactionsContainerLayout2 != null) {
                        reactionsContainerLayout2.setMirrorX(zIsOutOwner);
                        this.reactionsContainerLayout.setPadding(AndroidUtilities.dp(4.0f) + ((LocaleController.isRTL || zIsOutOwner) ? 0 : this.mSidePadding), AndroidUtilities.dp(this.mPadding), AndroidUtilities.dp(4.0f) + ((LocaleController.isRTL || zIsOutOwner) ? this.mSidePadding : 0), AndroidUtilities.dp(this.mPadding));
                    }
                    int height2 = getHeight() != 0 ? getHeight() : chatListView.getHeight();
                    if (chatMessageCell.getCurrentMessagesGroup() != null) {
                        MessageObject.GroupedMessages.TransitionParams transitionParams = chatMessageCell.getCurrentMessagesGroup().transitionParams;
                        height = transitionParams.bottom - transitionParams.top;
                    } else {
                        height = chatMessageCell.getHeight();
                    }
                    float y = (chatMessageCell.getY() + pullingDownOffset) - AndroidUtilities.dp(74.0f);
                    float fDp = AndroidUtilities.dp(14.0f);
                    float fDp2 = height2 - AndroidUtilities.dp(218.0f);
                    FragmentContextView fragmentContextView = this.parentFragment.getFragmentContextView();
                    if (fragmentContextView != null && fragmentContextView.getVisibility() == 0) {
                        fDp += fragmentContextView.getHeight();
                    }
                    float f5 = height;
                    if (y > fDp - (f5 / 2.0f) && y < fDp2) {
                        this.toOffsetY = BitmapDescriptorFactory.HUE_RED;
                        z2 = false;
                    } else {
                        if (y < (fDp - f5) - AndroidUtilities.dp(92.0f) || y > fDp2) {
                            z2 = false;
                            z3 = false;
                            if (!z) {
                                this.currentOffsetY = this.toOffsetY;
                            }
                            float interpolation = y + (CubicBezierInterpolator.DEFAULT.getInterpolation(this.currentOffsetY) * this.translationOffsetY);
                            reactionsContainerLayout = this.reactionsContainerLayout;
                            if (reactionsContainerLayout != null) {
                                return;
                            }
                            if (z2 != reactionsContainerLayout.isFlippedVertically()) {
                                this.reactionsContainerLayout.setFlippedVertically(z2);
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.invalidatePosition();
                                    }
                                });
                            }
                            if (z3 != this.reactionsContainerLayout.isEnabled()) {
                                this.reactionsContainerLayout.setEnabled(z3);
                                this.reactionsContainerLayout.invalidate();
                                if (z3) {
                                    this.reactionsContainerLayout.setVisibility(0);
                                    if (!this.messageSet) {
                                        this.messageSet = true;
                                        this.reactionsContainerLayout.setMessage(this.currentPrimaryObject, this.parentFragment.getCurrentChatInfo(), true);
                                    }
                                }
                            }
                            this.reactionsContainerLayout.setTranslationY(MathUtils.clamp(interpolation, fDp, fDp2));
                            this.reactionsContainerLayout.setTranslationX(chatMessageCell.getNonAnimationTranslationX(true));
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.reactionsContainerLayout.getLayoutParams();
                            int iMax = Math.max(0, chatMessageCell.getBackgroundDrawableLeft() - AndroidUtilities.dp(32.0f));
                            int iMax2 = Math.max((int) chatMessageCell.getNonAnimationTranslationX(true), (chatMessageCell.getWidth() - chatMessageCell.getBackgroundDrawableRight()) - AndroidUtilities.dp(32.0f));
                            int iDp = AndroidUtilities.dp(40.0f) * 8;
                            if ((getWidth() - iMax2) - iMax < iDp) {
                                if (zIsOutOwner) {
                                    iMax = Math.min(iMax, getWidth() - iDp);
                                    iMax2 = 0;
                                } else {
                                    iMax2 = Math.min(iMax2, getWidth() - iDp);
                                    iMax = 0;
                                }
                            }
                            int i2 = zIsOutOwner ? 5 : 3;
                            if (i2 != layoutParams.gravity) {
                                layoutParams.gravity = i2;
                                z5 = true;
                            }
                            if (iMax != layoutParams.leftMargin) {
                                layoutParams.leftMargin = iMax;
                                z5 = true;
                            }
                            if (iMax2 != layoutParams.rightMargin) {
                                layoutParams.rightMargin = iMax2;
                            } else {
                                z4 = z5;
                            }
                            if (z4) {
                                this.reactionsContainerLayout.requestLayout();
                                return;
                            }
                            return;
                        }
                        this.translationOffsetY = height + AndroidUtilities.dp(56.0f);
                        this.toOffsetY = 1.0f;
                        z2 = true;
                    }
                    z3 = true;
                    if (!z) {
                    }
                    float interpolation2 = y + (CubicBezierInterpolator.DEFAULT.getInterpolation(this.currentOffsetY) * this.translationOffsetY);
                    reactionsContainerLayout = this.reactionsContainerLayout;
                    if (reactionsContainerLayout != null) {
                    }
                }
            }
        }
        ReactionsContainerLayout reactionsContainerLayout3 = this.reactionsContainerLayout;
        if (reactionsContainerLayout3 == null || !reactionsContainerLayout3.isEnabled()) {
            return;
        }
        this.reactionsContainerLayout.setEnabled(false);
    }

    public boolean isVisible() {
        return this.isVisible && !this.hiddenByScroll;
    }

    public boolean onBackPressed() {
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout == null || reactionsContainerLayout.getReactionsWindow() == null) {
            return true;
        }
        this.reactionsContainerLayout.dismissWindow();
        return false;
    }

    public void setHiddenByScroll(boolean z) {
        this.hiddenByScroll = z;
        if (z) {
            animateVisible(false);
        }
    }

    public void setSelectedMessages(List<MessageObject> list) {
        this.selectedMessages = list;
        boolean z = true;
        if (this.parentFragment.getChatMode() == 1 || this.parentFragment.getChatMode() == 5 || this.parentFragment.getChatMode() == 6 || this.parentFragment.isReport() || this.parentFragment.isSecretChat() || ((this.parentFragment.getCurrentChatInfo() != null && (this.parentFragment.getCurrentChatInfo().available_reactions instanceof TLRPC.TL_chatReactionsNone)) || list.isEmpty())) {
            z = false;
            break;
        }
        long groupId = 0;
        boolean z2 = false;
        for (MessageObject messageObject : list) {
            if (isMessageTypeAllowed(messageObject)) {
                if (!z2) {
                    groupId = messageObject.getGroupId();
                    z2 = true;
                } else if (groupId != messageObject.getGroupId() || groupId == 0) {
                }
            }
            z = false;
        }
        if (z != this.isVisible) {
            this.isVisible = z;
            this.hiddenByScroll = false;
            animateVisible(z);
        } else if (z) {
            this.currentPrimaryObject = findPrimaryObject();
        }
    }
}
