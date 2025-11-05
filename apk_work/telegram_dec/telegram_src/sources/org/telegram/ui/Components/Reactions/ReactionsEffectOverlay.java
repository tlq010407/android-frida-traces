package org.telegram.ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.SelectAnimatedEmojiDialog;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ReactionsEffectOverlay {
    public static ReactionsEffectOverlay currentOverlay;
    public static ReactionsEffectOverlay currentShortOverlay;
    private static long lastHapticTime;
    private static int uniqPrefix;
    float animateInProgress;
    float animateOutProgress;
    private final int animationType;
    private View cell;
    private final FrameLayout container;
    private final int currentAccount;
    private ViewGroup decorView;
    private float dismissProgress;
    private boolean dismissed;
    private final AnimationView effectImageView;
    private final AnimationView emojiImageView;
    private final AnimationView emojiStaticImageView;
    private final long groupId;
    private ReactionsContainerLayout.ReactionHolderView holderView;
    boolean isFinished;
    public boolean isStories;
    private float lastDrawnToX;
    private float lastDrawnToY;
    private final int messageId;
    private ReactionsEffectOverlay nextReactionOverlay;
    private final ReactionsLayoutInBubble.VisibleReaction reaction;
    public long startTime;
    public boolean started;
    private boolean useWindow;
    private boolean wasScrolled;
    private WindowManager windowManager;
    public FrameLayout windowView;
    int[] loc = new int[2];
    private SelectAnimatedEmojiDialog.ImageViewEmoji holderView2 = null;
    ArrayList avatars = new ArrayList();

    /* renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1, reason: invalid class name */
    class AnonymousClass1 extends FrameLayout {
        final /* synthetic */ int val$animationType;
        final /* synthetic */ View val$cell;
        final /* synthetic */ ChatActivity val$chatActivity;
        final /* synthetic */ int val$emojiSize;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ boolean val$fromHolder;
        final /* synthetic */ float val$fromScale;
        final /* synthetic */ float val$fromX;
        final /* synthetic */ float val$fromY;
        final /* synthetic */ boolean val$isStories;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ ReactionsLayoutInBubble.VisibleReaction val$visibleReaction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, BaseFragment baseFragment, View view, boolean z, MessageObject messageObject, ChatActivity chatActivity, int i, int i2, boolean z2, float f, float f2, float f3, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            super(context);
            this.val$fragment = baseFragment;
            this.val$cell = view;
            this.val$isStories = z;
            this.val$messageObject = messageObject;
            this.val$chatActivity = chatActivity;
            this.val$emojiSize = i;
            this.val$animationType = i2;
            this.val$fromHolder = z2;
            this.val$fromScale = f;
            this.val$fromX = f2;
            this.val$fromY = f3;
            this.val$visibleReaction = visibleReaction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$1() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x022d  */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0230  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0273  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x028d  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x030a  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0314  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x031c  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x0337  */
        /* JADX WARN: Removed duplicated region for block: B:171:0x03d7  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x03df  */
        /* JADX WARN: Removed duplicated region for block: B:224:0x04ea  */
        /* JADX WARN: Removed duplicated region for block: B:229:0x050d  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x0564  */
        /* JADX WARN: Removed duplicated region for block: B:237:0x0568  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x019c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01c9  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01d9  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01f7  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0202  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void dispatchDraw(Canvas canvas) {
            float f;
            int iDp;
            float measuredWidth;
            float measuredHeight;
            BaseFragment baseFragment;
            float measuredWidth2;
            float interpolation;
            float interpolation2;
            int i;
            float f2;
            float f3;
            float f4;
            float f5;
            ReactionsLayoutInBubble reactionsLayoutInBubble;
            int i2;
            int i3;
            float f6;
            ReactionsLayoutInBubble.ReactionButton reactionButton;
            ChatActivity chatActivity;
            View view;
            if (ReactionsEffectOverlay.this.dismissed) {
                if (ReactionsEffectOverlay.this.dismissProgress != 1.0f) {
                    ReactionsEffectOverlay.access$216(ReactionsEffectOverlay.this, 0.10666667f);
                    if (ReactionsEffectOverlay.this.dismissProgress > 1.0f) {
                        ReactionsEffectOverlay.this.dismissProgress = 1.0f;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$dispatchDraw$0();
                            }
                        });
                    }
                }
                if (ReactionsEffectOverlay.this.dismissProgress != 1.0f) {
                    setAlpha(1.0f - ReactionsEffectOverlay.this.dismissProgress);
                    super.dispatchDraw(canvas);
                }
                invalidate();
                return;
            }
            ReactionsEffectOverlay reactionsEffectOverlay = ReactionsEffectOverlay.this;
            if (!reactionsEffectOverlay.started) {
                invalidate();
                return;
            }
            if (reactionsEffectOverlay.holderView != null) {
                ReactionsEffectOverlay.this.holderView.enterImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                ReactionsEffectOverlay.this.holderView.pressedBackupImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            BaseFragment baseFragment2 = this.val$fragment;
            View viewFindCell = baseFragment2 instanceof ChatActivity ? ((ChatActivity) baseFragment2).findCell(ReactionsEffectOverlay.this.messageId, false) : this.val$cell;
            if (this.val$isStories) {
                f = SharedConfig.deviceIsHigh() ? 120.0f : 50.0f;
            } else {
                MessageObject messageObject = this.val$messageObject;
                if (messageObject != null && messageObject.shouldDrawReactionsInLayout()) {
                    iDp = AndroidUtilities.dp(20.0f);
                    float f7 = iDp;
                    if (viewFindCell == null) {
                        viewFindCell.getLocationInWindow(ReactionsEffectOverlay.this.loc);
                        ReactionsEffectOverlay reactionsEffectOverlay2 = ReactionsEffectOverlay.this;
                        int[] iArr = reactionsEffectOverlay2.loc;
                        measuredWidth = iArr[0];
                        measuredHeight = iArr[1];
                        if (viewFindCell instanceof ChatMessageCell) {
                            ChatMessageCell chatMessageCell = (ChatMessageCell) viewFindCell;
                            reactionButton = chatMessageCell.getReactionButton(reactionsEffectOverlay2.reaction);
                            boolean z = chatMessageCell.drawPinnedBottom;
                            view = chatMessageCell;
                            if (z) {
                                boolean zShouldDrawTimeOnMedia = chatMessageCell.shouldDrawTimeOnMedia();
                                view = chatMessageCell;
                                if (!zShouldDrawTimeOnMedia) {
                                    measuredHeight += AndroidUtilities.dp(2.0f);
                                    view = chatMessageCell;
                                }
                            }
                        } else if (viewFindCell instanceof ChatActionCell) {
                            reactionButton = ((ChatActionCell) viewFindCell).getReactionButton(reactionsEffectOverlay2.reaction);
                            view = viewFindCell;
                        } else {
                            reactionButton = null;
                            if (reactionButton != null) {
                                Rect rect = reactionButton.drawingImageRect;
                                measuredWidth += rect.left;
                                measuredHeight += rect.top;
                            }
                            chatActivity = this.val$chatActivity;
                            if (chatActivity != null) {
                                measuredHeight += chatActivity.drawingChatListViewYoffset;
                            }
                            ReactionsEffectOverlay.this.lastDrawnToX = measuredWidth;
                            ReactionsEffectOverlay.this.lastDrawnToY = measuredHeight;
                        }
                        measuredHeight += view.getPaddingTop();
                        if (reactionButton != null) {
                        }
                        chatActivity = this.val$chatActivity;
                        if (chatActivity != null) {
                        }
                        ReactionsEffectOverlay.this.lastDrawnToX = measuredWidth;
                        ReactionsEffectOverlay.this.lastDrawnToY = measuredHeight;
                    } else if (this.val$isStories) {
                        float f8 = f7 / 2.0f;
                        measuredWidth = (getMeasuredWidth() / 2.0f) - f8;
                        measuredHeight = (getMeasuredHeight() / 2.0f) - f8;
                    } else {
                        measuredWidth = ReactionsEffectOverlay.this.lastDrawnToX;
                        measuredHeight = ReactionsEffectOverlay.this.lastDrawnToY;
                    }
                    baseFragment = this.val$fragment;
                    if (baseFragment == null && baseFragment.getParentActivity() != null && this.val$fragment.getFragmentView() != null && this.val$fragment.getFragmentView().getParent() != null && this.val$fragment.getFragmentView().getVisibility() == 0 && this.val$fragment.getFragmentView() != null) {
                        this.val$fragment.getFragmentView().getLocationOnScreen(ReactionsEffectOverlay.this.loc);
                        setAlpha(((View) this.val$fragment.getFragmentView().getParent()).getAlpha());
                    } else if (!this.val$isStories) {
                        return;
                    }
                    float f9 = (this.val$emojiSize - f7) / 2.0f;
                    measuredWidth2 = measuredWidth - f9;
                    float f10 = measuredHeight - f9;
                    if (this.val$isStories && this.val$animationType == 0) {
                        measuredWidth2 += AndroidUtilities.dp(40.0f);
                    }
                    if (this.val$animationType != 1 && !this.val$isStories) {
                        f6 = ReactionsEffectOverlay.this.loc[0];
                        if (measuredWidth2 < f6) {
                            measuredWidth2 = f6;
                        }
                        if (this.val$emojiSize + measuredWidth2 > r15 + getMeasuredWidth()) {
                            measuredWidth2 = (ReactionsEffectOverlay.this.loc[0] + getMeasuredWidth()) - this.val$emojiSize;
                        }
                    }
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                    float interpolation3 = cubicBezierInterpolator.getInterpolation(ReactionsEffectOverlay.this.animateOutProgress);
                    if (this.val$animationType != 2) {
                        interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(interpolation3);
                        interpolation2 = cubicBezierInterpolator.getInterpolation(interpolation3);
                    } else if (this.val$fromHolder) {
                        interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(ReactionsEffectOverlay.this.animateInProgress);
                        interpolation2 = cubicBezierInterpolator.getInterpolation(ReactionsEffectOverlay.this.animateInProgress);
                    } else {
                        interpolation = ReactionsEffectOverlay.this.animateInProgress;
                        interpolation2 = interpolation;
                    }
                    float f11 = 1.0f - interpolation;
                    float f12 = (this.val$fromScale * f11) + interpolation;
                    float f13 = f7 / this.val$emojiSize;
                    if (this.val$animationType != 1) {
                        f12 = 1.0f;
                    } else {
                        measuredWidth2 = (measuredWidth2 * interpolation) + (this.val$fromX * f11);
                        f10 = (f10 * interpolation2) + (this.val$fromY * (1.0f - interpolation2));
                    }
                    ReactionsEffectOverlay.this.effectImageView.setTranslationX(measuredWidth2);
                    ReactionsEffectOverlay.this.effectImageView.setTranslationY(f10);
                    float f14 = 1.0f - interpolation3;
                    ReactionsEffectOverlay.this.effectImageView.setAlpha(f14);
                    ReactionsEffectOverlay.this.effectImageView.setScaleX(f12);
                    ReactionsEffectOverlay.this.effectImageView.setScaleY(f12);
                    i = this.val$animationType;
                    if (i == 2) {
                        if (interpolation3 != BitmapDescriptorFactory.HUE_RED) {
                            f12 = (f12 * f14) + (f13 * interpolation3);
                            measuredWidth2 = (measuredWidth2 * f14) + (measuredWidth * interpolation3);
                            f2 = f10 * f14;
                            f3 = measuredHeight * interpolation3;
                        }
                        if (i != 1) {
                            if (this.val$isStories) {
                                ReactionsEffectOverlay.this.emojiStaticImageView.setAlpha(1.0f);
                            } else {
                                ReactionsEffectOverlay.this.emojiStaticImageView.setAlpha(interpolation3 > 0.7f ? (interpolation3 - 0.7f) / 0.3f : BitmapDescriptorFactory.HUE_RED);
                            }
                        }
                        if (this.val$animationType == 0 && this.val$isStories) {
                            ReactionsEffectOverlay.this.emojiImageView.setAlpha(f14);
                        }
                        ReactionsEffectOverlay.this.container.setTranslationX(measuredWidth2);
                        ReactionsEffectOverlay.this.container.setTranslationY(f10);
                        ReactionsEffectOverlay.this.container.setScaleX(f12);
                        ReactionsEffectOverlay.this.container.setScaleY(f12);
                        super.dispatchDraw(canvas);
                        if (this.val$animationType == 1 || ReactionsEffectOverlay.this.emojiImageView.wasPlaying) {
                            ReactionsEffectOverlay reactionsEffectOverlay3 = ReactionsEffectOverlay.this;
                            f4 = reactionsEffectOverlay3.animateInProgress;
                            if (f4 != 1.0f) {
                                reactionsEffectOverlay3.animateInProgress = this.val$fromHolder ? f4 + 0.045714285f : f4 + 0.07272727f;
                                if (reactionsEffectOverlay3.animateInProgress > 1.0f) {
                                    reactionsEffectOverlay3.animateInProgress = 1.0f;
                                }
                            }
                        }
                        float f15 = 16.0f;
                        if (this.val$animationType == 2 || ((ReactionsEffectOverlay.this.wasScrolled && this.val$animationType == 0) || ((this.val$animationType != 1 && ReactionsEffectOverlay.this.emojiImageView.wasPlaying && ReactionsEffectOverlay.this.emojiImageView.getImageReceiver().getLottieAnimation() != null && !ReactionsEffectOverlay.this.emojiImageView.getImageReceiver().getLottieAnimation().isRunning()) || ((this.val$visibleReaction.documentId != 0 && System.currentTimeMillis() - ReactionsEffectOverlay.this.startTime > 2000) || ((this.val$animationType == 1 && ReactionsEffectOverlay.this.effectImageView.wasPlaying && ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation() != null && !ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().isRunning()) || (this.val$visibleReaction.documentId != 0 && System.currentTimeMillis() - ReactionsEffectOverlay.this.startTime > 2000)))))) {
                            ReactionsEffectOverlay reactionsEffectOverlay4 = ReactionsEffectOverlay.this;
                            f5 = reactionsEffectOverlay4.animateOutProgress;
                            if (f5 != 1.0f) {
                                int i4 = this.val$animationType;
                                if (i4 == 1) {
                                    reactionsEffectOverlay4.animateOutProgress = 1.0f;
                                } else {
                                    reactionsEffectOverlay4.animateOutProgress = f5 + (16.0f / (i4 == 2 ? 350.0f : 220.0f));
                                }
                                if (reactionsEffectOverlay4.animateOutProgress > 0.7f) {
                                    if (!this.val$isStories || i4 != 2) {
                                        ReactionsEffectOverlay.startShortAnimation();
                                    } else if (!reactionsEffectOverlay4.isFinished) {
                                        reactionsEffectOverlay4.isFinished = true;
                                        try {
                                            performHapticFeedback(0);
                                        } catch (Exception unused) {
                                        }
                                        ((ViewGroup) getParent()).addView(ReactionsEffectOverlay.this.nextReactionOverlay.windowView);
                                        ReactionsEffectOverlay.this.nextReactionOverlay.isStories = true;
                                        ReactionsEffectOverlay.this.nextReactionOverlay.started = true;
                                        ReactionsEffectOverlay.this.nextReactionOverlay.startTime = System.currentTimeMillis();
                                        ReactionsEffectOverlay.this.nextReactionOverlay.windowView.setTag(R.id.parent_tag, 1);
                                        animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setStartDelay(1000L).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay.1.1
                                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                            public void onAnimationEnd(Animator animator) {
                                                ReactionsEffectOverlay.this.removeCurrentView();
                                            }
                                        });
                                    }
                                }
                                ReactionsEffectOverlay reactionsEffectOverlay5 = ReactionsEffectOverlay.this;
                                if (reactionsEffectOverlay5.animateOutProgress >= 1.0f) {
                                    int i5 = this.val$animationType;
                                    if (i5 == 0 || i5 == 2) {
                                        View view2 = this.val$cell;
                                        if (view2 instanceof ChatMessageCell) {
                                            reactionsLayoutInBubble = ((ChatMessageCell) view2).reactionsLayoutInBubble;
                                        } else if (view2 instanceof ChatActionCell) {
                                            reactionsLayoutInBubble = ((ChatActionCell) view2).reactionsLayoutInBubble;
                                        }
                                        reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay5.reaction);
                                    }
                                    ReactionsEffectOverlay.this.animateOutProgress = 1.0f;
                                    if (this.val$animationType == 1) {
                                        ReactionsEffectOverlay.currentShortOverlay = null;
                                    } else {
                                        ReactionsEffectOverlay.currentOverlay = null;
                                    }
                                    View view3 = this.val$cell;
                                    if (view3 != null) {
                                        view3.invalidate();
                                        View view4 = this.val$cell;
                                        if ((view4 instanceof ChatMessageCell) && ((ChatMessageCell) view4).getCurrentMessagesGroup() != null && this.val$cell.getParent() != null) {
                                            ((View) this.val$cell.getParent()).invalidate();
                                        }
                                    }
                                    if (!this.val$isStories || this.val$animationType != 2) {
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1$$ExternalSyntheticLambda1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.lambda$dispatchDraw$1();
                                            }
                                        });
                                    }
                                }
                            }
                        }
                        if (!ReactionsEffectOverlay.this.avatars.isEmpty() && ReactionsEffectOverlay.this.effectImageView.wasPlaying) {
                            RLottieDrawable lottieAnimation = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation();
                            i2 = 0;
                            while (i2 < ReactionsEffectOverlay.this.avatars.size()) {
                                AvatarParticle avatarParticle = (AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i2);
                                float f16 = avatarParticle.progress;
                                if (lottieAnimation == null || !lottieAnimation.isRunning()) {
                                    float f17 = avatarParticle.outProgress;
                                    if (f17 != 1.0f) {
                                        float f18 = f17 + 0.10666667f;
                                        avatarParticle.outProgress = f18;
                                        if (f18 > 1.0f) {
                                            avatarParticle.outProgress = 1.0f;
                                            ReactionsEffectOverlay.this.avatars.remove(i2);
                                            i2--;
                                            i3 = 1;
                                        }
                                    }
                                    float f19 = f16 < 0.5f ? f16 / 0.5f : 1.0f - ((f16 - 0.5f) / 0.5f);
                                    float f20 = 1.0f - f16;
                                    float f21 = (avatarParticle.fromX * f20) + (avatarParticle.toX * f16);
                                    float f22 = ((avatarParticle.fromY * f20) + (avatarParticle.toY * f16)) - (avatarParticle.jumpY * f19);
                                    float f23 = avatarParticle.randomScale * f16 * (1.0f - avatarParticle.outProgress);
                                    float x = ReactionsEffectOverlay.this.effectImageView.getX() + (ReactionsEffectOverlay.this.effectImageView.getWidth() * ReactionsEffectOverlay.this.effectImageView.getScaleX() * f21);
                                    float y = ReactionsEffectOverlay.this.effectImageView.getY() + (ReactionsEffectOverlay.this.effectImageView.getHeight() * ReactionsEffectOverlay.this.effectImageView.getScaleY() * f22);
                                    int iDp2 = AndroidUtilities.dp(f15);
                                    float f24 = iDp2;
                                    float f25 = f24 / 2.0f;
                                    ((AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i2)).imageReceiver.setImageCoords(x - f25, y - f25, f24, f24);
                                    ((AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i2)).imageReceiver.setRoundRadius(iDp2 >> 1);
                                    canvas.save();
                                    canvas.translate(BitmapDescriptorFactory.HUE_RED, avatarParticle.globalTranslationY);
                                    canvas.scale(f23, f23, x, y);
                                    canvas.rotate(avatarParticle.currentRotation, x, y);
                                    ((AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i2)).imageReceiver.draw(canvas);
                                    canvas.restore();
                                    float f26 = avatarParticle.progress;
                                    if (f26 < 1.0f) {
                                        float f27 = f26 + 0.045714285f;
                                        avatarParticle.progress = f27;
                                        if (f27 > 1.0f) {
                                            avatarParticle.progress = 1.0f;
                                        }
                                    }
                                    if (f16 >= 1.0f) {
                                        avatarParticle.globalTranslationY += (AndroidUtilities.dp(20.0f) * 16.0f) / 500.0f;
                                    }
                                    if (avatarParticle.incrementRotation) {
                                        float f28 = avatarParticle.currentRotation;
                                        float f29 = avatarParticle.randomRotation;
                                        float f30 = f28 + (f29 / 250.0f);
                                        avatarParticle.currentRotation = f30;
                                        if (f30 > f29) {
                                            avatarParticle.incrementRotation = false;
                                        }
                                    } else {
                                        float f31 = avatarParticle.currentRotation;
                                        float f32 = avatarParticle.randomRotation;
                                        float f33 = f31 - (f32 / 250.0f);
                                        avatarParticle.currentRotation = f33;
                                        if (f33 < (-f32)) {
                                            i3 = 1;
                                            avatarParticle.incrementRotation = true;
                                        }
                                    }
                                    i3 = 1;
                                } else {
                                    float duration = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getDuration();
                                    if (((int) (duration - ((ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getCurrentFrame() / ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getFramesCount()) * duration))) < avatarParticle.leftTime) {
                                    }
                                }
                                i2 += i3;
                                f15 = 16.0f;
                            }
                        }
                        invalidate();
                    }
                    f12 = (this.val$fromScale * f11) + (f13 * interpolation);
                    measuredWidth2 = (this.val$fromX * f11) + (measuredWidth * interpolation);
                    f2 = this.val$fromY * (1.0f - interpolation2);
                    f3 = measuredHeight * interpolation2;
                    f10 = f2 + f3;
                    if (i != 1) {
                    }
                    if (this.val$animationType == 0) {
                        ReactionsEffectOverlay.this.emojiImageView.setAlpha(f14);
                    }
                    ReactionsEffectOverlay.this.container.setTranslationX(measuredWidth2);
                    ReactionsEffectOverlay.this.container.setTranslationY(f10);
                    ReactionsEffectOverlay.this.container.setScaleX(f12);
                    ReactionsEffectOverlay.this.container.setScaleY(f12);
                    super.dispatchDraw(canvas);
                    if (this.val$animationType == 1) {
                        ReactionsEffectOverlay reactionsEffectOverlay32 = ReactionsEffectOverlay.this;
                        f4 = reactionsEffectOverlay32.animateInProgress;
                        if (f4 != 1.0f) {
                        }
                    }
                    float f152 = 16.0f;
                    if (this.val$animationType == 2) {
                        ReactionsEffectOverlay reactionsEffectOverlay42 = ReactionsEffectOverlay.this;
                        f5 = reactionsEffectOverlay42.animateOutProgress;
                        if (f5 != 1.0f) {
                        }
                    }
                    if (!ReactionsEffectOverlay.this.avatars.isEmpty()) {
                        RLottieDrawable lottieAnimation2 = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation();
                        i2 = 0;
                        while (i2 < ReactionsEffectOverlay.this.avatars.size()) {
                        }
                    }
                    invalidate();
                }
                f = 14.0f;
            }
            iDp = AndroidUtilities.dp(f);
            float f72 = iDp;
            if (viewFindCell == null) {
            }
            baseFragment = this.val$fragment;
            if (baseFragment == null) {
                if (!this.val$isStories) {
                }
            }
            float f92 = (this.val$emojiSize - f72) / 2.0f;
            measuredWidth2 = measuredWidth - f92;
            float f102 = measuredHeight - f92;
            if (this.val$isStories) {
                measuredWidth2 += AndroidUtilities.dp(40.0f);
            }
            if (this.val$animationType != 1) {
                f6 = ReactionsEffectOverlay.this.loc[0];
                if (measuredWidth2 < f6) {
                }
                if (this.val$emojiSize + measuredWidth2 > r15 + getMeasuredWidth()) {
                }
            }
            CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.DEFAULT;
            float interpolation32 = cubicBezierInterpolator2.getInterpolation(ReactionsEffectOverlay.this.animateOutProgress);
            if (this.val$animationType != 2) {
            }
            float f112 = 1.0f - interpolation;
            float f122 = (this.val$fromScale * f112) + interpolation;
            float f132 = f72 / this.val$emojiSize;
            if (this.val$animationType != 1) {
            }
            ReactionsEffectOverlay.this.effectImageView.setTranslationX(measuredWidth2);
            ReactionsEffectOverlay.this.effectImageView.setTranslationY(f102);
            float f142 = 1.0f - interpolation32;
            ReactionsEffectOverlay.this.effectImageView.setAlpha(f142);
            ReactionsEffectOverlay.this.effectImageView.setScaleX(f122);
            ReactionsEffectOverlay.this.effectImageView.setScaleY(f122);
            i = this.val$animationType;
            if (i == 2) {
            }
            f102 = f2 + f3;
            if (i != 1) {
            }
            if (this.val$animationType == 0) {
            }
            ReactionsEffectOverlay.this.container.setTranslationX(measuredWidth2);
            ReactionsEffectOverlay.this.container.setTranslationY(f102);
            ReactionsEffectOverlay.this.container.setScaleX(f122);
            ReactionsEffectOverlay.this.container.setScaleY(f122);
            super.dispatchDraw(canvas);
            if (this.val$animationType == 1) {
            }
            float f1522 = 16.0f;
            if (this.val$animationType == 2) {
            }
            if (!ReactionsEffectOverlay.this.avatars.isEmpty()) {
            }
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ((AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i)).imageReceiver.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ((AvatarParticle) ReactionsEffectOverlay.this.avatars.get(i)).imageReceiver.onDetachedFromWindow();
            }
        }
    }

    private class AnimationView extends BackupImageView {
        AnimatedEmojiDrawable animatedEmojiDrawable;
        boolean attached;
        AnimatedEmojiEffect emojiEffect;
        boolean wasPlaying;

        public AnimationView(Context context) {
            super(context);
            getImageReceiver().setFileLoadingPriority(3);
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.setView(this);
            }
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.removeView(this);
            }
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.animatedEmojiDrawable.setAlpha(255);
                this.animatedEmojiDrawable.draw(canvas);
            } else {
                AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
                if (animatedEmojiEffect == null) {
                    if (getImageReceiver().getLottieAnimation() != null && getImageReceiver().getLottieAnimation().isRunning()) {
                        this.wasPlaying = true;
                    }
                    if (!this.wasPlaying && getImageReceiver().getLottieAnimation() != null && !getImageReceiver().getLottieAnimation().isRunning()) {
                        if (ReactionsEffectOverlay.this.animationType != 2 || ReactionsEffectOverlay.this.isStories) {
                            getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                            getImageReceiver().getLottieAnimation().start();
                        } else {
                            getImageReceiver().getLottieAnimation().setCurrentFrame(getImageReceiver().getLottieAnimation().getFramesCount() - 1, false);
                        }
                    }
                    super.onDraw(canvas);
                    return;
                }
                animatedEmojiEffect.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.emojiEffect.draw(canvas);
            }
            this.wasPlaying = true;
        }

        public void setAnimatedEmojiEffect(AnimatedEmojiEffect animatedEmojiEffect) {
            this.emojiEffect = animatedEmojiEffect;
        }

        public void setAnimatedReactionDrawable(AnimatedEmojiDrawable animatedEmojiDrawable) {
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            this.animatedEmojiDrawable = animatedEmojiDrawable;
            if (!this.attached || animatedEmojiDrawable == null) {
                return;
            }
            animatedEmojiDrawable.addView(this);
        }
    }

    private class AvatarParticle {
        float currentRotation;
        float fromX;
        float fromY;
        float globalTranslationY;
        ImageReceiver imageReceiver;
        boolean incrementRotation;
        float jumpY;
        public int leftTime;
        float outProgress;
        float progress;
        float randomRotation;
        float randomScale;
        float toX;
        float toY;

        private AvatarParticle() {
        }

        /* synthetic */ AvatarParticle(ReactionsEffectOverlay reactionsEffectOverlay, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0699  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x06fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d7  */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v45, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v63 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ReactionsEffectOverlay(Context context, BaseFragment baseFragment, ReactionsContainerLayout reactionsContainerLayout, View view, View view2, float f, float f2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i, int i2, boolean z) {
        MessageObject messageObject;
        MessageObject messageObject2;
        ReactionsLayoutInBubble.ReactionButton reactionButton;
        ReactionsLayoutInBubble.ReactionButton reactionButton2;
        long j;
        ReactionsLayoutInBubble.ReactionButton reactionButton3;
        MessageObject messageObject3;
        View view3;
        MessageObject messageObject4;
        float imageX;
        float imageY;
        float f3;
        float f4;
        float imageHeight;
        int i3;
        int iRound;
        int iSizeForBigReaction;
        int i4;
        int i5;
        int i6;
        FrameLayout frameLayout;
        AnimationView animationView;
        AnimationView animationView2;
        TLRPC.TL_availableReaction tL_availableReaction;
        int i7;
        int i8;
        int i9;
        int i10;
        int color;
        ?? r3;
        int i11;
        int i12;
        int i13;
        ImageLocation forDocument;
        StringBuilder sb;
        ?? r14;
        String filterForAroundAnimation;
        Random random;
        ArrayList arrayList;
        TLRPC.TL_messageReactions tL_messageReactions;
        this.holderView = null;
        this.isStories = z;
        boolean z2 = view instanceof ChatMessageCell;
        if (z2) {
            messageObject2 = ((ChatMessageCell) view).getMessageObject();
            this.messageId = messageObject2.getId();
            this.groupId = messageObject2.getGroupId();
        } else {
            if (!(view instanceof ChatActionCell)) {
                this.messageId = 0;
                this.groupId = 0L;
                messageObject = null;
                this.reaction = visibleReaction;
                this.animationType = i2;
                this.currentAccount = i;
                this.cell = view;
                if (!z2) {
                    reactionButton2 = ((ChatMessageCell) view).getReactionButton(visibleReaction);
                } else {
                    if (!(view instanceof ChatActionCell)) {
                        reactionButton = null;
                        if (z && i2 == 2) {
                            j = 0;
                            reactionButton3 = reactionButton;
                            messageObject3 = messageObject;
                            view3 = view2;
                            ReactionsEffectOverlay reactionsEffectOverlay = new ReactionsEffectOverlay(context, baseFragment, reactionsContainerLayout, view, view2, f, f2, visibleReaction, i, 1, true);
                            this.nextReactionOverlay = reactionsEffectOverlay;
                            currentShortOverlay = reactionsEffectOverlay;
                        } else {
                            j = 0;
                            reactionButton3 = reactionButton;
                            messageObject3 = messageObject;
                            view3 = view2;
                        }
                        ChatActivity chatActivity = baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null;
                        if (reactionsContainerLayout != null) {
                            int i14 = 0;
                            while (true) {
                                if (i14 < reactionsContainerLayout.recyclerListView.getChildCount()) {
                                    if ((reactionsContainerLayout.recyclerListView.getChildAt(i14) instanceof ReactionsContainerLayout.ReactionHolderView) && ((ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout.recyclerListView.getChildAt(i14)).currentReaction.equals(this.reaction)) {
                                        this.holderView = (ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout.recyclerListView.getChildAt(i14);
                                        break;
                                    }
                                    i14++;
                                } else {
                                    break;
                                }
                            }
                        }
                        float f5 = 0.8f;
                        if (i2 == 1) {
                            Random random2 = new Random();
                            messageObject4 = messageObject3;
                            ArrayList arrayList2 = (messageObject4 == null || (tL_messageReactions = messageObject4.messageOwner.reactions) == null) ? null : tL_messageReactions.recent_reactions;
                            if (arrayList2 != null && chatActivity != null && chatActivity.getDialogId() < j) {
                                int i15 = 0;
                                while (i15 < arrayList2.size()) {
                                    if (this.reaction.equals(((TLRPC.MessagePeerReaction) arrayList2.get(i15)).reaction) && ((TLRPC.MessagePeerReaction) arrayList2.get(i15)).unread) {
                                        AvatarDrawable avatarDrawable = new AvatarDrawable();
                                        ImageReceiver imageReceiver = new ImageReceiver();
                                        long peerId = MessageObject.getPeerId(((TLRPC.MessagePeerReaction) arrayList2.get(i15)).peer_id);
                                        if (peerId < j) {
                                            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerId));
                                            if (chat != null) {
                                                avatarDrawable.setInfo(i, chat);
                                                imageReceiver.setForUserOrChat(chat, avatarDrawable);
                                            }
                                            random = random2;
                                            arrayList = arrayList2;
                                        } else {
                                            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerId));
                                            if (user != null) {
                                                avatarDrawable.setInfo(i, user);
                                                imageReceiver.setForUserOrChat(user, avatarDrawable);
                                            }
                                            random = random2;
                                            arrayList = arrayList2;
                                        }
                                        AvatarParticle avatarParticle = new AvatarParticle(this, null);
                                        avatarParticle.imageReceiver = imageReceiver;
                                        avatarParticle.fromX = 0.5f;
                                        avatarParticle.fromY = 0.5f;
                                        float f6 = 100.0f;
                                        avatarParticle.jumpY = ((Math.abs(random2.nextInt() % 100) / 100.0f) * 0.1f) + 0.3f;
                                        avatarParticle.randomScale = ((Math.abs(random2.nextInt() % 100) / 100.0f) * 0.4f) + f5;
                                        avatarParticle.randomRotation = (Math.abs(random2.nextInt() % 100) * 60) / 100.0f;
                                        avatarParticle.leftTime = (int) (((Math.abs(random2.nextInt() % 100) / 100.0f) * 200.0f) + 400.0f);
                                        if (this.avatars.isEmpty()) {
                                            avatarParticle.toX = ((Math.abs(random2.nextInt() % 100) * 0.6f) / 100.0f) + 0.2f;
                                            avatarParticle.toY = (Math.abs(random2.nextInt() % 100) * 0.4f) / 100.0f;
                                            random = random2;
                                            arrayList = arrayList2;
                                        } else {
                                            float f7 = BitmapDescriptorFactory.HUE_RED;
                                            int i16 = 0;
                                            float f8 = BitmapDescriptorFactory.HUE_RED;
                                            float f9 = BitmapDescriptorFactory.HUE_RED;
                                            while (i16 < 10) {
                                                float fAbs = ((Math.abs(random2.nextInt() % 100) * 0.6f) / f6) + 0.2f;
                                                float fAbs2 = ((Math.abs(random2.nextInt() % 100) * 0.4f) / 100.0f) + 0.2f;
                                                float f10 = 2.14748365E9f;
                                                Random random3 = random2;
                                                ArrayList arrayList3 = arrayList2;
                                                int i17 = 0;
                                                while (i17 < this.avatars.size()) {
                                                    float f11 = ((AvatarParticle) this.avatars.get(i17)).toX - fAbs;
                                                    float f12 = fAbs;
                                                    float f13 = ((AvatarParticle) this.avatars.get(i17)).toY - fAbs2;
                                                    float f14 = (f11 * f11) + (f13 * f13);
                                                    if (f14 < f10) {
                                                        f10 = f14;
                                                    }
                                                    i17++;
                                                    fAbs = f12;
                                                }
                                                float f15 = fAbs;
                                                if (f10 > f9) {
                                                    f7 = fAbs2;
                                                    f9 = f10;
                                                    f8 = f15;
                                                }
                                                i16++;
                                                random2 = random3;
                                                arrayList2 = arrayList3;
                                                f6 = 100.0f;
                                            }
                                            random = random2;
                                            arrayList = arrayList2;
                                            avatarParticle.toX = f8;
                                            avatarParticle.toY = f7;
                                        }
                                        this.avatars.add(avatarParticle);
                                    } else {
                                        random = random2;
                                        arrayList = arrayList2;
                                    }
                                    i15++;
                                    random2 = random;
                                    arrayList2 = arrayList;
                                    f5 = 0.8f;
                                }
                            }
                        } else {
                            messageObject4 = messageObject3;
                        }
                        ReactionsContainerLayout.ReactionHolderView reactionHolderView = this.holderView;
                        boolean z3 = (reactionHolderView == null && (f == BitmapDescriptorFactory.HUE_RED || f2 == BitmapDescriptorFactory.HUE_RED)) ? false : true;
                        if (view3 != null) {
                            view3.getLocationOnScreen(this.loc);
                            int[] iArr = this.loc;
                            float width = iArr[0];
                            float width2 = iArr[1];
                            imageHeight = view2.getWidth() * view2.getScaleX();
                            if (view3 instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                                float f16 = ((SelectAnimatedEmojiDialog.ImageViewEmoji) view3).bigReactionSelectedProgress;
                                if (f16 > BitmapDescriptorFactory.HUE_RED) {
                                    imageHeight = view2.getWidth() * ((f16 * 2.0f) + 1.0f);
                                    width -= (imageHeight - view2.getWidth()) / 2.0f;
                                    width2 -= imageHeight - view2.getWidth();
                                }
                            }
                            f3 = width2;
                            f4 = width;
                        } else if (reactionHolderView != null) {
                            reactionHolderView.getLocationOnScreen(this.loc);
                            float x = this.loc[0] + this.holderView.loopImageView.getX();
                            float y = this.loc[1] + this.holderView.loopImageView.getY();
                            imageHeight = this.holderView.loopImageView.getWidth() * this.holderView.getScaleX();
                            f4 = x;
                            f3 = y;
                        } else {
                            ReactionsLayoutInBubble.ReactionButton reactionButton4 = reactionButton3;
                            if (reactionButton4 != null) {
                                view.getLocationInWindow(this.loc);
                                float f17 = this.loc[0];
                                ImageReceiver imageReceiver2 = reactionButton4.imageReceiver;
                                imageX = f17 + (imageReceiver2 == null ? BitmapDescriptorFactory.HUE_RED : imageReceiver2.getImageX());
                                float f18 = this.loc[1];
                                ImageReceiver imageReceiver3 = reactionButton4.imageReceiver;
                                imageY = f18 + (imageReceiver3 == null ? BitmapDescriptorFactory.HUE_RED : imageReceiver3.getImageY());
                                ImageReceiver imageReceiver4 = reactionButton4.imageReceiver;
                                if (imageReceiver4 != null) {
                                    f4 = imageX;
                                    f3 = imageY;
                                    i3 = 2;
                                    imageHeight = imageReceiver4.getImageHeight();
                                    if (i2 != i3) {
                                        int iDp = AndroidUtilities.dp((z && SharedConfig.deviceIsHigh()) ? 60.0f : 34.0f);
                                        i4 = iDp;
                                        i5 = (int) ((iDp * 2.0f) / AndroidUtilities.density);
                                    } else {
                                        if (i2 != 1) {
                                            int iDp2 = AndroidUtilities.dp(350.0f);
                                            Point point = AndroidUtilities.displaySize;
                                            iRound = Math.round(Math.min(iDp2, Math.min(point.x, point.y)) * 0.8f);
                                            iSizeForBigReaction = sizeForBigReaction();
                                        } else if (z) {
                                            int iDp3 = AndroidUtilities.dp(SharedConfig.deviceIsHigh() ? 240.0f : 140.0f);
                                            iSizeForBigReaction = SharedConfig.deviceIsHigh() ? (int) ((AndroidUtilities.dp(80.0f) * 2.0f) / AndroidUtilities.density) : sizeForAroundReaction();
                                            i4 = iDp3;
                                            i5 = iSizeForBigReaction;
                                        } else {
                                            iRound = AndroidUtilities.dp(80.0f);
                                            iSizeForBigReaction = sizeForAroundReaction();
                                        }
                                        i4 = iRound;
                                        i5 = iSizeForBigReaction;
                                    }
                                    i6 = i4 >> 1;
                                    int i18 = i5 >> 1;
                                    this.animateInProgress = BitmapDescriptorFactory.HUE_RED;
                                    this.animateOutProgress = BitmapDescriptorFactory.HUE_RED;
                                    frameLayout = new FrameLayout(context);
                                    this.container = frameLayout;
                                    int i19 = i5;
                                    int i20 = i4;
                                    MessageObject messageObject5 = messageObject4;
                                    this.windowView = new AnonymousClass1(context, baseFragment, view, z, messageObject4, chatActivity, i6, i2, z3, imageHeight / i6, f4, f3, visibleReaction);
                                    animationView = new AnimationView(context);
                                    this.effectImageView = animationView;
                                    animationView2 = new AnimationView(context);
                                    this.emojiImageView = animationView2;
                                    AnimationView animationView3 = new AnimationView(context);
                                    this.emojiStaticImageView = animationView3;
                                    tL_availableReaction = visibleReaction.emojicon == null ? MediaDataController.getInstance(i).getReactionsMap().get(this.reaction.emojicon) : null;
                                    if (tL_availableReaction != null && visibleReaction.documentId == j) {
                                        this.dismissed = true;
                                        return;
                                    }
                                    if (tL_availableReaction != null) {
                                        i7 = i2;
                                        if (i7 == 0) {
                                            i8 = i;
                                            i10 = 1;
                                            animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(1, i8, visibleReaction.documentId));
                                            i9 = 2;
                                        } else {
                                            i8 = i;
                                            i9 = 2;
                                            i10 = 1;
                                            if (i7 == 2) {
                                                animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(2, i8, visibleReaction.documentId));
                                            }
                                        }
                                        if (i7 == 0 || i7 == i10) {
                                            AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(i9, i8, visibleReaction.documentId);
                                            if (messageObject5 != null) {
                                                color = Theme.getColor(messageObject5.shouldDrawWithoutBackground() ? messageObject5.isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground : messageObject5.isOutOwner() ? Theme.key_chat_outReactionButtonTextSelected : Theme.key_chat_inReactionButtonTextSelected, baseFragment != null ? baseFragment.getResourceProvider() : null);
                                            } else {
                                                color = -1;
                                            }
                                            animatedEmojiDrawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                                            boolean z4 = i7 == 0;
                                            animationView.setAnimatedEmojiEffect(AnimatedEmojiEffect.createFrom(animatedEmojiDrawable, z4, !z4));
                                            r3 = 0;
                                            this.windowView.setClipChildren(false);
                                        }
                                        animationView2.getImageReceiver().setAutoRepeat(r3);
                                        animationView2.getImageReceiver().setAllowStartAnimation(r3);
                                        if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                                            if (i7 == 2) {
                                                animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(animationView2.getImageReceiver().getLottieAnimation().getFramesCount() - 1, r3);
                                            } else {
                                                animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(r3, r3);
                                                animationView2.getImageReceiver().getLottieAnimation().start();
                                            }
                                        }
                                        i11 = i20 - i6;
                                        i12 = i11 >> 1;
                                        i11 = i7 == 1 ? i12 : i11;
                                        frameLayout.addView(animationView2);
                                        animationView2.getLayoutParams().width = i6;
                                        animationView2.getLayoutParams().height = i6;
                                        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i12;
                                        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i11;
                                        if (i7 != 1 && !z) {
                                            if (tL_availableReaction != null) {
                                                animationView3.getImageReceiver().setImage(ImageLocation.getForDocument(tL_availableReaction.center_icon), "40_40_lastreactframe", null, "webp", tL_availableReaction, 1);
                                            }
                                            frameLayout.addView(animationView3);
                                            animationView3.getLayoutParams().width = i6;
                                            animationView3.getLayoutParams().height = i6;
                                            ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).topMargin = i12;
                                            ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).leftMargin = i11;
                                        }
                                        this.windowView.addView(frameLayout);
                                        frameLayout.getLayoutParams().width = i20;
                                        frameLayout.getLayoutParams().height = i20;
                                        int i21 = -i12;
                                        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i21;
                                        int i22 = -i11;
                                        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i22;
                                        this.windowView.addView(animationView);
                                        animationView.getLayoutParams().width = i20;
                                        animationView.getLayoutParams().height = i20;
                                        animationView.getLayoutParams().width = i20;
                                        animationView.getLayoutParams().height = i20;
                                        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i21;
                                        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i22;
                                        frameLayout.setPivotX(i11);
                                        frameLayout.setPivotY(i12);
                                    }
                                    i7 = i2;
                                    int i23 = 2;
                                    if (i7 != 2) {
                                        if ((i7 == 1 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_CHAT)) || i7 == 0) {
                                            TLRPC.Document document = i7 == 1 ? tL_availableReaction.around_animation : tL_availableReaction.effect_animation;
                                            if (i7 == 1) {
                                                filterForAroundAnimation = getFilterForAroundAnimation();
                                            } else {
                                                filterForAroundAnimation = i19 + "_" + i19;
                                            }
                                            String str = filterForAroundAnimation;
                                            ImageReceiver imageReceiver5 = animationView.getImageReceiver();
                                            StringBuilder sb2 = new StringBuilder();
                                            int i24 = uniqPrefix;
                                            uniqPrefix = i24 + 1;
                                            sb2.append(i24);
                                            sb2.append("_");
                                            sb2.append(this.messageId);
                                            sb2.append("_");
                                            imageReceiver5.setUniqKeyPrefix(sb2.toString());
                                            animationView.setImage(ImageLocation.getForDocument(document), str, (ImageLocation) null, (String) null, 0, (Object) null);
                                            r14 = 0;
                                            animationView.getImageReceiver().setAutoRepeat(0);
                                            animationView.getImageReceiver().setAllowStartAnimation(false);
                                        } else {
                                            r14 = 0;
                                        }
                                        if (animationView.getImageReceiver().getLottieAnimation() != null) {
                                            animationView.getImageReceiver().getLottieAnimation().setCurrentFrame(r14, r14);
                                            animationView.getImageReceiver().getLottieAnimation().start();
                                        }
                                        i23 = 2;
                                    }
                                    if (i7 == i23) {
                                        TLRPC.Document document2 = z ? tL_availableReaction.select_animation : tL_availableReaction.appear_animation;
                                        ImageReceiver imageReceiver6 = animationView2.getImageReceiver();
                                        StringBuilder sb3 = new StringBuilder();
                                        int i25 = uniqPrefix;
                                        uniqPrefix = i25 + 1;
                                        sb3.append(i25);
                                        sb3.append("_");
                                        sb3.append(this.messageId);
                                        sb3.append("_");
                                        imageReceiver6.setUniqKeyPrefix(sb3.toString());
                                        forDocument = ImageLocation.getForDocument(document2);
                                        sb = new StringBuilder();
                                        i13 = i18;
                                    } else {
                                        i13 = i18;
                                        if (i7 == 0) {
                                            TLRPC.Document document3 = tL_availableReaction.activate_animation;
                                            ImageReceiver imageReceiver7 = animationView2.getImageReceiver();
                                            StringBuilder sb4 = new StringBuilder();
                                            int i26 = uniqPrefix;
                                            uniqPrefix = i26 + 1;
                                            sb4.append(i26);
                                            sb4.append("_");
                                            sb4.append(this.messageId);
                                            sb4.append("_");
                                            imageReceiver7.setUniqKeyPrefix(sb4.toString());
                                            forDocument = ImageLocation.getForDocument(document3);
                                            sb = new StringBuilder();
                                        }
                                    }
                                    sb.append(i13);
                                    sb.append("_");
                                    sb.append(i13);
                                    animationView2.setImage(forDocument, sb.toString(), (ImageLocation) null, (String) null, 0, (Object) null);
                                    r3 = 0;
                                    animationView2.getImageReceiver().setAutoRepeat(r3);
                                    animationView2.getImageReceiver().setAllowStartAnimation(r3);
                                    if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                                    }
                                    i11 = i20 - i6;
                                    i12 = i11 >> 1;
                                    if (i7 == 1) {
                                    }
                                    frameLayout.addView(animationView2);
                                    animationView2.getLayoutParams().width = i6;
                                    animationView2.getLayoutParams().height = i6;
                                    ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i12;
                                    ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i11;
                                    if (i7 != 1) {
                                        if (tL_availableReaction != null) {
                                        }
                                        frameLayout.addView(animationView3);
                                        animationView3.getLayoutParams().width = i6;
                                        animationView3.getLayoutParams().height = i6;
                                        ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).topMargin = i12;
                                        ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).leftMargin = i11;
                                    }
                                    this.windowView.addView(frameLayout);
                                    frameLayout.getLayoutParams().width = i20;
                                    frameLayout.getLayoutParams().height = i20;
                                    int i212 = -i12;
                                    ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i212;
                                    int i222 = -i11;
                                    ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i222;
                                    this.windowView.addView(animationView);
                                    animationView.getLayoutParams().width = i20;
                                    animationView.getLayoutParams().height = i20;
                                    animationView.getLayoutParams().width = i20;
                                    animationView.getLayoutParams().height = i20;
                                    ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i212;
                                    ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i222;
                                    frameLayout.setPivotX(i11);
                                    frameLayout.setPivotY(i12);
                                }
                            } else if (view != null) {
                                ((View) view.getParent()).getLocationInWindow(this.loc);
                                int[] iArr2 = this.loc;
                                f3 = iArr2[1] + f2 + (view instanceof ChatMessageCell ? ((ChatMessageCell) view).starsPriceTopPadding : 0);
                                f4 = iArr2[0] + f;
                                imageHeight = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                imageX = f;
                                imageY = f2;
                            }
                            f4 = imageX;
                            f3 = imageY;
                            imageHeight = BitmapDescriptorFactory.HUE_RED;
                        }
                        i3 = 2;
                        if (i2 != i3) {
                        }
                        i6 = i4 >> 1;
                        int i182 = i5 >> 1;
                        this.animateInProgress = BitmapDescriptorFactory.HUE_RED;
                        this.animateOutProgress = BitmapDescriptorFactory.HUE_RED;
                        frameLayout = new FrameLayout(context);
                        this.container = frameLayout;
                        int i192 = i5;
                        int i202 = i4;
                        MessageObject messageObject52 = messageObject4;
                        this.windowView = new AnonymousClass1(context, baseFragment, view, z, messageObject4, chatActivity, i6, i2, z3, imageHeight / i6, f4, f3, visibleReaction);
                        animationView = new AnimationView(context);
                        this.effectImageView = animationView;
                        animationView2 = new AnimationView(context);
                        this.emojiImageView = animationView2;
                        AnimationView animationView32 = new AnimationView(context);
                        this.emojiStaticImageView = animationView32;
                        if (visibleReaction.emojicon == null) {
                        }
                        if (tL_availableReaction != null) {
                        }
                        if (tL_availableReaction != null) {
                        }
                        r3 = 0;
                        animationView2.getImageReceiver().setAutoRepeat(r3);
                        animationView2.getImageReceiver().setAllowStartAnimation(r3);
                        if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                        }
                        i11 = i202 - i6;
                        i12 = i11 >> 1;
                        if (i7 == 1) {
                        }
                        frameLayout.addView(animationView2);
                        animationView2.getLayoutParams().width = i6;
                        animationView2.getLayoutParams().height = i6;
                        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i12;
                        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i11;
                        if (i7 != 1) {
                        }
                        this.windowView.addView(frameLayout);
                        frameLayout.getLayoutParams().width = i202;
                        frameLayout.getLayoutParams().height = i202;
                        int i2122 = -i12;
                        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i2122;
                        int i2222 = -i11;
                        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i2222;
                        this.windowView.addView(animationView);
                        animationView.getLayoutParams().width = i202;
                        animationView.getLayoutParams().height = i202;
                        animationView.getLayoutParams().width = i202;
                        animationView.getLayoutParams().height = i202;
                        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i2122;
                        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i2222;
                        frameLayout.setPivotX(i11);
                        frameLayout.setPivotY(i12);
                    }
                    reactionButton2 = ((ChatActionCell) view).getReactionButton(visibleReaction);
                }
                reactionButton = reactionButton2;
                if (z) {
                    j = 0;
                    reactionButton3 = reactionButton;
                    messageObject3 = messageObject;
                    view3 = view2;
                }
                if (baseFragment instanceof ChatActivity) {
                }
                if (reactionsContainerLayout != null) {
                }
                float f52 = 0.8f;
                if (i2 == 1) {
                }
                ReactionsContainerLayout.ReactionHolderView reactionHolderView2 = this.holderView;
                if (reactionHolderView2 == null) {
                }
                if (view3 != null) {
                }
                i3 = 2;
                if (i2 != i3) {
                }
                i6 = i4 >> 1;
                int i1822 = i5 >> 1;
                this.animateInProgress = BitmapDescriptorFactory.HUE_RED;
                this.animateOutProgress = BitmapDescriptorFactory.HUE_RED;
                frameLayout = new FrameLayout(context);
                this.container = frameLayout;
                int i1922 = i5;
                int i2022 = i4;
                MessageObject messageObject522 = messageObject4;
                this.windowView = new AnonymousClass1(context, baseFragment, view, z, messageObject4, chatActivity, i6, i2, z3, imageHeight / i6, f4, f3, visibleReaction);
                animationView = new AnimationView(context);
                this.effectImageView = animationView;
                animationView2 = new AnimationView(context);
                this.emojiImageView = animationView2;
                AnimationView animationView322 = new AnimationView(context);
                this.emojiStaticImageView = animationView322;
                if (visibleReaction.emojicon == null) {
                }
                if (tL_availableReaction != null) {
                }
                if (tL_availableReaction != null) {
                }
                r3 = 0;
                animationView2.getImageReceiver().setAutoRepeat(r3);
                animationView2.getImageReceiver().setAllowStartAnimation(r3);
                if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                }
                i11 = i2022 - i6;
                i12 = i11 >> 1;
                if (i7 == 1) {
                }
                frameLayout.addView(animationView2);
                animationView2.getLayoutParams().width = i6;
                animationView2.getLayoutParams().height = i6;
                ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i12;
                ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i11;
                if (i7 != 1) {
                }
                this.windowView.addView(frameLayout);
                frameLayout.getLayoutParams().width = i2022;
                frameLayout.getLayoutParams().height = i2022;
                int i21222 = -i12;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i21222;
                int i22222 = -i11;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i22222;
                this.windowView.addView(animationView);
                animationView.getLayoutParams().width = i2022;
                animationView.getLayoutParams().height = i2022;
                animationView.getLayoutParams().width = i2022;
                animationView.getLayoutParams().height = i2022;
                ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i21222;
                ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i22222;
                frameLayout.setPivotX(i11);
                frameLayout.setPivotY(i12);
            }
            messageObject2 = ((ChatActionCell) view).getMessageObject();
            this.messageId = messageObject2.getId();
            this.groupId = 0L;
        }
        messageObject = messageObject2;
        this.reaction = visibleReaction;
        this.animationType = i2;
        this.currentAccount = i;
        this.cell = view;
        if (!z2) {
        }
        reactionButton = reactionButton2;
        if (z) {
        }
        if (baseFragment instanceof ChatActivity) {
        }
        if (reactionsContainerLayout != null) {
        }
        float f522 = 0.8f;
        if (i2 == 1) {
        }
        ReactionsContainerLayout.ReactionHolderView reactionHolderView22 = this.holderView;
        if (reactionHolderView22 == null) {
        }
        if (view3 != null) {
        }
        i3 = 2;
        if (i2 != i3) {
        }
        i6 = i4 >> 1;
        int i18222 = i5 >> 1;
        this.animateInProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateOutProgress = BitmapDescriptorFactory.HUE_RED;
        frameLayout = new FrameLayout(context);
        this.container = frameLayout;
        int i19222 = i5;
        int i20222 = i4;
        MessageObject messageObject5222 = messageObject4;
        this.windowView = new AnonymousClass1(context, baseFragment, view, z, messageObject4, chatActivity, i6, i2, z3, imageHeight / i6, f4, f3, visibleReaction);
        animationView = new AnimationView(context);
        this.effectImageView = animationView;
        animationView2 = new AnimationView(context);
        this.emojiImageView = animationView2;
        AnimationView animationView3222 = new AnimationView(context);
        this.emojiStaticImageView = animationView3222;
        if (visibleReaction.emojicon == null) {
        }
        if (tL_availableReaction != null) {
        }
        if (tL_availableReaction != null) {
        }
        r3 = 0;
        animationView2.getImageReceiver().setAutoRepeat(r3);
        animationView2.getImageReceiver().setAllowStartAnimation(r3);
        if (animationView2.getImageReceiver().getLottieAnimation() != null) {
        }
        i11 = i20222 - i6;
        i12 = i11 >> 1;
        if (i7 == 1) {
        }
        frameLayout.addView(animationView2);
        animationView2.getLayoutParams().width = i6;
        animationView2.getLayoutParams().height = i6;
        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i12;
        ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i11;
        if (i7 != 1) {
        }
        this.windowView.addView(frameLayout);
        frameLayout.getLayoutParams().width = i20222;
        frameLayout.getLayoutParams().height = i20222;
        int i212222 = -i12;
        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i212222;
        int i222222 = -i11;
        ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i222222;
        this.windowView.addView(animationView);
        animationView.getLayoutParams().width = i20222;
        animationView.getLayoutParams().height = i20222;
        animationView.getLayoutParams().width = i20222;
        animationView.getLayoutParams().height = i20222;
        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i212222;
        ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i222222;
        frameLayout.setPivotX(i11);
        frameLayout.setPivotY(i12);
    }

    static /* synthetic */ float access$216(ReactionsEffectOverlay reactionsEffectOverlay, float f) {
        float f2 = reactionsEffectOverlay.dismissProgress + f;
        reactionsEffectOverlay.dismissProgress = f2;
        return f2;
    }

    public static void dismissAll() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.dismissed = true;
        }
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            reactionsEffectOverlay2.dismissed = true;
        }
    }

    public static String getFilterForAroundAnimation() {
        return sizeForAroundReaction() + "_" + sizeForAroundReaction() + "_nolimit_pcache";
    }

    public static boolean isPlaying(int i, long j, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay == null) {
            return false;
        }
        int i2 = reactionsEffectOverlay.animationType;
        if (i2 != 2 && i2 != 0) {
            return false;
        }
        long j2 = reactionsEffectOverlay.groupId;
        return ((j2 != 0 && j == j2) || i == reactionsEffectOverlay.messageId) && reactionsEffectOverlay.reaction.equals(visibleReaction);
    }

    public static void onScrolled(int i) {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.lastDrawnToY -= i;
            if (i != 0) {
                reactionsEffectOverlay.wasScrolled = true;
            }
        }
    }

    public static void removeCurrent(boolean z) {
        int i = 0;
        while (i < 2) {
            ReactionsEffectOverlay reactionsEffectOverlay = i == 0 ? currentOverlay : currentShortOverlay;
            if (reactionsEffectOverlay != null) {
                if (z) {
                    reactionsEffectOverlay.removeCurrentView();
                } else {
                    reactionsEffectOverlay.dismissed = true;
                }
            }
            i++;
        }
        currentShortOverlay = null;
        currentOverlay = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCurrentView() {
        try {
            if (this.useWindow) {
                this.windowManager.removeView(this.windowView);
            } else {
                AndroidUtilities.removeFromParent(this.windowView);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void show(BaseFragment baseFragment, ReactionsContainerLayout reactionsContainerLayout, View view, View view2, float f, float f2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i, int i2) {
        boolean z;
        ActionBarPopupWindow actionBarPopupWindow;
        if (view == null || visibleReaction == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            if (i2 == 2 || i2 == 0) {
                show(baseFragment, null, view, view2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, visibleReaction, i, 1);
            }
            ReactionsEffectOverlay reactionsEffectOverlay = new ReactionsEffectOverlay(baseFragment.getParentActivity(), baseFragment, reactionsContainerLayout, view, view2, f, f2, visibleReaction, i, i2, false);
            if (i2 == 1) {
                currentShortOverlay = reactionsEffectOverlay;
            } else {
                currentOverlay = reactionsEffectOverlay;
            }
            if (baseFragment instanceof ChatActivity) {
                z = (i2 == 0 || i2 == 2) && (actionBarPopupWindow = ((ChatActivity) baseFragment).scrimPopupWindow) != null && actionBarPopupWindow.isShowing();
            }
            reactionsEffectOverlay.useWindow = z;
            if (z) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.height = -1;
                layoutParams.width = -1;
                layoutParams.type = 1000;
                layoutParams.flags = 65816;
                layoutParams.format = -3;
                WindowManager windowManager = baseFragment.getParentActivity().getWindowManager();
                reactionsEffectOverlay.windowManager = windowManager;
                AndroidUtilities.setPreferredMaxRefreshRate(windowManager, reactionsEffectOverlay.windowView, layoutParams);
                reactionsEffectOverlay.windowManager.addView(reactionsEffectOverlay.windowView, layoutParams);
            } else {
                FrameLayout frameLayout = (FrameLayout) baseFragment.getParentActivity().getWindow().getDecorView();
                reactionsEffectOverlay.decorView = frameLayout;
                frameLayout.addView(reactionsEffectOverlay.windowView);
            }
            view.invalidate();
            if (!(view instanceof ChatMessageCell) || ((ChatMessageCell) view).getCurrentMessagesGroup() == null || view.getParent() == null) {
                return;
            }
            ((View) view.getParent()).invalidate();
        }
    }

    public static int sizeForAroundReaction() {
        return (int) ((AndroidUtilities.dp(40.0f) * 2.0f) / AndroidUtilities.density);
    }

    public static int sizeForBigReaction() {
        int iDp = AndroidUtilities.dp(350.0f);
        Point point = AndroidUtilities.displaySize;
        return (int) (Math.round(Math.min(iDp, Math.min(point.x, point.y)) * 0.7f) / AndroidUtilities.density);
    }

    public static void startAnimation() {
        ReactionsLayoutInBubble reactionsLayoutInBubble;
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.started = true;
            reactionsEffectOverlay.startTime = System.currentTimeMillis();
            if (currentOverlay.animationType != 0 || System.currentTimeMillis() - lastHapticTime <= 200) {
                return;
            }
            lastHapticTime = System.currentTimeMillis();
            currentOverlay.cell.performHapticFeedback(3);
            return;
        }
        startShortAnimation();
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            View view = reactionsEffectOverlay2.cell;
            if (view instanceof ChatMessageCell) {
                reactionsLayoutInBubble = ((ChatMessageCell) view).reactionsLayoutInBubble;
            } else if (!(view instanceof ChatActionCell)) {
                return;
            } else {
                reactionsLayoutInBubble = ((ChatActionCell) view).reactionsLayoutInBubble;
            }
            reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay2.reaction);
        }
    }

    public static void startShortAnimation() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentShortOverlay;
        if (reactionsEffectOverlay == null || reactionsEffectOverlay.started) {
            return;
        }
        reactionsEffectOverlay.started = true;
        reactionsEffectOverlay.startTime = System.currentTimeMillis();
        if (currentShortOverlay.animationType != 1 || System.currentTimeMillis() - lastHapticTime <= 200) {
            return;
        }
        lastHapticTime = System.currentTimeMillis();
        currentShortOverlay.cell.performHapticFeedback(3);
    }
}
