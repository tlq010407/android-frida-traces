package org.telegram.ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.R;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.GradientClip;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.StarsIntroActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class StarReactionsOverlay extends View {
    private float accumulatedRippleIntensity;
    private BaseCell cell;
    private final ChatActivity chatActivity;
    private final RectF clickBounds;
    private final GradientClip clip;
    private final AnimatedTextView.AnimatedTextDrawable counter;
    private final AnimatedFloat counterAlpha;
    private boolean counterShown;
    private final int[] effectAssets;
    private final ArrayList effects;
    private float focus;
    private ValueAnimator focusAnimator;
    public boolean hidden;
    private Runnable hideCounterRunnable;
    private long lastRippleTime;
    private final Runnable longPressRunnable;
    private int messageId;
    private final int[] pos;
    private final int[] pos2;
    private boolean pressed;
    private final RectF reactionBounds;
    private final Paint redPaint;
    private final Paint shadowPaint;

    public StarReactionsOverlay(final ChatActivity chatActivity) {
        super(chatActivity.getContext());
        this.pos = new int[2];
        this.pos2 = new int[2];
        this.reactionBounds = new RectF();
        this.clickBounds = new RectF();
        this.shadowPaint = new Paint();
        this.redPaint = new Paint();
        this.counterAlpha = new AnimatedFloat(this, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
        this.counter = animatedTextDrawable;
        this.clip = new GradientClip();
        this.effects = new ArrayList();
        this.effectAssets = new int[]{R.raw.star_reaction_effect1, R.raw.star_reaction_effect2, R.raw.star_reaction_effect3, R.raw.star_reaction_effect4, R.raw.star_reaction_effect5};
        this.chatActivity = chatActivity;
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setHacks(false, true, true);
        animatedTextDrawable.setTextSize(AndroidUtilities.dp(40.0f));
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
        animatedTextDrawable.setShadowLayer(AndroidUtilities.dp(12.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(3.5f), 0);
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setGravity(17);
        this.hideCounterRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.longPressRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(chatActivity);
            }
        };
    }

    private void checkBalance() {
        String forcedFirstName;
        if (getMessageObject() != null) {
            final MessageObject messageObject = getMessageObject();
            final StarsController starsController = StarsController.getInstance(this.chatActivity.getCurrentAccount());
            final long pendingPaidReactions = starsController.getPendingPaidReactions(messageObject);
            if (!starsController.balanceAvailable() || starsController.getBalance(false) >= pendingPaidReactions) {
                return;
            }
            StarsController.getInstance(this.chatActivity.getCurrentAccount()).undoPaidReaction();
            long dialogId = this.chatActivity.getDialogId();
            if (dialogId >= 0) {
                forcedFirstName = UserObject.getForcedFirstName(this.chatActivity.getMessagesController().getUser(Long.valueOf(dialogId)));
            } else {
                TLRPC.Chat chat = this.chatActivity.getMessagesController().getChat(Long.valueOf(-dialogId));
                forcedFirstName = chat == null ? "" : chat.title;
            }
            new StarsIntroActivity.StarsNeededSheet(this.chatActivity.getContext(), this.chatActivity.getResourceProvider(), pendingPaidReactions, 5, forcedFirstName, new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkBalance$2(starsController, messageObject, pendingPaidReactions);
                }
            }).show();
        }
    }

    private MessageObject getMessageObject() {
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            return ((ChatMessageCell) baseCell).getPrimaryMessageObject();
        }
        if (baseCell instanceof ChatActionCell) {
            return ((ChatActionCell) baseCell).getMessageObject();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkBalance$2(StarsController starsController, MessageObject messageObject, long j) {
        starsController.sendPaidReaction(messageObject, this.chatActivity, j, true, true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$focusTo$3(ValueAnimator valueAnimator) {
        this.focus = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hide$4() {
        setMessageCell(null);
        clearEffects();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.counterShown = false;
        invalidate();
        checkBalance();
        hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a A[PHI: r0 r2
      0x004a: PHI (r0v7 org.telegram.messenger.MessageObject) = (r0v4 org.telegram.messenger.MessageObject), (r0v9 org.telegram.messenger.MessageObject) binds: [B:28:0x0048, B:17:0x0030] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r2v9 org.telegram.tgnet.TLRPC$TL_messageReactions) = (r2v4 org.telegram.tgnet.TLRPC$TL_messageReactions), (r2v11 org.telegram.tgnet.TLRPC$TL_messageReactions) binds: [B:28:0x0048, B:17:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$1(ChatActivity chatActivity) {
        MessageObject messageObject;
        TLRPC.TL_messageReactions tL_messageReactions;
        BaseCell baseCell = this.cell;
        if (baseCell == null) {
            return;
        }
        try {
            baseCell.performHapticFeedback(0);
        } catch (Exception unused) {
        }
        onTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
        BaseCell baseCell2 = this.cell;
        ArrayList arrayList = null;
        if (baseCell2 instanceof ChatMessageCell) {
            messageObject = ((ChatMessageCell) baseCell2).getPrimaryMessageObject();
            if (messageObject == null) {
                return;
            }
            TLRPC.Message message = messageObject.messageOwner;
            if (message != null && (tL_messageReactions = message.reactions) != null) {
                arrayList = tL_messageReactions.top_reactors;
            }
        } else {
            if (!(baseCell2 instanceof ChatActionCell) || (messageObject = ((ChatActionCell) baseCell2).getMessageObject()) == null) {
                return;
            }
            TLRPC.Message message2 = messageObject.messageOwner;
            if (message2 != null && (tL_messageReactions = message2.reactions) != null) {
            }
        }
        ArrayList arrayList2 = arrayList;
        StarsController.getInstance(messageObject.currentAccount).commitPaidReaction();
        TLRPC.ChatFull currentChatInfo = chatActivity.getCurrentChatInfo();
        StarsReactionsSheet starsReactionsSheet = new StarsReactionsSheet(getContext(), chatActivity.getCurrentAccount(), chatActivity.getDialogId(), chatActivity, messageObject, arrayList2, currentChatInfo == null || currentChatInfo.paid_reactions_available, chatActivity.getResourceProvider());
        starsReactionsSheet.setMessageCell(chatActivity, messageObject.getId(), this.cell);
        starsReactionsSheet.show();
    }

    public void clearEffects() {
        Iterator it = this.effects.iterator();
        while (it.hasNext()) {
            ((RLottieDrawable) it.next()).recycle(true);
        }
        this.effects.clear();
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Integer numValueOf;
        float f;
        float fDp;
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            if (!((ChatMessageCell) baseCell).isCellAttachedToWindow()) {
                return;
            }
        } else if ((baseCell instanceof ChatActionCell) && !((ChatActionCell) baseCell).isCellAttachedToWindow()) {
            return;
        }
        MessageObject messageObject = getMessageObject();
        int i = 0;
        if ((messageObject != null ? messageObject.getId() : 0) != this.messageId) {
            setMessageCell(null);
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = getReactionsLayoutInBubble();
        if (reactionsLayoutInBubble == null) {
            setMessageCell(null);
            return;
        }
        float fLerp = AndroidUtilities.lerp(1.0f, 1.8f, this.focus);
        float clipTop = this.chatActivity.getClipTop();
        float clipBottom = this.chatActivity.getClipBottom();
        canvas.save();
        canvas.clipRect(BitmapDescriptorFactory.HUE_RED, clipTop * (1.0f - this.focus), getWidth(), getHeight() - (clipBottom * (1.0f - this.focus)));
        getLocationInWindow(this.pos2);
        this.cell.getLocationInWindow(this.pos);
        int[] iArr = this.pos;
        iArr[1] = iArr[1] + ((int) this.chatActivity.drawingChatListViewYoffset);
        canvas.save();
        ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
        if (reactionButton != null) {
            int[] iArr2 = this.pos;
            int i2 = iArr2[0];
            int[] iArr3 = this.pos2;
            int i3 = (i2 - iArr3[0]) + reactionsLayoutInBubble.x + reactionButton.x;
            int i4 = (iArr2[1] - iArr3[1]) + reactionsLayoutInBubble.y + reactionButton.y;
            float f2 = i3;
            float f3 = i4;
            this.reactionBounds.set(f2, f3, i3 + reactionButton.width, i4 + reactionButton.height);
            AndroidUtilities.scaleRect(this.reactionBounds, fLerp, (reactionButton.width * 0.1f) + f2, (reactionButton.height / 2.0f) + f3);
            this.shadowPaint.setColor(0);
            this.shadowPaint.setShadowLayer(AndroidUtilities.dp(12.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(3.0f), Theme.multAlpha(1426063360, this.focus));
            RectF rectF = this.reactionBounds;
            canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.reactionBounds.height() / 2.0f, this.shadowPaint);
            canvas.scale(fLerp, fLerp, f2 + (reactionButton.width * 0.1f), f3 + (reactionButton.height / 2.0f));
            numValueOf = Integer.valueOf(reactionButton.reaction.hashCode());
        } else {
            numValueOf = null;
        }
        int i5 = this.pos[0];
        int[] iArr4 = this.pos2;
        canvas.translate(i5 - iArr4[0], (r5[1] - iArr4[1]) + this.cell.getPaddingTop());
        BaseCell baseCell2 = this.cell;
        if (baseCell2 instanceof ChatMessageCell) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) baseCell2;
            chatMessageCell.setScrimReaction(null);
            chatMessageCell.drawReactionsLayout(canvas, 1.0f, numValueOf);
            chatMessageCell.drawReactionsLayoutOverlay(canvas, 1.0f);
            chatMessageCell.setScrimReaction(numValueOf);
        } else if (baseCell2 instanceof ChatActionCell) {
            ChatActionCell chatActionCell = (ChatActionCell) baseCell2;
            chatActionCell.setScrimReaction(null);
            chatActionCell.drawReactionsLayout(canvas, true, numValueOf);
            chatActionCell.drawReactionsLayoutOverlay(canvas, true);
            chatActionCell.setScrimReaction(numValueOf);
        }
        canvas.restore();
        canvas.restore();
        if (reactionButton != null) {
            this.clickBounds.set(this.reactionBounds);
            this.clickBounds.inset(-AndroidUtilities.dp(42.0f), -AndroidUtilities.dp(42.0f));
            int iDp = (int) (AndroidUtilities.dp(90.0f) * fLerp);
            while (i < this.effects.size()) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) this.effects.get(i);
                if (rLottieDrawable.getCurrentFrame() >= rLottieDrawable.getFramesCount()) {
                    this.effects.remove(i);
                    i--;
                } else {
                    float f4 = iDp / 2.0f;
                    rLottieDrawable.setBounds((int) ((this.reactionBounds.left + (AndroidUtilities.dp(15.0f) * fLerp)) - f4), (int) (this.reactionBounds.centerY() - f4), (int) (this.reactionBounds.left + (AndroidUtilities.dp(15.0f) * fLerp) + f4), (int) (this.reactionBounds.centerY() + f4));
                    rLottieDrawable.setAlpha((int) (this.focus * 255.0f));
                    rLottieDrawable.draw(canvas);
                }
                i++;
            }
            float fCenterX = this.reactionBounds.centerX();
            float fDp2 = this.reactionBounds.top - AndroidUtilities.dp(36.0f);
            canvas.save();
            float f5 = this.counterAlpha.set(this.counterShown);
            if (this.counterShown) {
                fDp = AndroidUtilities.dp(60.0f);
                f = 1.0f;
            } else {
                f = 1.0f;
                fDp = -AndroidUtilities.dp(30.0f);
            }
            canvas.translate(BitmapDescriptorFactory.HUE_RED, fDp * (f - f5));
            float fLerp2 = AndroidUtilities.lerp(this.counterShown ? 1.8f : 1.3f, f, f5);
            canvas.scale(fLerp2, fLerp2, fCenterX, fDp2);
            this.counter.setAlpha((int) (255.0f * f5));
            this.counter.setShadowLayer(AndroidUtilities.dp(12.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(3.5f), Theme.multAlpha(-1442840576, f5));
            this.counter.setBounds(fCenterX - AndroidUtilities.dp(100.0f), this.reactionBounds.top - AndroidUtilities.dp(48.0f), fCenterX + AndroidUtilities.dp(100.0f), this.reactionBounds.top - AndroidUtilities.dp(24.0f));
            this.counter.draw(canvas);
            canvas.restore();
        }
        if (!this.counterShown) {
            checkBalance();
        }
        invalidate();
    }

    public void focusTo(final float f, final Runnable runnable) {
        ValueAnimator valueAnimator = this.focusAnimator;
        if (valueAnimator != null) {
            this.focusAnimator = null;
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.focus, f);
        this.focusAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$focusTo$3(valueAnimator2);
            }
        });
        this.focusAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarReactionsOverlay.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2;
                StarReactionsOverlay.this.focus = f;
                StarReactionsOverlay.this.invalidate();
                if (animator != StarReactionsOverlay.this.focusAnimator || (runnable2 = runnable) == null) {
                    return;
                }
                runnable2.run();
            }
        });
        this.focusAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.focusAnimator.setDuration(320L);
        this.focusAnimator.start();
    }

    public ReactionsLayoutInBubble getReactionsLayoutInBubble() {
        BaseCell baseCell = this.cell;
        if (baseCell instanceof ChatMessageCell) {
            return ((ChatMessageCell) baseCell).reactionsLayoutInBubble;
        }
        if (baseCell instanceof ChatActionCell) {
            return ((ChatActionCell) baseCell).reactionsLayoutInBubble;
        }
        return null;
    }

    public void hide() {
        this.hidden = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideCounterRunnable);
        this.counter.setText("");
        this.counterShown = false;
        invalidate();
        focusTo(BitmapDescriptorFactory.HUE_RED, new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hide$4();
            }
        });
    }

    public boolean isShowing(MessageObject messageObject) {
        return messageObject != null && messageObject.getId() == this.messageId;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ReactionsLayoutInBubble reactionsLayoutInBubble;
        if (this.cell == null || this.hidden || (reactionsLayoutInBubble = getReactionsLayoutInBubble()) == null) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            if (this.clickBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                this.pressed = true;
                ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
                if (reactionButton != null) {
                    reactionButton.bounce.setPressed(true);
                }
                AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
                AndroidUtilities.runOnUIThread(this.longPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            ReactionsLayoutInBubble.ReactionButton reactionButton2 = reactionsLayoutInBubble.getReactionButton("stars");
            if (motionEvent.getAction() == 1) {
                tap(motionEvent.getX(), motionEvent.getY(), true, true);
            }
            if (reactionButton2 != null) {
                reactionButton2.bounce.setPressed(false);
            }
            this.pressed = false;
            AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
        }
        return this.pressed;
    }

    public void playEffect() {
        while (this.effects.size() > 4) {
            ((RLottieDrawable) this.effects.remove(0)).recycle(true);
        }
        int[] iArr = this.effectAssets;
        int i = iArr[Utilities.fastRandom.nextInt(iArr.length)];
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.dp(70.0f), AndroidUtilities.dp(70.0f));
        rLottieDrawable.setMasterParent(this);
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        rLottieDrawable.setAutoRepeat(0);
        rLottieDrawable.start();
        this.effects.add(rLottieDrawable);
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessageCell(BaseCell baseCell) {
        BaseCell baseCell2;
        BaseCell baseCell3 = this.cell;
        if (baseCell3 == baseCell) {
            return;
        }
        if (!(baseCell3 instanceof ChatMessageCell)) {
            if (baseCell3 instanceof ChatActionCell) {
                ((ChatActionCell) baseCell3).setScrimReaction(null);
                ((ChatActionCell) this.cell).setInvalidateListener(null);
            }
            this.cell = baseCell;
            this.messageId = getMessageObject() != null ? 0 : getMessageObject().getId();
            baseCell2 = this.cell;
            if (!(baseCell2 instanceof ChatMessageCell)) {
                baseCell2.invalidate();
                ((ChatMessageCell) this.cell).setInvalidateListener(new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            } else if (baseCell2 instanceof ChatActionCell) {
                baseCell2.invalidate();
                ((ChatActionCell) this.cell).setInvalidateListener(new Runnable() { // from class: org.telegram.ui.Stars.StarReactionsOverlay$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            }
            invalidate();
        }
        ((ChatMessageCell) baseCell3).setScrimReaction(null);
        ((ChatMessageCell) this.cell).setInvalidateListener(null);
        this.cell.invalidate();
        this.cell = baseCell;
        this.messageId = getMessageObject() != null ? 0 : getMessageObject().getId();
        baseCell2 = this.cell;
        if (!(baseCell2 instanceof ChatMessageCell)) {
        }
        invalidate();
    }

    public void show() {
        this.hidden = false;
        focusTo(1.0f, null);
    }

    public void tap(float f, float f2, boolean z, boolean z2) {
        if (this.cell == null || this.hidden) {
            return;
        }
        MessageObject messageObject = getMessageObject();
        ReactionsLayoutInBubble reactionsLayoutInBubble = getReactionsLayoutInBubble();
        if (messageObject == null || reactionsLayoutInBubble == null) {
            return;
        }
        StarsController starsController = StarsController.getInstance(this.chatActivity.getCurrentAccount());
        playEffect();
        ReactionsLayoutInBubble.ReactionButton reactionButton = reactionsLayoutInBubble.getReactionButton("stars");
        if (reactionButton != null) {
            reactionButton.startAnimation();
        }
        if (z) {
            try {
                performHapticFeedback(3, 1);
            } catch (Exception unused) {
            }
            StarsController.getInstance(this.chatActivity.getCurrentAccount()).sendPaidReaction(messageObject, this.chatActivity, 1L, true, false, null);
        }
        this.counter.cancelAnimation();
        this.counter.setText("+" + starsController.getPendingPaidReactions(messageObject));
        this.counterShown = true;
        AndroidUtilities.cancelRunOnUIThread(this.hideCounterRunnable);
        AndroidUtilities.runOnUIThread(this.hideCounterRunnable, 1500L);
        if (z2) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.lastRippleTime < 100) {
                this.accumulatedRippleIntensity += 0.5f;
                return;
            }
            this.accumulatedRippleIntensity *= Utilities.clamp(1.0f - ((r0 - 100) / 200.0f), 1.0f, BitmapDescriptorFactory.HUE_RED);
            if (getMeasuredWidth() != 0 || this.chatActivity.getLayoutContainer() == null) {
                getLocationInWindow(this.pos2);
            } else {
                this.chatActivity.getLayoutContainer().getLocationInWindow(this.pos2);
            }
            int[] iArr = this.pos2;
            LaunchActivity.makeRipple(iArr[0] + f, iArr[1] + f2, Utilities.clamp(this.accumulatedRippleIntensity, 0.9f, 0.3f));
            this.accumulatedRippleIntensity = BitmapDescriptorFactory.HUE_RED;
            this.lastRippleTime = jCurrentTimeMillis;
        }
    }
}
