package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.R;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.Theme$$ExternalSyntheticApiModelOutline0;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BlobDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RadialProgressView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class GroupCallUserCell extends FrameLayout {
    private AccountInstance accountInstance;
    private AnimatorSet animatorSet;
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImageView;
    private RadialProgressView avatarProgressView;
    private AvatarWavesDrawable avatarWavesDrawable;
    private Runnable checkRaiseRunnable;
    private ChatObject.Call currentCall;
    private TLRPC.Chat currentChat;
    private boolean currentIconGray;
    private int currentStatus;
    private TLRPC.User currentUser;
    private Paint dividerPaint;
    private SimpleTextView fullAboutTextView;
    private int grayIconColor;
    private boolean hasAvatar;
    private boolean isSpeaking;
    private int lastMuteColor;
    private boolean lastMuted;
    private boolean lastRaisedHand;
    public final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable leftDrawable;
    private RLottieImageView muteButton;
    private RLottieDrawable muteDrawable;
    private SimpleTextView nameTextView;
    private boolean needDivider;
    private TLRPC.GroupCallParticipant participant;
    private Drawable premiumDrawable;
    private float progressToAvatarPreview;
    private Runnable raiseHandCallback;
    public final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable rightDrawable;
    private long selfId;
    private Runnable shakeHandCallback;
    private RLottieDrawable shakeHandDrawable;
    private Drawable speakingDrawable;
    private SimpleTextView[] statusTextView;
    private Runnable updateRunnable;
    private boolean updateRunnableScheduled;
    private Runnable updateVoiceRunnable;
    private boolean updateVoiceRunnableScheduled;
    private Drawable verifiedDrawable;

    public static class AvatarWavesDrawable {
        float amplitude;
        float animateAmplitudeDiff;
        float animateToAmplitude;
        private BlobDrawable blobDrawable2;
        private boolean hasCustomColor;
        private int isMuted;
        boolean showWaves;
        float wavesEnter = BitmapDescriptorFactory.HUE_RED;
        private float progressToMuted = BitmapDescriptorFactory.HUE_RED;
        boolean invalidateColor = true;
        private BlobDrawable blobDrawable = new BlobDrawable(6);

        public AvatarWavesDrawable(int i, int i2) {
            BlobDrawable blobDrawable = new BlobDrawable(8);
            this.blobDrawable2 = blobDrawable;
            BlobDrawable blobDrawable2 = this.blobDrawable;
            float f = i;
            blobDrawable2.minRadius = f;
            float f2 = i2;
            blobDrawable2.maxRadius = f2;
            blobDrawable.minRadius = f;
            blobDrawable.maxRadius = f2;
            blobDrawable2.generateBlob();
            this.blobDrawable2.generateBlob();
            Paint paint = this.blobDrawable.paint;
            int i3 = Theme.key_voipgroup_speakingText;
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3), 38));
            this.blobDrawable2.paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3), 38));
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas, float f, float f2, View view) {
            if (LiteMode.isEnabled(LiteMode.FLAG_CALLS_ANIMATIONS)) {
                float f3 = (this.amplitude * 0.4f) + 0.8f;
                if (this.showWaves || this.wavesEnter != BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    float interpolation = f3 * CubicBezierInterpolator.DEFAULT.getInterpolation(this.wavesEnter);
                    canvas.scale(interpolation, interpolation, f, f2);
                    if (!this.hasCustomColor) {
                        int i = this.isMuted;
                        if (i != 1) {
                            float f4 = this.progressToMuted;
                            if (f4 != 1.0f) {
                                float f5 = f4 + 0.10666667f;
                                this.progressToMuted = f5;
                                if (f5 > 1.0f) {
                                    this.progressToMuted = 1.0f;
                                }
                            } else {
                                if (i == 1) {
                                    float f6 = this.progressToMuted;
                                    if (f6 != BitmapDescriptorFactory.HUE_RED) {
                                        float f7 = f6 - 0.10666667f;
                                        this.progressToMuted = f7;
                                        if (f7 < BitmapDescriptorFactory.HUE_RED) {
                                            this.progressToMuted = BitmapDescriptorFactory.HUE_RED;
                                        }
                                    }
                                }
                                if (this.invalidateColor) {
                                    this.blobDrawable.paint.setColor(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(Theme.getColor(Theme.key_voipgroup_speakingText), Theme.getColor(this.isMuted == 2 ? Theme.key_voipgroup_mutedByAdminIcon : Theme.key_voipgroup_listeningText), this.progressToMuted), 38));
                                }
                            }
                            this.invalidateColor = true;
                            if (this.invalidateColor) {
                            }
                        }
                    }
                    this.blobDrawable.update(this.amplitude, 1.0f);
                    BlobDrawable blobDrawable = this.blobDrawable;
                    blobDrawable.draw(f, f2, canvas, blobDrawable.paint);
                    this.blobDrawable2.update(this.amplitude, 1.0f);
                    this.blobDrawable2.draw(f, f2, canvas, this.blobDrawable.paint);
                    canvas.restore();
                }
                if (this.wavesEnter != BitmapDescriptorFactory.HUE_RED) {
                    view.invalidate();
                }
            }
        }

        public float getAvatarScale() {
            float f = (this.amplitude * 0.2f) + 0.9f;
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.wavesEnter);
            return (f * interpolation) + ((1.0f - interpolation) * 1.0f);
        }

        public void setAmplitude(double d) {
            float f = ((float) d) / 80.0f;
            boolean z = this.showWaves;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            if (f > 1.0f) {
                f2 = 1.0f;
            } else if (f >= BitmapDescriptorFactory.HUE_RED) {
                f2 = f;
            }
            this.animateToAmplitude = f2;
            this.animateAmplitudeDiff = (f2 - this.amplitude) / 200.0f;
        }

        public void setColor(int i) {
            this.hasCustomColor = true;
            this.blobDrawable.paint.setColor(i);
        }

        public void setMuted(int i, boolean z) {
            this.isMuted = i;
            if (!z) {
                this.progressToMuted = i != 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.invalidateColor = true;
        }

        public void setShowWaves(boolean z, View view) {
            if (this.showWaves != z) {
                view.invalidate();
            }
            this.showWaves = z;
        }

        public void update() {
            float f = this.animateToAmplitude;
            float f2 = this.amplitude;
            if (f != f2) {
                float f3 = this.animateAmplitudeDiff;
                float f4 = f2 + (16.0f * f3);
                this.amplitude = f4;
                if (f3 <= BitmapDescriptorFactory.HUE_RED ? f4 < f : f4 > f) {
                    this.amplitude = f;
                }
            }
            boolean z = this.showWaves;
            if (z) {
                float f5 = this.wavesEnter;
                if (f5 != 1.0f) {
                    float f6 = f5 + 0.045714285f;
                    this.wavesEnter = f6;
                    if (f6 > 1.0f) {
                        this.wavesEnter = 1.0f;
                        return;
                    }
                    return;
                }
            }
            if (z) {
                return;
            }
            float f7 = this.wavesEnter;
            if (f7 != BitmapDescriptorFactory.HUE_RED) {
                float f8 = f7 - 0.045714285f;
                this.wavesEnter = f8;
                if (f8 < BitmapDescriptorFactory.HUE_RED) {
                    this.wavesEnter = BitmapDescriptorFactory.HUE_RED;
                }
            }
        }
    }

    private static class VerifiedDrawable extends Drawable {
        private Drawable[] drawables;

        public VerifiedDrawable(Context context) {
            Drawable[] drawableArr = new Drawable[2];
            this.drawables = drawableArr;
            drawableArr[0] = context.getResources().getDrawable(R.drawable.verified_area).mutate();
            this.drawables[0].setColorFilter(new PorterDuffColorFilter(-9063442, PorterDuff.Mode.MULTIPLY));
            this.drawables[1] = context.getResources().getDrawable(R.drawable.verified_check).mutate();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int i = 0;
            while (true) {
                Drawable[] drawableArr = this.drawables;
                if (i >= drawableArr.length) {
                    return;
                }
                drawableArr[i].setBounds(getBounds());
                this.drawables[i].draw(canvas);
                i++;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.drawables[0].getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.drawables[0].getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            int i2 = 0;
            while (true) {
                Drawable[] drawableArr = this.drawables;
                if (i2 >= drawableArr.length) {
                    return;
                }
                drawableArr[i2].setAlpha(i);
                i2++;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0253 A[PHI: r8 r12 r13 r14
      0x0253: PHI (r8v53 org.telegram.ui.ActionBar.SimpleTextView) = (r8v47 org.telegram.ui.ActionBar.SimpleTextView), (r8v61 org.telegram.ui.ActionBar.SimpleTextView) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x0253: PHI (r12v9 int) = (r12v7 int), (r12v13 int) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x0253: PHI (r13v9 float) = (r13v7 float), (r13v12 float) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x0253: PHI (r14v4 float) = (r14v3 float), (r14v6 float) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x025c A[PHI: r8 r12 r13 r14
      0x025c: PHI (r8v55 org.telegram.ui.ActionBar.SimpleTextView) = (r8v47 org.telegram.ui.ActionBar.SimpleTextView), (r8v61 org.telegram.ui.ActionBar.SimpleTextView) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x025c: PHI (r12v10 int) = (r12v7 int), (r12v13 int) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x025c: PHI (r13v10 float) = (r13v7 float), (r13v12 float) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x025c: PHI (r14v5 float) = (r14v3 float), (r14v6 float) binds: [B:77:0x0251, B:57:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GroupCallUserCell(Context context) throws Resources.NotFoundException {
        SimpleTextView simpleTextView;
        int i;
        SimpleTextView simpleTextView2;
        boolean z;
        int i2;
        float f;
        float f2;
        int i3;
        float f3;
        float f4;
        float f5;
        super(context);
        this.statusTextView = new SimpleTextView[5];
        this.shakeHandCallback = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.raiseHandCallback = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.grayIconColor = Theme.key_voipgroup_mutedIcon;
        this.checkRaiseRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.updateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        };
        this.updateVoiceRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4();
            }
        };
        Paint paint = new Paint();
        this.dividerPaint = paint;
        paint.setColor(Theme.getColor(Theme.key_voipgroup_actionBar));
        this.avatarDrawable = new AvatarDrawable();
        setClipChildren(false);
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(24.0f));
        BackupImageView backupImageView2 = this.avatarImageView;
        boolean z2 = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(46, 46.0f, (z2 ? 5 : 3) | 48, z2 ? BitmapDescriptorFactory.HUE_RED : 11.0f, 6.0f, z2 ? 11.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.Cells.GroupCallUserCell.1
            private Paint paint;

            {
                Paint paint2 = new Paint(1);
                this.paint = paint2;
                paint2.setColor(1426063360);
            }

            @Override // org.telegram.ui.Components.RadialProgressView, android.view.View
            protected void onDraw(Canvas canvas) {
                if (GroupCallUserCell.this.avatarImageView.getImageReceiver().hasNotThumb() && GroupCallUserCell.this.avatarImageView.getAlpha() > BitmapDescriptorFactory.HUE_RED) {
                    this.paint.setAlpha((int) (GroupCallUserCell.this.avatarImageView.getImageReceiver().getCurrentAlpha() * 85.0f * GroupCallUserCell.this.avatarImageView.getAlpha()));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, getMeasuredWidth() / 2.0f, this.paint);
                }
                GroupCallUserCell.this.avatarProgressView.setProgressColor(ColorUtils.setAlphaComponent(-1, (int) (GroupCallUserCell.this.avatarImageView.getImageReceiver().getCurrentAlpha() * 255.0f * GroupCallUserCell.this.avatarImageView.getAlpha())));
                super.onDraw(canvas);
            }
        };
        this.avatarProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(26.0f));
        this.avatarProgressView.setProgressColor(-1);
        this.avatarProgressView.setNoProgress(false);
        RadialProgressView radialProgressView2 = this.avatarProgressView;
        boolean z3 = LocaleController.isRTL;
        addView(radialProgressView2, LayoutHelper.createFrame(46, 46.0f, (z3 ? 5 : 3) | 48, z3 ? BitmapDescriptorFactory.HUE_RED : 11.0f, 6.0f, z3 ? 11.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        AndroidUtilities.updateViewVisibilityAnimated(this.avatarProgressView, false, 1.0f, false);
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.nameTextView = simpleTextView3;
        simpleTextView3.setTextColor(Theme.getColor(Theme.key_voipgroup_nameText));
        this.nameTextView.setTypeface(AndroidUtilities.bold());
        this.nameTextView.setTextSize(16);
        this.nameTextView.setDrawablePadding(AndroidUtilities.dp(6.0f));
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        SimpleTextView simpleTextView4 = this.nameTextView;
        boolean z4 = LocaleController.isRTL;
        addView(simpleTextView4, LayoutHelper.createFrame(-1, 20.0f, (z4 ? 5 : 3) | 48, z4 ? 54.0f : 67.0f, 10.0f, z4 ? 67.0f : 54.0f, BitmapDescriptorFactory.HUE_RED));
        this.leftDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView, AndroidUtilities.dp(20.0f), 9);
        this.rightDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView, AndroidUtilities.dp(20.0f), 9);
        Drawable drawable = context.getResources().getDrawable(R.drawable.voice_volume_mini);
        this.speakingDrawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_voipgroup_speakingText), PorterDuff.Mode.MULTIPLY));
        final int i4 = 0;
        while (true) {
            SimpleTextView[] simpleTextViewArr = this.statusTextView;
            if (i4 >= simpleTextViewArr.length) {
                break;
            }
            simpleTextViewArr[i4] = new SimpleTextView(context) { // from class: org.telegram.ui.Cells.GroupCallUserCell.2
                float originalAlpha;

                @Override // android.view.View
                public float getAlpha() {
                    return this.originalAlpha;
                }

                @Override // android.view.View
                public void setAlpha(float f6) {
                    this.originalAlpha = f6;
                    if (i4 == 4) {
                        float fullAlpha = GroupCallUserCell.this.statusTextView[4].getFullAlpha();
                        if (GroupCallUserCell.this.isSelfUser() && GroupCallUserCell.this.progressToAvatarPreview > BitmapDescriptorFactory.HUE_RED) {
                            super.setAlpha(1.0f - GroupCallUserCell.this.progressToAvatarPreview);
                            return;
                        } else if (fullAlpha > BitmapDescriptorFactory.HUE_RED) {
                            f6 = Math.max(f6, fullAlpha);
                        }
                    } else {
                        f6 *= 1.0f - GroupCallUserCell.this.statusTextView[4].getFullAlpha();
                    }
                    super.setAlpha(f6);
                }

                @Override // org.telegram.ui.ActionBar.SimpleTextView
                public void setFullAlpha(float f6) {
                    super.setFullAlpha(f6);
                    for (int i5 = 0; i5 < GroupCallUserCell.this.statusTextView.length; i5++) {
                        GroupCallUserCell.this.statusTextView[i5].setAlpha(GroupCallUserCell.this.statusTextView[i5].getAlpha());
                    }
                }

                @Override // android.view.View
                public void setTranslationY(float f6) {
                    if (i4 == 4 && getFullAlpha() > BitmapDescriptorFactory.HUE_RED) {
                        f6 = BitmapDescriptorFactory.HUE_RED;
                    }
                    super.setTranslationY(f6);
                }
            };
            this.statusTextView[i4].setTextSize(15);
            this.statusTextView[i4].setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            if (i4 == 4) {
                this.statusTextView[i4].setBuildFullLayout(true);
                this.statusTextView[i4].setTextColor(Theme.getColor(Theme.key_voipgroup_mutedIcon));
                simpleTextView2 = this.statusTextView[i4];
                boolean z5 = LocaleController.isRTL;
                i2 = (z5 ? 5 : 3) | 48;
                f = z5 ? 54.0f : 67.0f;
                f2 = -2.0f;
                if (z5) {
                    i3 = i2;
                    f3 = f;
                    f4 = f2;
                    f5 = 67.0f;
                } else {
                    i3 = i2;
                    f3 = f;
                    f4 = f2;
                    f5 = 54.0f;
                }
            } else {
                if (i4 == 0) {
                    this.statusTextView[i4].setTextColor(Theme.getColor(Theme.key_voipgroup_listeningText));
                    simpleTextView = this.statusTextView[i4];
                    i = R.string.Listening;
                } else {
                    if (i4 == 1) {
                        this.statusTextView[i4].setTextColor(Theme.getColor(Theme.key_voipgroup_speakingText));
                        this.statusTextView[i4].setText(LocaleController.getString(R.string.Speaking));
                        this.statusTextView[i4].setDrawablePadding(AndroidUtilities.dp(2.0f));
                    } else if (i4 == 2) {
                        this.statusTextView[i4].setTextColor(Theme.getColor(Theme.key_voipgroup_mutedByAdminIcon));
                        simpleTextView = this.statusTextView[i4];
                        i = R.string.VoipGroupMutedForMe;
                    } else if (i4 == 3) {
                        this.statusTextView[i4].setTextColor(Theme.getColor(Theme.key_voipgroup_listeningText));
                        simpleTextView = this.statusTextView[i4];
                        i = R.string.WantsToSpeak;
                    }
                    simpleTextView2 = this.statusTextView[i4];
                    z = LocaleController.isRTL;
                    i2 = (!z ? 5 : 3) | 48;
                    f = !z ? 54.0f : 67.0f;
                    f2 = 20.0f;
                    if (!z) {
                    }
                }
                simpleTextView.setText(LocaleController.getString(i));
                simpleTextView2 = this.statusTextView[i4];
                z = LocaleController.isRTL;
                i2 = (!z ? 5 : 3) | 48;
                if (!z) {
                }
                f2 = 20.0f;
                if (!z) {
                }
            }
            addView(simpleTextView2, LayoutHelper.createFrame(-1, f4, i3, f3, 32.0f, f5, BitmapDescriptorFactory.HUE_RED));
            i4++;
        }
        SimpleTextView simpleTextView5 = new SimpleTextView(context);
        this.fullAboutTextView = simpleTextView5;
        simpleTextView5.setMaxLines(3);
        this.fullAboutTextView.setTextSize(15);
        this.fullAboutTextView.setTextColor(Theme.getColor(Theme.key_voipgroup_mutedIcon));
        this.fullAboutTextView.setVisibility(8);
        addView(this.fullAboutTextView, LayoutHelper.createFrame(-1, 60.0f, (LocaleController.isRTL ? 5 : 3) | 48, 14.0f, 32.0f, 14.0f, BitmapDescriptorFactory.HUE_RED));
        int i5 = R.raw.voice_outlined2;
        this.muteDrawable = new RLottieDrawable(i5, "" + i5, AndroidUtilities.dp(34.0f), AndroidUtilities.dp(32.0f), true, null);
        int i6 = R.raw.hand_1;
        this.shakeHandDrawable = new RLottieDrawable(i6, "" + i6, AndroidUtilities.dp(34.0f), AndroidUtilities.dp(32.0f), true, null);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteButton = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.muteButton.setAnimation(this.muteDrawable);
        if (Build.VERSION.SDK_INT >= 21) {
            RippleDrawable rippleDrawableM = Theme$$ExternalSyntheticApiModelOutline0.m(Theme.createSelectorDrawable(Theme.getColor(this.grayIconColor) & 620756991));
            Theme.setRippleDrawableForceSoftware(rippleDrawableM);
            this.muteButton.setBackground(rippleDrawableM);
        }
        this.muteButton.setImportantForAccessibility(2);
        addView(this.muteButton, LayoutHelper.createFrame(48, -1.0f, (LocaleController.isRTL ? 3 : 5) | 16, 6.0f, BitmapDescriptorFactory.HUE_RED, 6.0f, BitmapDescriptorFactory.HUE_RED));
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        this.avatarWavesDrawable = new AvatarWavesDrawable(AndroidUtilities.dp(26.0f), AndroidUtilities.dp(29.0f));
        setWillNotDraw(false);
        setFocusable(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0141 A[PHI: r2 r6
      0x0141: PHI (r2v31 int) = (r2v26 int), (r2v28 int), (r2v36 int) binds: [B:94:0x013f, B:87:0x0130, B:70:0x00f1] A[DONT_GENERATE, DONT_INLINE]
      0x0141: PHI (r6v13 boolean) = (r6v10 boolean), (r6v10 boolean), (r6v15 boolean) binds: [B:94:0x013f, B:87:0x0130, B:70:0x00f1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0144 A[PHI: r2 r6
      0x0144: PHI (r2v33 int) = (r2v26 int), (r2v28 int), (r2v36 int) binds: [B:94:0x013f, B:87:0x0130, B:70:0x00f1] A[DONT_GENERATE, DONT_INLINE]
      0x0144: PHI (r6v14 boolean) = (r6v10 boolean), (r6v10 boolean), (r6v15 boolean) binds: [B:94:0x013f, B:87:0x0130, B:70:0x00f1] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void applyParticipantChanges(boolean z, boolean z2) {
        final int color;
        final int i;
        boolean z3;
        ArrayList arrayList;
        float fDp;
        boolean customEndFrame;
        RLottieDrawable rLottieDrawable;
        int i2;
        SimpleTextView simpleTextView;
        int i3;
        SimpleTextView simpleTextView2;
        int i4;
        SimpleTextView simpleTextView3;
        int textColor;
        SimpleTextView simpleTextView4;
        int i5;
        int color2;
        boolean z4 = false;
        if (this.currentCall == null) {
            return;
        }
        this.muteButton.setEnabled((isSelfUser() && this.participant.raise_hand_rating == 0) ? false : true);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        TLRPC.GroupCallParticipant groupCallParticipant = this.participant;
        boolean z5 = jElapsedRealtime - groupCallParticipant.lastVoiceUpdateTime < 500 ? groupCallParticipant.hasVoiceDelayed : groupCallParticipant.hasVoice;
        if (!z2) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.participant.lastSpeakTime;
            boolean z6 = jUptimeMillis < 500;
            if (!this.isSpeaking || !z6 || z5) {
                this.isSpeaking = z6;
                if (this.updateRunnableScheduled) {
                    AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
                    this.updateRunnableScheduled = false;
                }
                if (this.isSpeaking) {
                    AndroidUtilities.runOnUIThread(this.updateRunnable, 500 - jUptimeMillis);
                    this.updateRunnableScheduled = true;
                }
            }
        }
        TLRPC.GroupCallParticipant groupCallParticipant2 = (TLRPC.GroupCallParticipant) this.currentCall.participants.get(MessageObject.getPeerId(this.participant.peer));
        if (groupCallParticipant2 != null) {
            this.participant = groupCallParticipant2;
        }
        boolean z7 = this.participant.muted_by_you && !isSelfUser();
        boolean z8 = !isSelfUser() ? (!this.participant.muted || (this.isSpeaking && z5)) && !z7 : VoIPService.getSharedInstance() == null || !VoIPService.getSharedInstance().isMicMute() || (this.isSpeaking && z5);
        if (z8) {
            boolean z9 = this.participant.can_self_unmute;
        }
        boolean z10 = !TextUtils.isEmpty(this.participant.about);
        this.currentIconGray = false;
        AndroidUtilities.cancelRunOnUIThread(this.checkRaiseRunnable);
        TLRPC.GroupCallParticipant groupCallParticipant3 = this.participant;
        if ((!groupCallParticipant3.muted || this.isSpeaking) && !z7) {
            if (this.isSpeaking && z5) {
                color = Theme.getColor(Theme.key_voipgroup_speakingText);
                i = 1;
            } else {
                color = Theme.getColor(this.grayIconColor);
                i = z10 ? 4 : 0;
                this.currentIconGray = true;
            }
            z3 = false;
        } else {
            boolean z11 = groupCallParticipant3.can_self_unmute;
            if (!z11 || z7) {
                z3 = (z11 || groupCallParticipant3.raise_hand_rating == 0) ? false : true;
                if (z3) {
                    int color3 = Theme.getColor(Theme.key_voipgroup_listeningText);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j = this.participant.lastRaiseHandDate;
                    long j2 = jElapsedRealtime2 - j;
                    if (j != 0 && j2 <= 5000) {
                        AndroidUtilities.runOnUIThread(this.checkRaiseRunnable, 5000 - j2);
                        color = color3;
                        i = 3;
                    } else if (z7) {
                        color = color3;
                        i = 2;
                    } else {
                        color2 = color3;
                        if (z10) {
                            color = color2;
                            i = 4;
                        } else {
                            color = color2;
                            i = 0;
                        }
                    }
                } else {
                    int color4 = Theme.getColor(Theme.key_voipgroup_mutedByAdminIcon);
                    if (z7) {
                        color = color4;
                        i = 2;
                    } else {
                        color2 = color4;
                        if (z10) {
                        }
                    }
                }
            } else {
                color2 = Theme.getColor(this.grayIconColor);
                this.currentIconGray = true;
                z3 = false;
                if (z10) {
                }
            }
        }
        if (!isSelfUser()) {
            this.statusTextView[4].setTextColor(Theme.getColor(this.grayIconColor));
        }
        if (isSelfUser()) {
            if (!z10 && !this.hasAvatar) {
                if (this.currentUser != null) {
                    simpleTextView4 = this.statusTextView[4];
                    i5 = R.string.TapToAddPhotoOrBio;
                } else {
                    simpleTextView4 = this.statusTextView[4];
                    i5 = R.string.TapToAddPhotoOrDescription;
                }
                simpleTextView4.setText(LocaleController.getString(i5));
                simpleTextView = this.statusTextView[4];
            } else if (!z10) {
                if (this.currentUser != null) {
                    simpleTextView2 = this.statusTextView[4];
                    i4 = R.string.TapToAddBio;
                } else {
                    simpleTextView2 = this.statusTextView[4];
                    i4 = R.string.TapToAddDescription;
                }
                simpleTextView2.setText(LocaleController.getString(i4));
                simpleTextView = this.statusTextView[4];
            } else if (this.hasAvatar) {
                this.statusTextView[4].setText(LocaleController.getString(R.string.ThisIsYou));
                simpleTextView = this.statusTextView[4];
                i3 = Theme.key_voipgroup_listeningText;
                simpleTextView.setTextColor(Theme.getColor(i3));
                if (z10) {
                    this.fullAboutTextView.setText(this.statusTextView[i].getText());
                    simpleTextView3 = this.fullAboutTextView;
                    textColor = this.statusTextView[i].getTextColor();
                } else {
                    this.fullAboutTextView.setText(AndroidUtilities.replaceNewLines(this.participant.about));
                    simpleTextView3 = this.fullAboutTextView;
                    textColor = Theme.getColor(Theme.key_voipgroup_mutedIcon);
                }
                simpleTextView3.setTextColor(textColor);
            } else {
                this.statusTextView[4].setText(LocaleController.getString(R.string.TapToAddPhoto));
                simpleTextView = this.statusTextView[4];
            }
            i3 = this.grayIconColor;
            simpleTextView.setTextColor(Theme.getColor(i3));
            if (z10) {
            }
            simpleTextView3.setTextColor(textColor);
        } else {
            if (z10) {
                this.statusTextView[4].setText(AndroidUtilities.replaceNewLines(this.participant.about));
            } else {
                this.statusTextView[4].setText("");
            }
            this.fullAboutTextView.setText("");
        }
        AnimatorSet animatorSet = this.animatorSet;
        boolean z12 = (animatorSet == null || (i == this.currentStatus && this.lastMuteColor == color)) ? false : true;
        if ((!z || z12) && animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        if (z && this.lastMuteColor == color && !z12) {
            arrayList = null;
        } else if (z) {
            arrayList = new ArrayList();
            final int i6 = this.lastMuteColor;
            this.lastMuteColor = color;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$applyParticipantChanges$6(i6, color, valueAnimator);
                }
            });
            arrayList.add(valueAnimatorOfFloat);
        } else {
            RLottieImageView rLottieImageView = this.muteButton;
            this.lastMuteColor = color;
            rLottieImageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), 620756991 & color, true);
            arrayList = null;
        }
        if (i == 1) {
            int participantVolume = ChatObject.getParticipantVolume(this.participant);
            int i7 = participantVolume / 100;
            if (i7 != 100) {
                this.statusTextView[1].setLeftDrawable(this.speakingDrawable);
                SimpleTextView simpleTextView5 = this.statusTextView[1];
                int i8 = R.string.SpeakingWithVolume;
                if (participantVolume < 100) {
                    i7 = 1;
                }
                simpleTextView5.setText(LocaleController.formatString("SpeakingWithVolume", i8, Integer.valueOf(i7)));
            } else {
                this.statusTextView[1].setLeftDrawable((Drawable) null);
                this.statusTextView[1].setText(LocaleController.getString(R.string.Speaking));
            }
        }
        if (isSelfUser()) {
            applyStatus(4);
        } else if (!z || i != this.currentStatus || z12) {
            if (z) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                int i9 = 0;
                if (i != 0) {
                    while (true) {
                        SimpleTextView[] simpleTextViewArr = this.statusTextView;
                        if (i9 >= simpleTextViewArr.length) {
                            break;
                        }
                        SimpleTextView simpleTextView6 = simpleTextViewArr[i9];
                        Property property = View.TRANSLATION_Y;
                        if (i9 == i) {
                            fDp = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            fDp = AndroidUtilities.dp(i9 == 0 ? 2.0f : -2.0f);
                        }
                        arrayList.add(ObjectAnimator.ofFloat(simpleTextView6, (Property<SimpleTextView, Float>) property, fDp));
                        arrayList.add(ObjectAnimator.ofFloat(this.statusTextView[i9], (Property<SimpleTextView, Float>) View.ALPHA, i9 == i ? 1.0f : BitmapDescriptorFactory.HUE_RED));
                        i9++;
                    }
                } else {
                    while (true) {
                        SimpleTextView[] simpleTextViewArr2 = this.statusTextView;
                        if (i9 >= simpleTextViewArr2.length) {
                            break;
                        }
                        arrayList.add(ObjectAnimator.ofFloat(simpleTextViewArr2[i9], (Property<SimpleTextView, Float>) View.TRANSLATION_Y, i9 == i ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(-2.0f)));
                        arrayList.add(ObjectAnimator.ofFloat(this.statusTextView[i9], (Property<SimpleTextView, Float>) View.ALPHA, i9 == i ? 1.0f : BitmapDescriptorFactory.HUE_RED));
                        i9++;
                    }
                }
            } else {
                applyStatus(i);
            }
            this.currentStatus = i;
        }
        this.avatarWavesDrawable.setMuted(i, z);
        if (arrayList != null) {
            AnimatorSet animatorSet2 = this.animatorSet;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
                this.animatorSet = null;
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            this.animatorSet = animatorSet3;
            animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.GroupCallUserCell.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!GroupCallUserCell.this.isSelfUser()) {
                        GroupCallUserCell.this.applyStatus(i);
                    }
                    GroupCallUserCell.this.animatorSet = null;
                }
            });
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.setDuration(180L);
            this.animatorSet.start();
        }
        if (!z || this.lastMuted != z8 || this.lastRaisedHand != z3) {
            if (z3) {
                customEndFrame = this.muteDrawable.setCustomEndFrame(84);
                if (z) {
                    this.muteDrawable.setOnFinishCallback(this.raiseHandCallback, 83);
                } else {
                    this.muteDrawable.setOnFinishCallback(null, 0);
                }
            } else {
                this.muteButton.setAnimation(this.muteDrawable);
                this.muteDrawable.setOnFinishCallback(null, 0);
                if (z8 && this.lastRaisedHand) {
                    customEndFrame = this.muteDrawable.setCustomEndFrame(21);
                } else {
                    customEndFrame = this.muteDrawable.setCustomEndFrame(z8 ? 64 : 42);
                }
            }
            if (z) {
                if (customEndFrame) {
                    if (i == 3) {
                        rLottieDrawable = this.muteDrawable;
                        i2 = 63;
                    } else if (z8 && this.lastRaisedHand && !z3) {
                        this.muteDrawable.setCurrentFrame(0);
                    } else {
                        rLottieDrawable = this.muteDrawable;
                        if (z8) {
                            i2 = 43;
                        } else {
                            rLottieDrawable.setCurrentFrame(21);
                        }
                    }
                    rLottieDrawable.setCurrentFrame(i2);
                }
                this.muteButton.playAnimation();
            } else {
                RLottieDrawable rLottieDrawable2 = this.muteDrawable;
                rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getCustomEndFrame() - 1, false, true);
                this.muteButton.invalidate();
            }
            this.lastMuted = z8;
            this.lastRaisedHand = z3;
        }
        if (!this.isSpeaking) {
            this.avatarWavesDrawable.setAmplitude(0.0d);
        }
        AvatarWavesDrawable avatarWavesDrawable = this.avatarWavesDrawable;
        if (this.isSpeaking && this.progressToAvatarPreview == BitmapDescriptorFactory.HUE_RED) {
            z4 = true;
        }
        avatarWavesDrawable.setShowWaves(z4, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyStatus(int i) {
        float fDp;
        int i2 = 0;
        if (i == 0) {
            while (true) {
                SimpleTextView[] simpleTextViewArr = this.statusTextView;
                if (i2 >= simpleTextViewArr.length) {
                    return;
                }
                simpleTextViewArr[i2].setTranslationY(i2 == i ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(-2.0f));
                this.statusTextView[i2].setAlpha(i2 == i ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                i2++;
            }
        } else {
            while (true) {
                SimpleTextView[] simpleTextViewArr2 = this.statusTextView;
                if (i2 >= simpleTextViewArr2.length) {
                    return;
                }
                SimpleTextView simpleTextView = simpleTextViewArr2[i2];
                if (i2 == i) {
                    fDp = BitmapDescriptorFactory.HUE_RED;
                } else {
                    fDp = AndroidUtilities.dp(i2 == 0 ? 2.0f : -2.0f);
                }
                simpleTextView.setTranslationY(fDp);
                this.statusTextView[i2].setAlpha(i2 == i ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyParticipantChanges$6(int i, int i2, ValueAnimator valueAnimator) {
        int offsetColor = AndroidUtilities.getOffsetColor(i, i2, valueAnimator.getAnimatedFraction(), 1.0f);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(offsetColor, PorterDuff.Mode.MULTIPLY));
        Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), offsetColor & 620756991, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.shakeHandDrawable.setOnFinishCallback(null, 0);
        this.muteDrawable.setOnFinishCallback(null, 0);
        this.muteButton.setAnimation(this.muteDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        int i;
        int iNextInt = Utilities.random.nextInt(100);
        int i2 = R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (iNextInt < 32) {
            i = 0;
        } else {
            i = 240;
            if (iNextInt < 64) {
                i2 = 240;
                i = R.styleable.AppCompatTheme_windowFixedHeightMajor;
            } else {
                i2 = 420;
                if (iNextInt >= 97) {
                    i = 540;
                    if (iNextInt == 98) {
                        i2 = 540;
                        i = 420;
                    } else {
                        i2 = 720;
                    }
                }
            }
        }
        this.shakeHandDrawable.setCustomEndFrame(i2);
        this.shakeHandDrawable.setOnFinishCallback(this.shakeHandCallback, i2 - 1);
        this.muteButton.setAnimation(this.shakeHandDrawable);
        this.shakeHandDrawable.setCurrentFrame(i);
        this.muteButton.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        applyParticipantChanges(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        this.isSpeaking = false;
        applyParticipantChanges(true, true);
        this.avatarWavesDrawable.setAmplitude(0.0d);
        this.updateRunnableScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        applyParticipantChanges(true, true);
        this.updateVoiceRunnableScheduled = false;
    }

    public void applyParticipantChanges(boolean z) {
        applyParticipantChanges(z, false);
    }

    public boolean clickMuteButton() {
        if (!this.muteButton.isEnabled()) {
            return false;
        }
        this.muteButton.callOnClick();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.needDivider) {
            float f = this.progressToAvatarPreview;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                this.dividerPaint.setAlpha((int) ((1.0f - f) * 255.0f));
            } else {
                this.dividerPaint.setAlpha((int) ((1.0f - this.statusTextView[4].getFullAlpha()) * 255.0f));
            }
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(68.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(68.0f) : 0), getMeasuredHeight() - 1, this.dividerPaint);
        }
        int left = this.avatarImageView.getLeft() + (this.avatarImageView.getMeasuredWidth() / 2);
        int top = this.avatarImageView.getTop() + (this.avatarImageView.getMeasuredHeight() / 2);
        this.avatarWavesDrawable.update();
        if (this.progressToAvatarPreview == BitmapDescriptorFactory.HUE_RED) {
            this.avatarWavesDrawable.draw(canvas, left, top, this);
        }
        this.avatarImageView.setScaleX(this.avatarWavesDrawable.getAvatarScale());
        this.avatarImageView.setScaleY(this.avatarWavesDrawable.getAvatarScale());
        this.avatarProgressView.setScaleX(this.avatarWavesDrawable.getAvatarScale());
        this.avatarProgressView.setScaleY(this.avatarWavesDrawable.getAvatarScale());
        super.dispatchDraw(canvas);
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    public AvatarWavesDrawable getAvatarWavesDrawable() {
        return this.avatarWavesDrawable;
    }

    public int getClipHeight() {
        SimpleTextView simpleTextView = (TextUtils.isEmpty(this.fullAboutTextView.getText()) || !this.hasAvatar) ? this.statusTextView[4] : this.fullAboutTextView;
        if (simpleTextView.getLineCount() > 1) {
            return simpleTextView.getTop() + simpleTextView.getTextHeight() + AndroidUtilities.dp(8.0f);
        }
        return getMeasuredHeight();
    }

    public CharSequence getName() {
        return this.nameTextView.getText();
    }

    public TLRPC.GroupCallParticipant getParticipant() {
        return this.participant;
    }

    public long getPeerId() {
        TLRPC.GroupCallParticipant groupCallParticipant = this.participant;
        if (groupCallParticipant == null) {
            return 0L;
        }
        return MessageObject.getPeerId(groupCallParticipant.peer);
    }

    public boolean hasAvatarSet() {
        return this.avatarImageView.getImageReceiver().hasNotThumb();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isHandRaised() {
        return this.lastRaisedHand;
    }

    public boolean isSelfUser() {
        long j = this.selfId;
        if (j > 0) {
            TLRPC.User user = this.currentUser;
            return user != null && user.id == j;
        }
        TLRPC.Chat chat = this.currentChat;
        return chat != null && chat.id == (-j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        applyParticipantChanges(false);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.leftDrawable;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.updateRunnableScheduled) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            this.updateRunnableScheduled = false;
        }
        if (this.updateVoiceRunnableScheduled) {
            AndroidUtilities.cancelRunOnUIThread(this.updateVoiceRunnable);
            this.updateVoiceRunnableScheduled = false;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.leftDrawable;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.detach();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (!accessibilityNodeInfo.isEnabled() || Build.VERSION.SDK_INT < 21) {
            return;
        }
        TLRPC.GroupCallParticipant groupCallParticipant = this.participant;
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString((!groupCallParticipant.muted || groupCallParticipant.can_self_unmute) ? R.string.VoipMute : R.string.VoipUnmute)));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(58.0f), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onMuteClick, reason: merged with bridge method [inline-methods] */
    public void lambda$new$5(GroupCallUserCell groupCallUserCell) {
    }

    public void setAboutVisible(boolean z) {
        if (z) {
            this.statusTextView[4].setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.statusTextView[4].setFullAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        invalidate();
    }

    public void setAboutVisibleProgress(int i, float f) {
        if (TextUtils.isEmpty(this.statusTextView[4].getText())) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        this.statusTextView[4].setFullAlpha(f);
        this.statusTextView[4].setFullLayoutAdditionalWidth(0, 0);
        invalidate();
    }

    public void setAmplitude(double d) {
        if (d <= 1.5d) {
            this.avatarWavesDrawable.setAmplitude(0.0d);
            return;
        }
        if (this.updateRunnableScheduled) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
        }
        if (!this.isSpeaking) {
            this.isSpeaking = true;
            applyParticipantChanges(true);
        }
        this.avatarWavesDrawable.setAmplitude(d);
        AndroidUtilities.runOnUIThread(this.updateRunnable, 500L);
        this.updateRunnableScheduled = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setData(AccountInstance accountInstance, TLRPC.GroupCallParticipant groupCallParticipant, ChatObject.Call call, long j, TLRPC.FileLocation fileLocation, boolean z) {
        long botVerificationIcon;
        ImageLocation forChat;
        BackupImageView backupImageView;
        AvatarDrawable avatarDrawable;
        Object obj;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        Drawable verifiedDrawable;
        this.currentCall = call;
        this.accountInstance = accountInstance;
        this.selfId = j;
        this.participant = groupCallParticipant;
        long peerId = MessageObject.getPeerId(groupCallParticipant.peer);
        if (peerId > 0) {
            this.currentUser = this.accountInstance.getMessagesController().getUser(Long.valueOf(peerId));
            this.currentChat = null;
            this.avatarDrawable.setInfo(this.accountInstance.getCurrentAccount(), this.currentUser);
            this.nameTextView.setText(UserObject.getUserName(this.currentUser));
            botVerificationIcon = DialogObject.getBotVerificationIcon(this.currentUser);
            TLRPC.User user = this.currentUser;
            if (user == null || !user.verified) {
                if (user == null || DialogObject.getEmojiStatusDocumentId(user.emoji_status) == 0) {
                    TLRPC.User user2 = this.currentUser;
                    if (user2 == null || !user2.premium) {
                        this.rightDrawable.set((Drawable) null, z);
                    } else {
                        if (this.premiumDrawable == null) {
                            this.premiumDrawable = getContext().getResources().getDrawable(R.drawable.msg_premium_liststar).mutate();
                            this.premiumDrawable = new AnimatedEmojiDrawable.WrapSizeDrawable(this.premiumDrawable, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f)) { // from class: org.telegram.ui.Cells.GroupCallUserCell.3
                                @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                                public void draw(Canvas canvas) {
                                    canvas.save();
                                    canvas.translate(AndroidUtilities.dp(-2.0f), AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED));
                                    super.draw(canvas);
                                    canvas.restore();
                                }
                            };
                        }
                        swapAnimatedEmojiDrawable = this.rightDrawable;
                        verifiedDrawable = this.premiumDrawable;
                    }
                } else {
                    this.rightDrawable.set(DialogObject.getEmojiStatusDocumentId(this.currentUser.emoji_status), z);
                }
                this.rightDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_premiumGradient1)));
                this.nameTextView.setRightDrawable(this.rightDrawable);
                this.avatarImageView.getImageReceiver().setCurrentAccount(accountInstance.getCurrentAccount());
                if (fileLocation == null) {
                    forChat = ImageLocation.getForUser(this.currentUser, 1);
                    this.hasAvatar = forChat != null;
                    backupImageView = this.avatarImageView;
                    avatarDrawable = this.avatarDrawable;
                    obj = this.currentUser;
                    backupImageView.setImage(forChat, "50_50", avatarDrawable, obj);
                }
                this.hasAvatar = true;
                this.avatarImageView.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, (Object) null);
            } else {
                swapAnimatedEmojiDrawable = this.rightDrawable;
                verifiedDrawable = this.verifiedDrawable;
                if (verifiedDrawable == null) {
                    verifiedDrawable = new VerifiedDrawable(getContext());
                }
                this.verifiedDrawable = verifiedDrawable;
            }
            swapAnimatedEmojiDrawable.set(verifiedDrawable, z);
            this.rightDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_premiumGradient1)));
            this.nameTextView.setRightDrawable(this.rightDrawable);
            this.avatarImageView.getImageReceiver().setCurrentAccount(accountInstance.getCurrentAccount());
            if (fileLocation == null) {
            }
            this.hasAvatar = true;
            this.avatarImageView.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, (Object) null);
        } else {
            this.currentChat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-peerId));
            this.currentUser = null;
            this.avatarDrawable.setInfo(this.accountInstance.getCurrentAccount(), this.currentChat);
            botVerificationIcon = DialogObject.getBotVerificationIcon(this.currentChat);
            TLRPC.Chat chat = this.currentChat;
            if (chat != null) {
                this.nameTextView.setText(chat.title);
                TLRPC.Chat chat2 = this.currentChat;
                if (chat2.verified) {
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.rightDrawable;
                    Drawable verifiedDrawable2 = this.verifiedDrawable;
                    if (verifiedDrawable2 == null) {
                        verifiedDrawable2 = new VerifiedDrawable(getContext());
                    }
                    this.verifiedDrawable = verifiedDrawable2;
                    swapAnimatedEmojiDrawable2.set(verifiedDrawable2, z);
                } else {
                    long emojiStatusDocumentId = DialogObject.getEmojiStatusDocumentId(chat2.emoji_status);
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable3 = this.rightDrawable;
                    if (emojiStatusDocumentId != 0) {
                        swapAnimatedEmojiDrawable3.set(DialogObject.getEmojiStatusDocumentId(this.currentChat.emoji_status), z);
                    } else {
                        swapAnimatedEmojiDrawable3.set((Drawable) null, z);
                    }
                }
                this.avatarImageView.getImageReceiver().setCurrentAccount(accountInstance.getCurrentAccount());
                if (fileLocation == null) {
                    forChat = ImageLocation.getForChat(this.currentChat, 1);
                    this.hasAvatar = forChat != null;
                    backupImageView = this.avatarImageView;
                    avatarDrawable = this.avatarDrawable;
                    obj = this.currentChat;
                    backupImageView.setImage(forChat, "50_50", avatarDrawable, obj);
                }
                this.hasAvatar = true;
                this.avatarImageView.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, (Object) null);
            }
        }
        if (botVerificationIcon != 0) {
            this.leftDrawable.set(botVerificationIcon, z);
            this.nameTextView.setLeftDrawable(this.leftDrawable);
            this.leftDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_premiumGradient1)));
        } else {
            this.leftDrawable.set((Drawable) null, z);
            this.nameTextView.setLeftDrawable((Drawable) null);
        }
        applyParticipantChanges(z);
    }

    public void setDrawAvatar(boolean z) {
        if (this.avatarImageView.getImageReceiver().getVisible() != z) {
            this.avatarImageView.getImageReceiver().setVisible(z, true);
        }
    }

    public void setDrawDivider(boolean z) {
        this.needDivider = z;
        invalidate();
    }

    public void setGrayIconColor(int i, int i2) {
        if (this.grayIconColor != i) {
            if (this.currentIconGray) {
                this.lastMuteColor = Theme.getColor(i);
            }
            this.grayIconColor = i;
        }
        if (this.currentIconGray) {
            this.muteButton.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
            Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), i2 & 620756991, true);
        }
    }

    public void setProgressToAvatarPreview(float f) {
        this.progressToAvatarPreview = f;
        this.nameTextView.setTranslationX((LocaleController.isRTL ? AndroidUtilities.dp(53.0f) : -AndroidUtilities.dp(53.0f)) * f);
        if (!isSelfUser() || f <= BitmapDescriptorFactory.HUE_RED) {
            this.fullAboutTextView.setVisibility(8);
            int i = 0;
            while (true) {
                SimpleTextView[] simpleTextViewArr = this.statusTextView;
                if (i >= simpleTextViewArr.length) {
                    break;
                }
                if (TextUtils.isEmpty(simpleTextViewArr[4].getText()) || this.statusTextView[4].getLineCount() <= 1) {
                    this.statusTextView[i].setTranslationX((LocaleController.isRTL ? AndroidUtilities.dp(53.0f) : -AndroidUtilities.dp(53.0f)) * f);
                    this.statusTextView[i].setFullLayoutAdditionalWidth(0, 0);
                } else {
                    this.statusTextView[i].setFullLayoutAdditionalWidth(AndroidUtilities.dp(92.0f), LocaleController.isRTL ? AndroidUtilities.dp(48.0f) : AndroidUtilities.dp(53.0f));
                    this.statusTextView[i].setFullAlpha(f);
                    this.statusTextView[i].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    this.statusTextView[i].invalidate();
                }
                i++;
            }
        } else {
            float f2 = 1.0f - f;
            this.fullAboutTextView.setTranslationX((LocaleController.isRTL ? -AndroidUtilities.dp(53.0f) : AndroidUtilities.dp(53.0f)) * f2);
            this.fullAboutTextView.setVisibility(0);
            this.fullAboutTextView.setAlpha(f);
            this.statusTextView[4].setAlpha(f2);
            SimpleTextView simpleTextView = this.statusTextView[4];
            boolean z = LocaleController.isRTL;
            int iDp = AndroidUtilities.dp(53.0f);
            if (!z) {
                iDp = -iDp;
            }
            simpleTextView.setTranslationX(iDp * f);
        }
        this.avatarImageView.setAlpha(f == BitmapDescriptorFactory.HUE_RED ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.avatarWavesDrawable.setShowWaves(this.isSpeaking && f == BitmapDescriptorFactory.HUE_RED, this);
        float f3 = 1.0f - f;
        this.muteButton.setAlpha(f3);
        float f4 = (f3 * 0.4f) + 0.6f;
        this.muteButton.setScaleX(f4);
        this.muteButton.setScaleY(f4);
        invalidate();
    }

    public void setUploadProgress(float f, boolean z) {
        RadialProgressView radialProgressView;
        boolean z2;
        this.avatarProgressView.setProgress(f);
        if (f < 1.0f) {
            radialProgressView = this.avatarProgressView;
            z2 = true;
        } else {
            radialProgressView = this.avatarProgressView;
            z2 = false;
        }
        AndroidUtilities.updateViewVisibilityAnimated(radialProgressView, z2, 1.0f, z);
    }
}
