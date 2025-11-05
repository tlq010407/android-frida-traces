package org.telegram.ui.Components;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ShutterButton extends View {
    private ShutterButtonDelegate delegate;
    private DecelerateInterpolator interpolator;
    private long lastUpdateTime;
    private Runnable longPressed;
    private boolean pressed;
    private boolean processRelease;
    private Paint redPaint;
    private float redProgress;
    private Drawable shadowDrawable;
    private State state;
    private long totalTime;
    private Paint whitePaint;

    public interface ShutterButtonDelegate {
        boolean onTranslationChanged(float f, float f2);

        void shutterCancel();

        boolean shutterLongPressed();

        void shutterReleased();
    }

    public enum State {
        DEFAULT,
        RECORDING
    }

    public ShutterButton(Context context) {
        super(context);
        this.interpolator = new DecelerateInterpolator();
        this.longPressed = new Runnable() { // from class: org.telegram.ui.Components.ShutterButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (ShutterButton.this.delegate == null || ShutterButton.this.delegate.shutterLongPressed()) {
                    return;
                }
                ShutterButton.this.processRelease = false;
            }
        };
        this.shadowDrawable = getResources().getDrawable(R.drawable.camera_btn);
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.whitePaint.setColor(-1);
        Paint paint2 = new Paint(1);
        this.redPaint = paint2;
        paint2.setStyle(style);
        this.redPaint.setColor(-3324089);
        this.state = State.DEFAULT;
    }

    private void setHighlighted(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<ShutterButton, Float>) View.SCALE_X, 1.06f), ObjectAnimator.ofFloat(this, (Property<ShutterButton, Float>) View.SCALE_Y, 1.06f));
        } else {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<ShutterButton, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this, (Property<ShutterButton, Float>) View.SCALE_Y, 1.0f));
            animatorSet.setStartDelay(40L);
        }
        animatorSet.setDuration(120L);
        animatorSet.setInterpolator(this.interpolator);
        animatorSet.start();
    }

    public ShutterButtonDelegate getDelegate() {
        return this.delegate;
    }

    public State getState() {
        return this.state;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fDp;
        int measuredWidth = getMeasuredWidth() / 2;
        int measuredHeight = getMeasuredHeight() / 2;
        this.shadowDrawable.setBounds(measuredWidth - AndroidUtilities.dp(36.0f), measuredHeight - AndroidUtilities.dp(36.0f), AndroidUtilities.dp(36.0f) + measuredWidth, AndroidUtilities.dp(36.0f) + measuredHeight);
        this.shadowDrawable.draw(canvas);
        if (!this.pressed && getScaleX() == 1.0f) {
            if (this.redProgress != BitmapDescriptorFactory.HUE_RED) {
                this.redProgress = BitmapDescriptorFactory.HUE_RED;
                return;
            }
            return;
        }
        float scaleX = (getScaleX() - 1.0f) / 0.06f;
        this.whitePaint.setAlpha((int) (255.0f * scaleX));
        float f = measuredWidth;
        float f2 = measuredHeight;
        canvas.drawCircle(f, f2, AndroidUtilities.dp(26.0f), this.whitePaint);
        if (this.state == State.RECORDING) {
            if (this.redProgress != 1.0f) {
                long jAbs = Math.abs(System.currentTimeMillis() - this.lastUpdateTime);
                if (jAbs > 17) {
                    jAbs = 17;
                }
                long j = this.totalTime + jAbs;
                this.totalTime = j;
                if (j > 120) {
                    this.totalTime = 120L;
                }
                this.redProgress = this.interpolator.getInterpolation(this.totalTime / 120.0f);
                invalidate();
            }
            fDp = AndroidUtilities.dp(26.5f) * scaleX;
            scaleX = this.redProgress;
        } else if (this.redProgress == BitmapDescriptorFactory.HUE_RED) {
            return;
        } else {
            fDp = AndroidUtilities.dp(26.5f);
        }
        canvas.drawCircle(f, f2, fDp * scaleX, this.redPaint);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Button");
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setLongClickable(true);
        if (Build.VERSION.SDK_INT >= 21) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK.getId(), LocaleController.getString(R.string.AccActionTakePicture)));
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK.getId(), LocaleController.getString(R.string.AccActionRecordVideo)));
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(AndroidUtilities.dp(84.0f), AndroidUtilities.dp(84.0f));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            AndroidUtilities.runOnUIThread(this.longPressed, 800L);
            this.pressed = true;
            this.processRelease = true;
            setHighlighted(true);
        } else if (action == 1) {
            setHighlighted(false);
            AndroidUtilities.cancelRunOnUIThread(this.longPressed);
            if (this.processRelease) {
                this.delegate.shutterReleased();
            }
        } else if (action == 2) {
            if (x >= BitmapDescriptorFactory.HUE_RED && x <= getMeasuredWidth()) {
                x = BitmapDescriptorFactory.HUE_RED;
            }
            if (y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                y = BitmapDescriptorFactory.HUE_RED;
            }
            if (this.delegate.onTranslationChanged(x, y)) {
                AndroidUtilities.cancelRunOnUIThread(this.longPressed);
                if (this.state == State.RECORDING) {
                    this.processRelease = false;
                    setHighlighted(false);
                    this.delegate.shutterCancel();
                    setState(State.DEFAULT, true);
                }
            }
        } else if (action == 3) {
            setHighlighted(false);
            this.pressed = false;
        }
        return true;
    }

    public void setDelegate(ShutterButtonDelegate shutterButtonDelegate) {
        this.delegate = shutterButtonDelegate;
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        if (r1.state != org.telegram.ui.Components.ShutterButton.State.RECORDING) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setState(State state, boolean z) {
        float f;
        if (this.state != state) {
            this.state = state;
            if (!z) {
                if (state == State.RECORDING) {
                    f = 1.0f;
                }
                this.redProgress = f;
                invalidate();
            }
            this.lastUpdateTime = System.currentTimeMillis();
            this.totalTime = 0L;
            f = BitmapDescriptorFactory.HUE_RED;
            this.redProgress = f;
            invalidate();
        }
    }
}
