package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.VideoPlayer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class RecordedAudioPlayerView extends View {
    public boolean allowDraw;
    private final Paint backgroundPaint;
    private final RectF backgroundRect;
    private final RectF badgeClickRect;
    private final RectF badgeRect;
    private final Path clipPath;
    private final Paint darkerBackgroundPaint;
    private boolean destroyed;
    public float duration;
    private final Paint handlePaint;
    private final RectF handleRect;
    private float holdProgress;
    private int lastWaveformWidth;
    public float left;
    private final RectF leftHandleClickRect;
    private boolean leftPressed;
    private final PlayPauseDrawable playPauseDrawable;
    private boolean playPressed;
    private VideoPlayer player;
    private boolean progressPressed;
    private boolean progressPressedWasPlaying;
    private final Runnable progressUpdate;
    private final Theme.ResourcesProvider resourcesProvider;
    public float right;
    private final RectF rightHandleClickRect;
    private boolean rightPressed;
    private final AnimatedFloat showBadge;
    private final AnimatedFloat showDuration;
    private final AnimatedTextView.AnimatedTextDrawable text;
    public boolean wasPlaying;
    private byte[] waveformData;
    private final Paint waveformPaint;
    private final Path waveformPath;

    public RecordedAudioPlayerView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.darkerBackgroundPaint = new Paint(1);
        this.waveformPaint = new Paint(1);
        this.handlePaint = new Paint(1);
        this.left = BitmapDescriptorFactory.HUE_RED;
        this.right = 1.0f;
        this.wasPlaying = false;
        this.progressUpdate = new Runnable() { // from class: org.telegram.ui.Components.RecordedAudioPlayerView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.backgroundRect = new RectF();
        this.badgeRect = new RectF();
        this.handleRect = new RectF();
        this.clipPath = new Path();
        this.badgeClickRect = new RectF();
        this.leftHandleClickRect = new RectF();
        this.rightHandleClickRect = new RectF();
        this.waveformPath = new Path();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.showDuration = new AnimatedFloat(this, 0L, 340L, cubicBezierInterpolator);
        this.showBadge = new AnimatedFloat(this, 0L, 340L, cubicBezierInterpolator);
        this.allowDraw = true;
        this.resourcesProvider = resourcesProvider;
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(12);
        this.playPauseDrawable = playPauseDrawable;
        playPauseDrawable.setParent(this);
        playPauseDrawable.setCallback(this);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
        this.text = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.5f, 0L, 200L, cubicBezierInterpolator);
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setTextSize(AndroidUtilities.dp(12.0f));
        animatedTextDrawable.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer != null) {
            boolean zIsPlaying = videoPlayer.isPlaying();
            float currentPosition = this.player.getCurrentPosition() / this.player.getDuration();
            float f = this.left;
            if (currentPosition < f) {
                this.player.seekTo((long) (f * r1.getDuration()));
            } else if (currentPosition > this.right) {
                zIsPlaying = false;
                setPlaying(false);
            }
            if (zIsPlaying) {
                AndroidUtilities.runOnUIThread(this.progressUpdate, 16L);
            }
        }
        invalidate();
    }

    public void checkWaveform() {
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(27.0f);
        if (this.lastWaveformWidth == measuredWidth) {
            return;
        }
        int iDp = measuredWidth / AndroidUtilities.dp(3.0f);
        int iDp2 = AndroidUtilities.dp(2.0f);
        int iDp3 = AndroidUtilities.dp(12.0f);
        byte bMin = 127;
        byte bMax = -128;
        for (int i = 0; i < iDp; i++) {
            byte[] bArr = this.waveformData;
            byte b = bArr == null ? (byte) 0 : bArr[(int) ((i / iDp) * bArr.length)];
            bMin = (byte) Math.min((int) bMin, (int) b);
            bMax = (byte) Math.max((int) bMax, (int) b);
        }
        this.waveformPath.rewind();
        for (int i2 = 0; i2 < iDp; i2++) {
            byte[] bArr2 = this.waveformData;
            float fLerp = AndroidUtilities.lerp(iDp2, iDp3, Utilities.clamp01(AndroidUtilities.ilerp((int) (bArr2 == null ? (byte) 0 : bArr2[(int) ((i2 / iDp) * bArr2.length)]), (int) bMin, (int) bMax)));
            float fDp = AndroidUtilities.dp(3.0f) * i2;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(fDp, (-fLerp) / 2.0f, AndroidUtilities.dp(2.0f) + fDp, fLerp / 2.0f);
            this.waveformPath.addRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Path.Direction.CW);
        }
        this.lastWaveformWidth = measuredWidth;
    }

    public void destroy() {
        this.destroyed = true;
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer != null) {
            videoPlayer.setPlayWhenReady(false);
            this.player.releasePlayer(true);
            this.player = null;
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.allowDraw) {
            drawIn(canvas, this.backgroundRect, 1.0f);
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        VideoPlayer videoPlayer;
        long jMax;
        boolean zContains = this.badgeClickRect.contains(motionEvent.getX(), motionEvent.getY());
        boolean z = !zContains && this.leftHandleClickRect.contains(motionEvent.getX(), motionEvent.getY());
        boolean z2 = !zContains && this.rightHandleClickRect.contains(motionEvent.getX(), motionEvent.getY());
        boolean z3 = (zContains || z || z2 || motionEvent.getX() <= this.leftHandleClickRect.right || motionEvent.getX() >= this.rightHandleClickRect.left) ? false : true;
        if (motionEvent.getAction() == 0) {
            this.playPressed = zContains;
            this.leftPressed = z;
            this.rightPressed = z2;
            if (z || z2) {
                this.progressPressedWasPlaying = isPlaying();
                setPlaying(false);
            }
            this.progressPressed = z3;
            if (z3) {
                this.progressPressedWasPlaying = isPlaying();
                this.holdProgress = this.player != null ? r0.getCurrentPosition() / this.player.getDuration() : 1.0f;
                setPlaying(false);
            }
            if (getParent() != null && (this.playPressed || this.leftPressed || this.rightPressed || this.progressPressed)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.leftPressed) {
                this.left = Utilities.clamp(AndroidUtilities.ilerp(motionEvent.getX(), this.backgroundRect.left + AndroidUtilities.dp(11.33f), this.backgroundRect.right - AndroidUtilities.dp(11.33f)), Utilities.clamp01(this.right - Math.max(1.0f / this.duration, AndroidUtilities.dp(30.0f) / (this.backgroundRect.width() - AndroidUtilities.dp(22.66f)))), BitmapDescriptorFactory.HUE_RED);
            } else if (this.rightPressed) {
                this.right = Utilities.clamp(AndroidUtilities.ilerp(motionEvent.getX(), this.backgroundRect.left + AndroidUtilities.dp(11.33f), this.backgroundRect.right - AndroidUtilities.dp(11.33f)), 1.0f, Utilities.clamp01(this.left + Math.max(1.0f / this.duration, AndroidUtilities.dp(30.0f) / (this.backgroundRect.width() - AndroidUtilities.dp(22.66f)))));
            } else {
                if (this.progressPressed) {
                    VideoPlayer videoPlayer2 = this.player;
                    if (videoPlayer2 != null) {
                        float fClamp = Utilities.clamp(AndroidUtilities.ilerp(motionEvent.getX(), this.backgroundRect.left + AndroidUtilities.dp(11.33f), this.backgroundRect.right - AndroidUtilities.dp(11.33f)), this.right, this.left);
                        this.holdProgress = fClamp;
                        videoPlayer2.seekTo((long) (fClamp * this.player.getDuration()));
                    }
                }
                this.text.setText(AndroidUtilities.formatDuration(Math.round(Math.max(1.0f, this.duration * (this.right - this.left))), false), true);
            }
            invalidate();
            this.text.setText(AndroidUtilities.formatDuration(Math.round(Math.max(1.0f, this.duration * (this.right - this.left))), false), true);
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (motionEvent.getAction() == 1 && this.playPressed) {
                setPlaying(!isPlaying());
            } else if (this.leftPressed && this.wasPlaying) {
                videoPlayer = this.player;
                if (videoPlayer != null) {
                    jMax = (long) (this.left * videoPlayer.getDuration());
                    videoPlayer.seekTo(jMax);
                }
                setPlaying(true);
            } else {
                if (this.rightPressed && this.wasPlaying) {
                    videoPlayer = this.player;
                    if (videoPlayer != null) {
                        jMax = Math.max((long) (this.left * videoPlayer.getDuration()), ((long) (this.right * this.player.getDuration())) - 1500);
                        videoPlayer.seekTo(jMax);
                    }
                } else if (this.progressPressed && !isPlaying()) {
                }
                setPlaying(true);
            }
            this.playPressed = false;
            this.leftPressed = false;
            this.rightPressed = false;
            this.progressPressed = false;
        }
        return this.playPressed || this.leftPressed || this.rightPressed || this.progressPressed || super.dispatchTouchEvent(motionEvent);
    }

    public void drawIn(Canvas canvas, RectF rectF, float f) {
        float fClamp;
        Paint paint;
        int color;
        Paint paint2;
        int color2;
        this.backgroundPaint.setColor(Theme.getColor(Theme.key_chat_recordedVoiceBackground, this.resourcesProvider));
        this.darkerBackgroundPaint.setColor(Theme.getColor(Theme.key_chat_recordedVoiceDarkerBackground, this.resourcesProvider));
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.text;
        int i = Theme.key_chat_recordedVoiceProgressInner;
        animatedTextDrawable.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.playPauseDrawable.setColor(Theme.getColor(Theme.key_chat_recordedVoicePlayPause, this.resourcesProvider));
        Paint paint3 = this.waveformPaint;
        int i2 = Theme.key_chat_recordedVoiceProgress;
        paint3.setColor(Theme.getColor(i2, this.resourcesProvider));
        this.handlePaint.setColor(Theme.getColor(i, this.resourcesProvider));
        int iLerp = (int) AndroidUtilities.lerp(rectF.left + AndroidUtilities.dp(11.33f), rectF.right - AndroidUtilities.dp(11.33f), Utilities.clamp01(this.left));
        int iLerp2 = (int) AndroidUtilities.lerp(rectF.left + AndroidUtilities.dp(11.33f), rectF.right - AndroidUtilities.dp(11.33f), Utilities.clamp01(this.right));
        checkWaveform();
        canvas.save();
        this.clipPath.rewind();
        this.clipPath.addRoundRect(rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
        canvas.clipPath(this.clipPath);
        canvas.drawRect(rectF.left, rectF.top, iLerp - AndroidUtilities.dp(1.33f), rectF.bottom, this.darkerBackgroundPaint);
        canvas.drawRect(AndroidUtilities.dp(1.33f) + iLerp2, rectF.top, rectF.right, rectF.bottom, this.darkerBackgroundPaint);
        canvas.save();
        canvas.translate(rectF.left + AndroidUtilities.dp(14.0f), rectF.centerY());
        this.waveformPaint.setColor(Theme.multAlpha(Theme.getColor(i2, this.resourcesProvider), 0.3f));
        canvas.drawPath(this.waveformPath, this.waveformPaint);
        canvas.restore();
        float f2 = iLerp;
        float f3 = iLerp2;
        canvas.drawRect(f2, rectF.top, f3, rectF.bottom, this.backgroundPaint);
        if (this.progressPressed) {
            fClamp = this.holdProgress;
        } else {
            fClamp = Utilities.clamp(this.player != null ? r1.getCurrentPosition() / this.player.getDuration() : 1.0f, this.right, this.left);
        }
        float fClamp2 = Utilities.clamp(AndroidUtilities.lerp(rectF.left + AndroidUtilities.dp(13.0f), rectF.right - AndroidUtilities.dp(14.0f), fClamp), f3, f2);
        if (fClamp2 < f3) {
            canvas.save();
            canvas.clipRect(fClamp2, rectF.top, f3, rectF.bottom);
            canvas.translate(rectF.left + AndroidUtilities.dp(14.0f), rectF.centerY());
            if (!this.wasPlaying || fClamp >= this.left || this.progressPressed) {
                paint2 = this.waveformPaint;
                color2 = Theme.getColor(i2, this.resourcesProvider);
            } else {
                paint2 = this.waveformPaint;
                color2 = Theme.getColor(i, this.resourcesProvider);
            }
            paint2.setColor(color2);
            canvas.drawPath(this.waveformPath, this.waveformPaint);
            canvas.restore();
        }
        if (fClamp2 > f2) {
            canvas.save();
            canvas.clipRect(f2, rectF.top, fClamp2, rectF.bottom);
            canvas.translate(rectF.left + AndroidUtilities.dp(14.0f), rectF.centerY());
            if (isPlaying() || this.wasPlaying || this.progressPressed) {
                paint = this.waveformPaint;
                color = Theme.getColor(i, this.resourcesProvider);
            } else {
                paint = this.waveformPaint;
                color = Theme.getColor(i2, this.resourcesProvider);
            }
            paint.setColor(color);
            canvas.drawPath(this.waveformPath, this.waveformPaint);
            canvas.restore();
        }
        this.handleRect.set(iLerp - AndroidUtilities.dp(7.0f), rectF.centerY() - AndroidUtilities.dp(5.33f), iLerp - AndroidUtilities.dp(5.33f), rectF.centerY() + AndroidUtilities.dp(5.33f));
        RectF rectF2 = this.handleRect;
        canvas.drawRoundRect(rectF2, rectF2.width() / 2.0f, this.handleRect.width() / 2.0f, this.handlePaint);
        this.handleRect.set(AndroidUtilities.dp(5.33f) + iLerp2, rectF.centerY() - AndroidUtilities.dp(5.33f), AndroidUtilities.dp(7.0f) + iLerp2, rectF.centerY() + AndroidUtilities.dp(5.33f));
        RectF rectF3 = this.handleRect;
        canvas.drawRoundRect(rectF3, rectF3.width() / 2.0f, this.handleRect.width() / 2.0f, this.handlePaint);
        this.leftHandleClickRect.set(iLerp - AndroidUtilities.dp(24.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(6.0f) + iLerp, getHeight());
        this.rightHandleClickRect.set(iLerp2 - AndroidUtilities.dp(6.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(24.0f) + iLerp2, getHeight());
        float f4 = this.showBadge.set(!this.progressPressed);
        if (f4 > BitmapDescriptorFactory.HUE_RED) {
            float fDp = (int) (AndroidUtilities.dp(30.0f) + this.text.getCurrentWidth());
            float f5 = this.showDuration.set(fDp <= ((float) ((iLerp2 - iLerp) - AndroidUtilities.dp(8.0f))));
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(24.0f), fDp, f5);
            float f6 = iLerp + iLerp2;
            float fDp2 = AndroidUtilities.dp(20.0f) / 2.0f;
            this.badgeRect.set((f6 - fLerp) / 2.0f, rectF.centerY() - fDp2, (f6 + fLerp) / 2.0f, rectF.centerY() + fDp2);
            int alpha = this.darkerBackgroundPaint.getAlpha();
            this.darkerBackgroundPaint.setAlpha((int) (alpha * f4));
            RectF rectF4 = this.badgeRect;
            canvas.drawRoundRect(rectF4, rectF4.height() / 2.0f, this.badgeRect.height() / 2.0f, this.darkerBackgroundPaint);
            this.darkerBackgroundPaint.setAlpha(alpha);
            this.badgeClickRect.set(this.badgeRect);
            this.badgeClickRect.inset(-AndroidUtilities.dp(6.0f), -AndroidUtilities.dp(6.0f));
            canvas.save();
            int iDp = AndroidUtilities.dp(12.0f);
            canvas.translate(AndroidUtilities.lerp(this.badgeRect.centerX() - (iDp / 2.0f), this.badgeRect.left + AndroidUtilities.dp(6.0f), f5), this.badgeRect.centerY());
            this.playPauseDrawable.setBounds(0, (-iDp) / 2, iDp, iDp / 2);
            this.playPauseDrawable.setAlpha((int) (f4 * 255.0f));
            this.playPauseDrawable.draw(canvas);
            canvas.restore();
            if (f5 > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(this.badgeRect.left + AndroidUtilities.dp(21.66f), this.badgeRect.centerY() - AndroidUtilities.dp(1.0f));
                this.text.setBounds(-1, -1, 1, 1);
                this.text.setAlpha((int) (f5 * 255.0f * f4));
                this.text.draw(canvas);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    public float getAudioLeft() {
        return this.left;
    }

    public long getAudioLeftMs() {
        return (long) (this.left * getDuration());
    }

    public float getAudioRight() {
        return this.right;
    }

    public long getAudioRightMs() {
        return (long) (this.right * getDuration());
    }

    public long getDuration() {
        VideoPlayer videoPlayer = this.player;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    public double getNewDuration() {
        double duration = (this.right - this.left) * getDuration();
        Double.isNaN(duration);
        return duration / 1000.0d;
    }

    public void init(String str, double d, byte[] bArr, float f, float f2) {
        if (this.destroyed) {
            return;
        }
        this.duration = (float) d;
        this.left = f;
        this.right = f2;
        this.wasPlaying = false;
        this.text.setText(AndroidUtilities.formatDuration((int) Math.round(Math.max(1.0d, d)), false), false);
        this.playPauseDrawable.setPause(false, false);
        if (this.player == null) {
            VideoPlayer videoPlayer = new VideoPlayer();
            this.player = videoPlayer;
            videoPlayer.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Components.RecordedAudioPlayerView.1
                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onError(VideoPlayer videoPlayer2, Exception exc) {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onRenderedFirstFrame() {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z, int i) {
                    if (z && RecordedAudioPlayerView.this.player.getCurrentPosition() >= 0) {
                        RecordedAudioPlayerView.this.wasPlaying = true;
                    }
                    RecordedAudioPlayerView.this.playPauseDrawable.setPause(z);
                    AndroidUtilities.cancelRunOnUIThread(RecordedAudioPlayerView.this.progressUpdate);
                    if (z) {
                        AndroidUtilities.runOnUIThread(RecordedAudioPlayerView.this.progressUpdate, 16L);
                    }
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                    return false;
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                @Override // org.telegram.ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f3) {
                }
            });
        }
        this.player.preparePlayer(Uri.fromFile(new File(str)), "other");
        this.lastWaveformWidth = 0;
        this.waveformData = bArr;
        invalidate();
    }

    public boolean isPlaying() {
        VideoPlayer videoPlayer = this.player;
        return videoPlayer != null && videoPlayer.isPlaying();
    }

    public boolean needsCut() {
        return this.left > BitmapDescriptorFactory.HUE_RED || this.right < 1.0f;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        float fDp = AndroidUtilities.dp(32.0f);
        this.backgroundRect.set(BitmapDescriptorFactory.HUE_RED, (getHeight() - fDp) / 2.0f, getWidth(), (getHeight() + fDp) / 2.0f);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        float fDp = AndroidUtilities.dp(32.0f);
        this.backgroundRect.set(BitmapDescriptorFactory.HUE_RED, (getMeasuredHeight() - fDp) / 2.0f, getMeasuredWidth(), (getMeasuredHeight() + fDp) / 2.0f);
    }

    public void setAllowDraw(boolean z) {
        if (this.allowDraw != z) {
            this.allowDraw = z;
            invalidate();
        }
    }

    public void setPlaying(boolean z) {
        if (this.destroyed) {
            z = false;
        }
        if (this.player != null) {
            float currentPosition = r0.getCurrentPosition() / this.player.getDuration();
            float f = this.left;
            if (currentPosition < f || currentPosition > this.right) {
                this.player.seekTo((long) (f * r0.getDuration()));
            }
            this.player.setPlayWhenReady(z);
        }
        this.playPauseDrawable.setPause(z);
        AndroidUtilities.cancelRunOnUIThread(this.progressUpdate);
        if (z) {
            AndroidUtilities.runOnUIThread(this.progressUpdate, 16L);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.text == drawable || this.playPauseDrawable == drawable || super.verifyDrawable(drawable);
    }
}
