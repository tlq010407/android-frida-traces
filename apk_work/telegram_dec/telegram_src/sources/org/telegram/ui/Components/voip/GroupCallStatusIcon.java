package org.telegram.ui.Components.voip;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.SystemClock;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class GroupCallStatusIcon {
    Callback callback;
    RLottieImageView iconView;
    boolean isSpeaking;
    boolean lastMuted;
    boolean lastRaisedHand;
    RLottieDrawable micDrawable;
    private boolean mutedByMe;
    TLRPC.GroupCallParticipant participant;
    RLottieDrawable shakeHandDrawable;
    boolean updateRunnableScheduled;
    private Runnable shakeHandCallback = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    private Runnable raiseHandCallback = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$1();
        }
    };
    private Runnable updateRunnable = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };
    private Runnable checkRaiseRunnable = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$3();
        }
    };

    public interface Callback {
        void onStatusChanged();
    }

    public GroupCallStatusIcon() {
        int i = R.raw.voice_mini;
        this.micDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), true, null);
        int i2 = R.raw.hand_2;
        this.shakeHandDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.shakeHandDrawable.setOnFinishCallback(null, 0);
        this.micDrawable.setOnFinishCallback(null, 0);
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView != null) {
            rLottieImageView.setAnimation(this.micDrawable);
        }
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
        this.shakeHandDrawable.setCurrentFrame(i);
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView != null) {
            rLottieImageView.setAnimation(this.shakeHandDrawable);
            this.iconView.playAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.isSpeaking = false;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onStatusChanged();
        }
        this.updateRunnableScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        updateIcon(true);
    }

    public boolean isMutedByAdmin() {
        TLRPC.GroupCallParticipant groupCallParticipant = this.participant;
        return (groupCallParticipant == null || !groupCallParticipant.muted || groupCallParticipant.can_self_unmute) ? false : true;
    }

    public boolean isMutedByMe() {
        return this.mutedByMe;
    }

    public boolean isSpeaking() {
        return this.isSpeaking;
    }

    public void setAmplitude(double d) {
        if (d > 1.5d) {
            if (this.updateRunnableScheduled) {
                AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            }
            if (!this.isSpeaking) {
                this.isSpeaking = true;
                Callback callback = this.callback;
                if (callback != null) {
                    callback.onStatusChanged();
                }
            }
            AndroidUtilities.runOnUIThread(this.updateRunnable, 500L);
            this.updateRunnableScheduled = true;
        }
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
        if (callback == null) {
            this.isSpeaking = false;
            AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            AndroidUtilities.cancelRunOnUIThread(this.raiseHandCallback);
            AndroidUtilities.cancelRunOnUIThread(this.checkRaiseRunnable);
            this.micDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        }
    }

    public void setImageView(RLottieImageView rLottieImageView) {
        this.iconView = rLottieImageView;
        updateIcon(false);
    }

    public void setParticipant(TLRPC.GroupCallParticipant groupCallParticipant, boolean z) {
        this.participant = groupCallParticipant;
        updateIcon(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateIcon(boolean z) {
        TLRPC.GroupCallParticipant groupCallParticipant;
        boolean customEndFrame;
        boolean z2;
        if (this.iconView == null || (groupCallParticipant = this.participant) == null || this.micDrawable == null) {
            return;
        }
        boolean z3 = groupCallParticipant.muted_by_you && !groupCallParticipant.self;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        TLRPC.GroupCallParticipant groupCallParticipant2 = this.participant;
        boolean z4 = jElapsedRealtime - groupCallParticipant2.lastVoiceUpdateTime < 500 ? groupCallParticipant2.hasVoiceDelayed : groupCallParticipant2.hasVoice;
        boolean z5 = !groupCallParticipant2.self ? (!groupCallParticipant2.muted || (this.isSpeaking && z4)) && !z3 : VoIPService.getSharedInstance() == null || !VoIPService.getSharedInstance().isMicMute() || (this.isSpeaking && z4);
        TLRPC.GroupCallParticipant groupCallParticipant3 = this.participant;
        boolean z6 = ((groupCallParticipant3.muted && !this.isSpeaking) || z3) && !(((z2 = groupCallParticipant3.can_self_unmute) && !z3) || z2 || groupCallParticipant3.raise_hand_rating == 0);
        if (z6) {
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j = this.participant.lastRaiseHandDate;
            long j2 = jElapsedRealtime2 - j;
            if (j != 0 && j2 <= 5000) {
                AndroidUtilities.runOnUIThread(this.checkRaiseRunnable, 5000 - j2);
            }
            customEndFrame = this.micDrawable.setCustomEndFrame(136);
        } else {
            this.iconView.setAnimation(this.micDrawable);
            this.micDrawable.setOnFinishCallback(null, 0);
            if (z5 && this.lastRaisedHand) {
                customEndFrame = this.micDrawable.setCustomEndFrame(36);
            } else {
                customEndFrame = this.micDrawable.setCustomEndFrame(z5 ? 99 : 69);
            }
        }
        if (z) {
            if (customEndFrame) {
                if (z6) {
                    this.micDrawable.setCurrentFrame(99);
                    this.micDrawable.setCustomEndFrame(136);
                } else if (z5 && this.lastRaisedHand && !z6) {
                    this.micDrawable.setCurrentFrame(0);
                    this.micDrawable.setCustomEndFrame(36);
                } else {
                    RLottieDrawable rLottieDrawable = this.micDrawable;
                    if (z5) {
                        rLottieDrawable.setCurrentFrame(69);
                        this.micDrawable.setCustomEndFrame(99);
                    } else {
                        rLottieDrawable.setCurrentFrame(36);
                        this.micDrawable.setCustomEndFrame(69);
                    }
                }
                this.iconView.playAnimation();
            }
            this.iconView.setAnimation(this.micDrawable);
            this.lastMuted = z5;
            this.lastRaisedHand = z6;
            if (this.mutedByMe == z3) {
                this.mutedByMe = z3;
                Callback callback = this.callback;
                if (callback != null) {
                    callback.onStatusChanged();
                    return;
                }
                return;
            }
            return;
        }
        RLottieDrawable rLottieDrawable2 = this.micDrawable;
        rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getCustomEndFrame() - 1, false, true);
        this.iconView.invalidate();
        this.iconView.setAnimation(this.micDrawable);
        this.lastMuted = z5;
        this.lastRaisedHand = z6;
        if (this.mutedByMe == z3) {
        }
    }
}
