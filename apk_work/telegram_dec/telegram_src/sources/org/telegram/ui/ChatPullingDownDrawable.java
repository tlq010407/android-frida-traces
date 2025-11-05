package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CounterView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LetterDrawable;
import org.telegram.ui.Components.StaticLayoutEx;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ChatPullingDownDrawable implements NotificationCenter.NotificationCenterDelegate {
    boolean animateCheck;
    public boolean animateSwipeToRelease;
    private AnimatedEmojiDrawable animatedEmojiDrawable;
    float bounceProgress;
    StaticLayout chatNameLayout;
    int chatNameWidth;
    float checkProgress;
    float circleRadius;
    private final int currentAccount;
    private final long currentDialog;
    public int dialogFilterId;
    public int dialogFolderId;
    boolean drawFolderBackground;
    boolean emptyStub;
    private final int filterId;
    private final int folderId;
    private final View fragmentView;
    private final ImageReceiver imageReceiver;
    private final boolean isTopic;
    long lastHapticTime;
    float lastProgress;
    public long lastShowingReleaseTime;
    int lastWidth;
    StaticLayout layout1;
    int layout1Width;
    StaticLayout layout2;
    int layout2Width;
    TLRPC.Chat nextChat;
    public long nextDialogId;
    TLRPC.TL_forumTopic nextTopic;
    Runnable onAnimationFinishRunnable;
    View parentView;
    float progressToBottomPanel;
    boolean recommendedChannel;
    private final Theme.ResourcesProvider resourcesProvider;
    boolean showBottomPanel;
    AnimatorSet showReleaseAnimator;
    float swipeToReleaseProgress;
    private final long topicId;
    Paint arrowPaint = new Paint(1);
    TextPaint textPaint = new TextPaint(1);
    TextPaint textPaint2 = new TextPaint(1);
    private Paint xRefPaint = new Paint(1);
    Path path = new Path();
    private long lastWidthTopicId = 0;
    private boolean visibleCounterDrawable = true;
    CounterView.CounterDrawable counterDrawable = new CounterView.CounterDrawable(null, true, null);
    int[] params = new int[3];

    public ChatPullingDownDrawable(int i, View view, long j, int i2, int i3, long j2, Theme.ResourcesProvider resourcesProvider) {
        this.fragmentView = view;
        this.currentAccount = i;
        this.currentDialog = j;
        this.folderId = i2;
        this.filterId = i3;
        this.topicId = j2;
        this.isTopic = MessagesController.getInstance(i).isForum(j);
        this.resourcesProvider = resourcesProvider;
        this.imageReceiver = new ImageReceiver(view);
        this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(2.8f));
        this.arrowPaint.setStrokeCap(Paint.Cap.ROUND);
        CounterView.CounterDrawable counterDrawable = this.counterDrawable;
        counterDrawable.gravity = 3;
        counterDrawable.setType(1);
        CounterView.CounterDrawable counterDrawable2 = this.counterDrawable;
        counterDrawable2.addServiceGradient = true;
        counterDrawable2.circlePaint = getThemedPaint("paintChatActionBackground");
        CounterView.CounterDrawable counterDrawable3 = this.counterDrawable;
        TextPaint textPaint = this.textPaint;
        counterDrawable3.textPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint2.setTextSize(AndroidUtilities.dp(14.0f));
        this.xRefPaint.setColor(-16777216);
        this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    private void drawArrow(Canvas canvas, float f, float f2, float f3) {
        canvas.save();
        float fDpf2 = f3 / AndroidUtilities.dpf2(24.0f);
        canvas.scale(fDpf2, fDpf2, f, f2 - AndroidUtilities.dp(20.0f));
        canvas.translate(f - AndroidUtilities.dp2(12.0f), f2 - AndroidUtilities.dp(12.0f));
        canvas.drawLine(AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(22.0f), this.arrowPaint);
        canvas.drawLine(AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(3.5f), this.arrowPaint);
        canvas.drawLine(AndroidUtilities.dpf2(21.5f), AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.5f), AndroidUtilities.dpf2(3.5f), this.arrowPaint);
        canvas.restore();
    }

    private void drawBackground(Canvas canvas, RectF rectF, float f) {
        if (!this.drawFolderBackground) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f2 = this.circleRadius;
            canvas.drawRoundRect(rectF2, f2, f2, getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
            if (hasGradientService()) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                float f3 = this.circleRadius;
                canvas.drawRoundRect(rectF2, f3, f3, Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
                return;
            }
            return;
        }
        this.path.reset();
        float fWidth = rectF.width() * 0.2f;
        float fWidth2 = rectF.width() * 0.1f;
        float fWidth3 = rectF.width() * 0.03f;
        float f4 = fWidth2 / 2.0f;
        float fHeight = rectF.height() - fWidth2;
        this.path.moveTo(rectF.right, rectF.top + fWidth + fWidth2);
        float f5 = -fWidth;
        this.path.rQuadTo(BitmapDescriptorFactory.HUE_RED, f5, f5, f5);
        float f6 = fWidth * 2.0f;
        float f7 = f4 * 2.0f;
        this.path.rLineTo((((-(rectF.width() - f6)) / 2.0f) + f7) - fWidth3, BitmapDescriptorFactory.HUE_RED);
        float f8 = -f4;
        float f9 = f8 / 2.0f;
        float f10 = f8 * 2.0f;
        float f11 = (-fWidth2) / 2.0f;
        this.path.rQuadTo(f9, BitmapDescriptorFactory.HUE_RED, f10, f11);
        this.path.rQuadTo(f9, f11, f10, f11);
        this.path.rLineTo(((-(rectF.width() - f6)) / 2.0f) + f7 + fWidth3, BitmapDescriptorFactory.HUE_RED);
        this.path.rQuadTo(f5, BitmapDescriptorFactory.HUE_RED, f5, fWidth);
        this.path.rLineTo(BitmapDescriptorFactory.HUE_RED, (fWidth2 + fHeight) - f6);
        this.path.rQuadTo(BitmapDescriptorFactory.HUE_RED, fWidth, fWidth, fWidth);
        this.path.rLineTo(rectF.width() - f6, BitmapDescriptorFactory.HUE_RED);
        this.path.rQuadTo(fWidth, BitmapDescriptorFactory.HUE_RED, fWidth, f5);
        this.path.rLineTo(BitmapDescriptorFactory.HUE_RED, -(fHeight - f6));
        this.path.close();
        canvas.drawPath(this.path, getThemedPaint("paintChatActionBackground"));
        if (hasGradientService()) {
            canvas.drawPath(this.path, Theme.chat_actionBackgroundGradientDarkenPaint);
        }
    }

    private void drawCheck(Canvas canvas, float f, float f2) {
        if (this.animateCheck) {
            float f3 = this.checkProgress;
            if (f3 < 1.0f) {
                float f4 = f3 + 0.07272727f;
                this.checkProgress = f4;
                if (f4 > 1.0f) {
                    this.checkProgress = 1.0f;
                }
            }
            float f5 = this.checkProgress;
            float f6 = f5 > 0.5f ? 1.0f : f5 / 0.5f;
            float f7 = f5 < 0.5f ? BitmapDescriptorFactory.HUE_RED : (f5 - 0.5f) / 0.5f;
            canvas.save();
            canvas.clipRect(AndroidUtilities.rectTmp);
            canvas.translate(f - AndroidUtilities.dp(24.0f), f2 - AndroidUtilities.dp(24.0f));
            float fDp = AndroidUtilities.dp(16.0f);
            float fDp2 = AndroidUtilities.dp(26.0f);
            float fDp3 = AndroidUtilities.dp(22.0f);
            float fDp4 = AndroidUtilities.dp(32.0f);
            float fDp5 = AndroidUtilities.dp(32.0f);
            float fDp6 = AndroidUtilities.dp(20.0f);
            float f8 = 1.0f - f6;
            canvas.drawLine(fDp, fDp2, (fDp * f8) + (fDp3 * f6), (f8 * fDp2) + (f6 * fDp4), this.arrowPaint);
            if (f7 > BitmapDescriptorFactory.HUE_RED) {
                float f9 = 1.0f - f7;
                canvas.drawLine(fDp3, fDp4, (fDp3 * f9) + (fDp5 * f7), (f9 * fDp4) + (fDp6 * f7), this.arrowPaint);
            }
            canvas.restore();
        }
    }

    public static TLRPC.Dialog getNextUnreadDialog(long j, int i, int i2, boolean z, int[] iArr) {
        ArrayList<TLRPC.Dialog> dialogs;
        TLRPC.Dialog nextUnreadDialog;
        TLRPC.Dialog nextUnreadDialog2;
        MessagesController messagesController = AccountInstance.getInstance(UserConfig.selectedAccount).getMessagesController();
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
            iArr[2] = i2;
        }
        if (i2 != 0) {
            MessagesController.DialogFilter dialogFilter = messagesController.dialogFiltersById.get(i2);
            if (dialogFilter == null) {
                return null;
            }
            dialogs = dialogFilter.dialogs;
        } else {
            dialogs = messagesController.getDialogs(i);
        }
        if (dialogs == null) {
            return null;
        }
        for (int i3 = 0; i3 < dialogs.size(); i3++) {
            TLRPC.Dialog dialog = dialogs.get(i3);
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-dialog.id));
            if (chat != null && dialog.id != j && dialog.unread_count > 0 && DialogObject.isChannel(dialog) && !chat.megagroup && !messagesController.isPromoDialog(dialog.id, false) && messagesController.getRestrictionReason(chat.restriction_reason) == null) {
                return dialog;
            }
        }
        if (z) {
            if (i2 != 0) {
                for (int i4 = 0; i4 < messagesController.dialogFilters.size(); i4++) {
                    int i5 = messagesController.dialogFilters.get(i4).id;
                    if (i2 != i5 && (nextUnreadDialog2 = getNextUnreadDialog(j, i, i5, false, iArr)) != null) {
                        if (iArr != null) {
                            iArr[0] = 1;
                        }
                        return nextUnreadDialog2;
                    }
                }
            }
            for (int i6 = 0; i6 < messagesController.dialogsByFolder.size(); i6++) {
                int iKeyAt = messagesController.dialogsByFolder.keyAt(i6);
                if (i != iKeyAt && (nextUnreadDialog = getNextUnreadDialog(j, iKeyAt, 0, false, iArr)) != null) {
                    if (iArr != null) {
                        iArr[0] = 1;
                    }
                    return nextUnreadDialog;
                }
            }
        }
        return null;
    }

    private TLRPC.TL_forumTopic getNextUnreadTopic(long j) {
        TLRPC.Message message;
        TLRPC.Message message2;
        ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(j);
        TLRPC.TL_forumTopic tL_forumTopic = null;
        if (topics != null && topics.size() > 1) {
            for (int i = 0; i < topics.size(); i++) {
                TLRPC.TL_forumTopic tL_forumTopic2 = topics.get(i);
                if (tL_forumTopic2.id != this.topicId && !tL_forumTopic2.hidden && tL_forumTopic2.unread_count > 0 && (tL_forumTopic == null || ((message = tL_forumTopic2.topMessage) != null && (message2 = tL_forumTopic.topMessage) != null && message.date > message2.date))) {
                    tL_forumTopic = tL_forumTopic2;
                }
            }
        }
        return tL_forumTopic;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    private boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runOnAnimationFinish$5(ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.fragmentView.invalidate();
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runOnAnimationFinish$6(ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$0(View view, ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$1(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$2(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$3(View view, ValueAnimator valueAnimator) {
        this.bounceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        view.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showReleaseState$4(View view, ValueAnimator valueAnimator) {
        this.swipeToReleaseProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.fragmentView.invalidate();
        view.invalidate();
    }

    private void showReleaseState(boolean z, final View view) {
        AnimatorSet animatorSet = this.showReleaseAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.showReleaseAnimator.cancel();
        }
        if (z) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.swipeToReleaseProgress, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showReleaseState$0(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            valueAnimatorOfFloat.setDuration(250L);
            this.bounceProgress = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showReleaseState$1(view, valueAnimator);
                }
            });
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_BOTH;
            valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat2.setDuration(180L);
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, -0.5f);
            valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showReleaseState$2(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat3.setDuration(120L);
            ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(-0.5f, BitmapDescriptorFactory.HUE_RED);
            valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showReleaseState$3(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat4.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat4.setDuration(100L);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.showReleaseAnimator = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatPullingDownDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatPullingDownDrawable chatPullingDownDrawable = ChatPullingDownDrawable.this;
                    chatPullingDownDrawable.bounceProgress = BitmapDescriptorFactory.HUE_RED;
                    chatPullingDownDrawable.swipeToReleaseProgress = 1.0f;
                    view.invalidate();
                    ChatPullingDownDrawable.this.fragmentView.invalidate();
                    Runnable runnable = ChatPullingDownDrawable.this.onAnimationFinishRunnable;
                    if (runnable != null) {
                        runnable.run();
                        ChatPullingDownDrawable.this.onAnimationFinishRunnable = null;
                    }
                }
            });
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playSequentially(valueAnimatorOfFloat2, valueAnimatorOfFloat3, valueAnimatorOfFloat4);
            this.showReleaseAnimator.playTogether(valueAnimatorOfFloat, animatorSet3);
        } else {
            ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(this.swipeToReleaseProgress, BitmapDescriptorFactory.HUE_RED);
            valueAnimatorOfFloat5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showReleaseState$4(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat5.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat5.setDuration(220L);
            AnimatorSet animatorSet4 = new AnimatorSet();
            this.showReleaseAnimator = animatorSet4;
            animatorSet4.playTogether(valueAnimatorOfFloat5);
        }
        this.showReleaseAnimator.start();
    }

    public boolean animationIsRunning() {
        return this.swipeToReleaseProgress != 1.0f;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC.Dialog dialog;
        if (this.nextDialogId == 0 || (dialog = (TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.nextDialogId)) == null) {
            return;
        }
        int i3 = dialog.unread_count;
        this.counterDrawable.setCount(i3, true);
        this.visibleCounterDrawable = i3 > 0;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public void draw(Canvas canvas, View view, float f, float f2) {
        int i;
        int i2;
        int i3;
        float f3;
        float f4;
        float f5;
        float f6;
        if (this.parentView != view) {
            this.parentView = view;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(view);
            }
        }
        this.counterDrawable.setParent(view);
        float fDp = AndroidUtilities.dp(110.0f) * f;
        if (fDp < AndroidUtilities.dp(8.0f)) {
            return;
        }
        float f7 = f < 0.2f ? 5.0f * f * f2 : f2;
        Theme.applyServiceShaderMatrix(this.lastWidth, view.getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED, view.getMeasuredHeight() - fDp);
        TextPaint textPaint = this.textPaint;
        int i4 = Theme.key_chat_serviceText;
        textPaint.setColor(getThemedColor(i4));
        this.arrowPaint.setColor(getThemedColor(i4));
        this.textPaint2.setColor(getThemedColor(Theme.key_chat_messagePanelHint));
        int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
        int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
        int alpha3 = this.textPaint.getAlpha();
        int alpha4 = this.arrowPaint.getAlpha();
        Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f7));
        int i5 = (int) (alpha * f7);
        getThemedPaint("paintChatActionBackground").setAlpha(i5);
        int i6 = (int) (alpha3 * f7);
        this.textPaint.setAlpha(i6);
        float f8 = 1.0f;
        if ((f < 1.0f || this.lastProgress >= 1.0f) && (f >= 1.0f || this.lastProgress != 1.0f)) {
            i = i5;
            i2 = alpha;
        } else {
            i2 = alpha;
            long jCurrentTimeMillis = System.currentTimeMillis();
            i = i5;
            if (jCurrentTimeMillis - this.lastHapticTime > 100) {
                try {
                    view.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
                this.lastHapticTime = jCurrentTimeMillis;
            }
            this.lastProgress = f;
            f8 = 1.0f;
        }
        if (f == f8 && !this.animateSwipeToRelease) {
            this.animateSwipeToRelease = true;
            this.animateCheck = true;
            showReleaseState(true, view);
            this.lastShowingReleaseTime = System.currentTimeMillis();
        } else if (f != 1.0f && this.animateSwipeToRelease) {
            this.animateSwipeToRelease = false;
            showReleaseState(false, view);
        }
        float f9 = this.lastWidth / 2.0f;
        float f10 = this.bounceProgress * (-AndroidUtilities.dp(4.0f));
        if (this.emptyStub) {
            fDp -= f10;
        }
        float f11 = fDp / 2.0f;
        float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(this.circleRadius, (f11 - (AndroidUtilities.dp(16.0f) * f)) - AndroidUtilities.dp(4.0f)));
        float fMax2 = ((Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(this.circleRadius * f, f11 - (AndroidUtilities.dp(8.0f) * f))) * 2.0f) - AndroidUtilities.dp2(16.0f)) * (1.0f - this.swipeToReleaseProgress);
        float fDp2 = AndroidUtilities.dp(56.0f);
        float f12 = this.swipeToReleaseProgress;
        float f13 = fMax2 + (fDp2 * f12);
        if (f12 < 1.0f || this.emptyStub) {
            float f14 = -fDp;
            i3 = alpha2;
            f3 = f7;
            float fDp3 = ((-AndroidUtilities.dp(8.0f)) * (1.0f - this.swipeToReleaseProgress)) + ((AndroidUtilities.dp(56.0f) + f14) * this.swipeToReleaseProgress);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f9 - fMax, f14, fMax + f9, fDp3);
            if (this.swipeToReleaseProgress <= BitmapDescriptorFactory.HUE_RED || this.emptyStub) {
                f4 = 1.0f;
            } else {
                float fDp4 = AndroidUtilities.dp(16.0f) * this.swipeToReleaseProgress;
                rectF.inset(fDp4, fDp4);
                f4 = 1.0f - this.swipeToReleaseProgress;
            }
            drawBackground(canvas, rectF, f4);
            float fDp5 = ((AndroidUtilities.dp(24.0f) + f14) + (AndroidUtilities.dp(8.0f) * (1.0f - f))) - (AndroidUtilities.dp(36.0f) * this.swipeToReleaseProgress);
            canvas.save();
            f5 = fDp;
            rectF.inset(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f));
            canvas.clipRect(rectF);
            float f15 = this.swipeToReleaseProgress;
            if (f15 > BitmapDescriptorFactory.HUE_RED) {
                this.arrowPaint.setAlpha((int) ((1.0f - f15) * 255.0f));
            }
            drawArrow(canvas, f9, fDp5, AndroidUtilities.dp(24.0f) * f);
            if (this.emptyStub) {
                float fDp22 = ((((-AndroidUtilities.dp(8.0f)) - (AndroidUtilities.dp2(8.0f) * f)) - f13) * (1.0f - this.swipeToReleaseProgress)) + ((f14 - AndroidUtilities.dp(2.0f)) * this.swipeToReleaseProgress) + f10;
                this.arrowPaint.setAlpha(alpha4);
                canvas.save();
                canvas.scale(f, f, f9, AndroidUtilities.dp(28.0f) + fDp22);
                drawCheck(canvas, f9, fDp22 + AndroidUtilities.dp(28.0f));
                canvas.restore();
            }
            canvas.restore();
        } else {
            f5 = fDp;
            f3 = f7;
            i3 = alpha2;
        }
        if (this.chatNameLayout != null && this.swipeToReleaseProgress > BitmapDescriptorFactory.HUE_RED) {
            getThemedPaint("paintChatActionBackground").setAlpha(i);
            this.textPaint.setAlpha(i6);
            float fDp6 = ((AndroidUtilities.dp(20.0f) * (1.0f - this.swipeToReleaseProgress)) - (AndroidUtilities.dp(36.0f) * this.swipeToReleaseProgress)) + f10;
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f16 = (r5 - this.chatNameWidth) / 2.0f;
            rectF2.set(f16, fDp6, this.lastWidth - f16, this.chatNameLayout.getHeight() + fDp6);
            rectF2.inset(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(4.0f));
            canvas.drawRoundRect(rectF2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(rectF2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            canvas.save();
            canvas.translate((this.lastWidth - this.chatNameWidth) / 2.0f, fDp6);
            this.chatNameLayout.draw(canvas);
            canvas.restore();
        }
        if (!this.emptyStub && f13 > BitmapDescriptorFactory.HUE_RED) {
            float fDp23 = ((((-AndroidUtilities.dp(8.0f)) - (AndroidUtilities.dp2(8.0f) * f)) - f13) * (1.0f - this.swipeToReleaseProgress)) + (((-f5) + AndroidUtilities.dp(4.0f)) * this.swipeToReleaseProgress) + f10;
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = (animatedEmojiDrawable2 == null || animatedEmojiDrawable2.getImageReceiver() == null) ? this.imageReceiver : this.animatedEmojiDrawable.getImageReceiver();
            imageReceiver.setAlpha(f3);
            float f17 = f13 / 2.0f;
            imageReceiver.setRoundRadius((int) f17);
            imageReceiver.setImageCoords(f9 - f17, fDp23, f13, f13);
            if (this.isTopic && imageReceiver.getDrawable() != null && (imageReceiver.getDrawable() instanceof CombinedDrawable) && (((CombinedDrawable) imageReceiver.getDrawable()).getIcon() instanceof LetterDrawable)) {
                ((LetterDrawable) ((CombinedDrawable) imageReceiver.getDrawable()).getIcon()).scale = f;
            }
            if (this.swipeToReleaseProgress <= BitmapDescriptorFactory.HUE_RED || !this.visibleCounterDrawable) {
                f6 = 1.0f;
                imageReceiver.draw(canvas);
            } else {
                f6 = 1.0f;
                canvas.saveLayerAlpha(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageWidth() + imageReceiver.getImageX(), imageReceiver.getImageHeight() + imageReceiver.getImageY(), 255, 31);
                imageReceiver.draw(canvas);
                float f18 = this.swipeToReleaseProgress;
                canvas.scale(f18, f18, AndroidUtilities.dp(12.0f) + f9 + this.counterDrawable.getCenterX(), (fDp23 - AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(14.0f));
                canvas.translate(AndroidUtilities.dp(12.0f) + f9, fDp23 - AndroidUtilities.dp(6.0f));
                this.counterDrawable.updateBackgroundRect();
                this.counterDrawable.rectF.inset(-AndroidUtilities.dp(2.0f), -AndroidUtilities.dp(2.0f));
                RectF rectF3 = this.counterDrawable.rectF;
                canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, this.counterDrawable.rectF.height() / 2.0f, this.xRefPaint);
                canvas.restore();
                canvas.save();
                float f19 = this.swipeToReleaseProgress;
                canvas.scale(f19, f19, AndroidUtilities.dp(12.0f) + f9 + this.counterDrawable.getCenterX(), (fDp23 - AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(14.0f));
                canvas.translate(f9 + AndroidUtilities.dp(12.0f), fDp23 - AndroidUtilities.dp(6.0f));
                this.counterDrawable.draw(canvas);
                canvas.restore();
            }
            imageReceiver.setAlpha(f6);
        }
        getThemedPaint("paintChatActionBackground").setAlpha(i2);
        Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(i3);
        this.textPaint.setAlpha(alpha3);
        this.arrowPaint.setAlpha(alpha4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawBottomPanel(Canvas canvas, int i, int i2, int i3) {
        boolean z = this.showBottomPanel;
        if (z) {
            float f = this.progressToBottomPanel;
            if (f != 1.0f) {
                float f2 = f + 0.10666667f;
                this.progressToBottomPanel = f2;
                if (f2 > 1.0f) {
                    this.progressToBottomPanel = 1.0f;
                } else {
                    this.fragmentView.invalidate();
                }
            } else if (!z) {
                float f3 = this.progressToBottomPanel;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    float f4 = f3 - 0.10666667f;
                    this.progressToBottomPanel = f4;
                    if (f4 < BitmapDescriptorFactory.HUE_RED) {
                        this.progressToBottomPanel = BitmapDescriptorFactory.HUE_RED;
                    }
                }
            }
        }
        this.textPaint2.setColor(getThemedColor(Theme.key_chat_messagePanelHint));
        Paint themedPaint = getThemedPaint("paintChatComposeBackground");
        int alpha = themedPaint.getAlpha();
        int alpha2 = this.textPaint2.getAlpha();
        themedPaint.setAlpha((int) (alpha * this.progressToBottomPanel));
        float f5 = i;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f5, i3, i2, themedPaint);
        if (this.layout1 != null) {
            float f6 = this.swipeToReleaseProgress;
            if (f6 < 1.0f) {
                this.textPaint2.setAlpha((int) (alpha2 * (1.0f - f6) * this.progressToBottomPanel));
                float height = ((((i2 - i) - this.layout1.getHeight()) / 2.0f) + f5) - (AndroidUtilities.dp(10.0f) * this.swipeToReleaseProgress);
                canvas.save();
                canvas.translate((this.lastWidth - this.layout1Width) / 2.0f, height);
                this.layout1.draw(canvas);
                canvas.restore();
            }
        }
        if (this.layout2 != null) {
            float f7 = this.swipeToReleaseProgress;
            if (f7 > BitmapDescriptorFactory.HUE_RED) {
                this.textPaint2.setAlpha((int) (alpha2 * f7 * this.progressToBottomPanel));
                float height2 = f5 + (((i2 - i) - this.layout2.getHeight()) / 2.0f) + (AndroidUtilities.dp(10.0f) * (1.0f - this.swipeToReleaseProgress));
                canvas.save();
                canvas.translate((this.lastWidth - this.layout2Width) / 2.0f, height2);
                this.layout2.draw(canvas);
                canvas.restore();
            }
        }
        this.textPaint2.setAlpha(alpha2);
        themedPaint.setAlpha(alpha);
    }

    public long getChatId() {
        TLRPC.Chat chat = this.nextChat;
        if (chat == null) {
            return 0L;
        }
        return chat.id;
    }

    public TLRPC.TL_forumTopic getTopic() {
        return this.nextTopic;
    }

    public boolean needDrawBottomPanel() {
        return (this.showBottomPanel || this.progressToBottomPanel > BitmapDescriptorFactory.HUE_RED) && !this.emptyStub;
    }

    public void onAttach() {
        View view;
        this.imageReceiver.onAttachedToWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
        if (animatedEmojiDrawable != null && (view = this.parentView) != null) {
            animatedEmojiDrawable.addView(view);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
    }

    public void onDetach() {
        View view;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        this.imageReceiver.onDetachedFromWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
        if (animatedEmojiDrawable != null && (view = this.parentView) != null) {
            animatedEmojiDrawable.removeView(view);
        }
        this.lastProgress = BitmapDescriptorFactory.HUE_RED;
        this.lastHapticTime = 0L;
    }

    public void reset() {
        this.checkProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateCheck = false;
    }

    public void runOnAnimationFinish(Runnable runnable) {
        AnimatorSet animatorSet = this.showReleaseAnimator;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.showReleaseAnimator.cancel();
        }
        this.onAnimationFinishRunnable = runnable;
        this.showReleaseAnimator = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.swipeToReleaseProgress, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$runOnAnimationFinish$5(valueAnimator);
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.bounceProgress, BitmapDescriptorFactory.HUE_RED);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatPullingDownDrawable$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$runOnAnimationFinish$6(valueAnimator);
            }
        });
        this.showReleaseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatPullingDownDrawable.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatPullingDownDrawable chatPullingDownDrawable = ChatPullingDownDrawable.this;
                chatPullingDownDrawable.bounceProgress = BitmapDescriptorFactory.HUE_RED;
                chatPullingDownDrawable.swipeToReleaseProgress = 1.0f;
                View view = chatPullingDownDrawable.parentView;
                if (view != null) {
                    view.invalidate();
                }
                ChatPullingDownDrawable.this.fragmentView.invalidate();
                Runnable runnable2 = ChatPullingDownDrawable.this.onAnimationFinishRunnable;
                if (runnable2 != null) {
                    runnable2.run();
                    ChatPullingDownDrawable.this.onAnimationFinishRunnable = null;
                }
            }
        });
        this.showReleaseAnimator.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.showReleaseAnimator.setDuration(120L);
        this.showReleaseAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.showReleaseAnimator.start();
    }

    public void setWidth(int i) {
        String string;
        String string2;
        int i2;
        int i3;
        TLRPC.TL_forumTopic tL_forumTopic;
        if (i == this.lastWidth && (!this.isTopic || (tL_forumTopic = this.nextTopic) == null || this.lastWidthTopicId == tL_forumTopic.id)) {
            return;
        }
        this.circleRadius = AndroidUtilities.dp(56.0f) / 2.0f;
        this.lastWidth = i;
        TLRPC.Chat chat = this.nextChat;
        if (chat != null) {
            string = chat.title;
        } else {
            TLRPC.TL_forumTopic tL_forumTopic2 = this.nextTopic;
            string = tL_forumTopic2 != null ? tL_forumTopic2.title : this.isTopic ? LocaleController.formatString(R.string.SwipeToGoNextTopicEnd, MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.currentDialog)).title) : LocaleController.getString(R.string.SwipeToGoNextChannelEnd);
        }
        String str = string;
        int iMeasureText = (int) this.textPaint.measureText((CharSequence) str, 0, str.length());
        this.chatNameWidth = iMeasureText;
        int iMin = Math.min(iMeasureText, this.lastWidth - AndroidUtilities.dp(60.0f));
        this.chatNameWidth = iMin;
        this.chatNameLayout = StaticLayoutEx.createStaticLayout(str, this.textPaint, iMin, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, iMin, 1);
        if (this.recommendedChannel) {
            string2 = LocaleController.getString(R.string.SwipeToGoNextRecommendedChannel);
            i2 = R.string.ReleaseToGoNextRecommendedChannel;
        } else if (this.isTopic) {
            string2 = LocaleController.getString(R.string.SwipeToGoNextUnreadTopic);
            i2 = R.string.ReleaseToGoNextUnreadTopic;
        } else {
            boolean z = this.drawFolderBackground;
            if (z && (i3 = this.dialogFolderId) != this.folderId && i3 != 0) {
                string2 = LocaleController.getString(R.string.SwipeToGoNextArchive);
                i2 = R.string.ReleaseToGoNextArchive;
            } else if (z) {
                string2 = LocaleController.getString(R.string.SwipeToGoNextFolder);
                i2 = R.string.ReleaseToGoNextFolder;
            } else {
                string2 = LocaleController.getString(R.string.SwipeToGoNextChannel);
                i2 = R.string.ReleaseToGoNextChannel;
            }
        }
        String string3 = LocaleController.getString(i2);
        String str2 = string2;
        int iMeasureText2 = (int) this.textPaint2.measureText(str2);
        this.layout1Width = iMeasureText2;
        this.layout1Width = Math.min(iMeasureText2, this.lastWidth - AndroidUtilities.dp(60.0f));
        TextPaint textPaint = this.textPaint2;
        int i4 = this.layout1Width;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        this.layout1 = new StaticLayout(str2, textPaint, i4, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        int iMeasureText3 = (int) this.textPaint2.measureText(string3);
        this.layout2Width = iMeasureText3;
        this.layout2Width = Math.min(iMeasureText3, this.lastWidth - AndroidUtilities.dp(60.0f));
        this.layout2 = new StaticLayout(string3, this.textPaint2, this.layout2Width, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.imageReceiver.setImageCoords((this.lastWidth / 2.0f) - (AndroidUtilities.dp(40.0f) / 2.0f), (AndroidUtilities.dp(12.0f) + this.circleRadius) - (AndroidUtilities.dp(40.0f) / 2.0f), AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f));
        this.imageReceiver.setRoundRadius((int) (AndroidUtilities.dp(40.0f) / 2.0f));
        this.counterDrawable.setSize(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(100.0f));
        if (this.isTopic) {
            this.lastWidthTopicId = this.nextTopic == null ? 0L : r14.id;
        }
    }

    public void showBottomPanel(boolean z) {
        this.showBottomPanel = z;
        this.fragmentView.invalidate();
    }

    public void updateDialog() {
        this.recommendedChannel = false;
        this.nextTopic = null;
        TLRPC.Dialog nextUnreadDialog = getNextUnreadDialog(this.currentDialog, this.folderId, this.filterId, true, this.params);
        if (nextUnreadDialog == null) {
            this.nextChat = null;
            this.drawFolderBackground = false;
            this.emptyStub = true;
            return;
        }
        this.nextDialogId = nextUnreadDialog.id;
        int[] iArr = this.params;
        this.drawFolderBackground = iArr[0] == 1;
        this.dialogFolderId = iArr[1];
        this.dialogFilterId = iArr[2];
        this.emptyStub = false;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-nextUnreadDialog.id));
        this.nextChat = chat;
        if (chat == null) {
            this.nextChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(nextUnreadDialog.id));
        }
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(this.currentAccount, this.nextChat);
        this.imageReceiver.setImage(ImageLocation.getForChat(this.nextChat, 1), "50_50", avatarDrawable, null, UserConfig.getInstance(0).getCurrentUser(), 0);
        MessagesController.getInstance(this.currentAccount).ensureMessagesLoaded(nextUnreadDialog.id, 0, null);
        int i = nextUnreadDialog.unread_count;
        this.counterDrawable.setCount(i, false);
        this.visibleCounterDrawable = i > 0;
    }

    public void updateDialog(TLRPC.Chat chat) {
        if (chat == null) {
            updateDialog();
            return;
        }
        this.nextDialogId = -chat.id;
        int[] iArr = this.params;
        this.drawFolderBackground = iArr[0] == 1;
        this.dialogFolderId = iArr[1];
        this.dialogFilterId = iArr[2];
        this.emptyStub = false;
        this.nextChat = chat;
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(this.currentAccount, this.nextChat);
        this.imageReceiver.setImage(ImageLocation.getForChat(this.nextChat, 1), "50_50", avatarDrawable, null, UserConfig.getInstance(0).getCurrentUser(), 0);
        MessagesController.getInstance(this.currentAccount).ensureMessagesLoaded(-chat.id, 0, null);
        TLRPC.Dialog dialog = MessagesController.getInstance(this.currentAccount).getDialog(-chat.id);
        int i = dialog == null ? 0 : dialog.unread_count;
        this.counterDrawable.setCount(i, false);
        this.visibleCounterDrawable = i > 0;
        this.recommendedChannel = true;
        this.nextTopic = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateTopic() {
        Drawable drawableCreateTopicDrawable;
        AnimatedEmojiDrawable animatedEmojiDrawable;
        View view;
        View view2;
        AnimatedEmojiDrawable animatedEmojiDrawable2;
        this.recommendedChannel = false;
        this.drawFolderBackground = false;
        this.nextChat = null;
        this.nextDialogId = 0L;
        this.imageReceiver.clearImage();
        TLRPC.TL_forumTopic nextUnreadTopic = getNextUnreadTopic(-this.currentDialog);
        if (nextUnreadTopic == null) {
            this.nextTopic = null;
            this.emptyStub = true;
            return;
        }
        this.emptyStub = false;
        this.nextTopic = nextUnreadTopic;
        if (nextUnreadTopic.id == 1) {
            View view3 = this.parentView;
            if (view3 != null && (animatedEmojiDrawable2 = this.animatedEmojiDrawable) != null) {
                animatedEmojiDrawable2.removeView(view3);
            }
            this.animatedEmojiDrawable = null;
            drawableCreateTopicDrawable = ForumUtilities.createGeneralTopicDrawable(this.fragmentView.getContext(), 1.0f, getThemedColor(Theme.key_chat_inMenu), false, true);
        } else {
            if (nextUnreadTopic.icon_emoji_id != 0) {
                AnimatedEmojiDrawable animatedEmojiDrawable3 = this.animatedEmojiDrawable;
                if (animatedEmojiDrawable3 == null || animatedEmojiDrawable3.getDocumentId() != nextUnreadTopic.icon_emoji_id) {
                    AnimatedEmojiDrawable animatedEmojiDrawable4 = this.animatedEmojiDrawable;
                    if (animatedEmojiDrawable4 != null && (view = this.parentView) != null) {
                        animatedEmojiDrawable4.removeView(view);
                    }
                    AnimatedEmojiDrawable animatedEmojiDrawable5 = new AnimatedEmojiDrawable(22, this.currentAccount, nextUnreadTopic.icon_emoji_id);
                    this.animatedEmojiDrawable = animatedEmojiDrawable5;
                    animatedEmojiDrawable5.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_serviceText), PorterDuff.Mode.SRC_IN));
                }
                AnimatedEmojiDrawable animatedEmojiDrawable6 = this.animatedEmojiDrawable;
                if (animatedEmojiDrawable6 != null && (view2 = this.parentView) != null) {
                    animatedEmojiDrawable6.addView(view2);
                }
                this.imageReceiver.setImageBitmap((Bitmap) null);
                int i = nextUnreadTopic.unread_count;
                this.counterDrawable.setCount(i, false);
                this.visibleCounterDrawable = i > 0;
            }
            View view4 = this.parentView;
            if (view4 != null && (animatedEmojiDrawable = this.animatedEmojiDrawable) != null) {
                animatedEmojiDrawable.removeView(view4);
            }
            this.animatedEmojiDrawable = null;
            drawableCreateTopicDrawable = ForumUtilities.createTopicDrawable(nextUnreadTopic, false);
        }
        this.imageReceiver.setImageBitmap(drawableCreateTopicDrawable);
        int i2 = nextUnreadTopic.unread_count;
        this.counterDrawable.setCount(i2, false);
        this.visibleCounterDrawable = i2 > 0;
    }
}
