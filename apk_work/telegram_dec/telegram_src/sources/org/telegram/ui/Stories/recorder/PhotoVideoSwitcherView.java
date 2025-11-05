package org.telegram.ui.Stories.recorder;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Stories.recorder.FlashViews;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class PhotoVideoSwitcherView extends View implements FlashViews.Invertable {
    private ValueAnimator animator;
    private boolean mIsScrolling;
    private boolean mIsTouch;
    private long mLastTouchTime;
    private float mLastX;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private float mode;
    private float modeAtTouchDown;
    private Utilities.Callback onSwitchModeListener;
    private Utilities.Callback onSwitchingModeListener;
    private RectF photoRect;
    private StaticLayout photoText;
    private float photoTextHeight;
    private float photoTextLeft;
    private float photoTextWidth;
    private float scrollWidth;
    private boolean scrolledEnough;
    private Paint selectorPaint;
    private RectF selectorRect;
    private TextPaint textPaint;
    private RectF videoRect;
    private StaticLayout videoText;
    private float videoTextHeight;
    private float videoTextLeft;
    private float videoTextWidth;

    public PhotoVideoSwitcherView(Context context) {
        super(context);
        this.textPaint = new TextPaint(1);
        this.selectorPaint = new Paint(1);
        this.photoRect = new RectF();
        this.videoRect = new RectF();
        this.selectorRect = new RectF();
        this.selectorPaint.setColor(855638015);
        this.textPaint.setColor(-1);
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setTextSize(AndroidUtilities.dpf2(14.0f));
        TextPaint textPaint = this.textPaint;
        float fDpf2 = AndroidUtilities.dpf2(1.0f);
        float fDpf22 = AndroidUtilities.dpf2(0.4f);
        float f = BitmapDescriptorFactory.HUE_RED;
        textPaint.setShadowLayer(fDpf2, BitmapDescriptorFactory.HUE_RED, fDpf22, AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        String string = LocaleController.getString("StoryPhoto");
        string = string == null ? "Photo" : string;
        TextPaint textPaint2 = this.textPaint;
        int i = AndroidUtilities.displaySize.x / 2;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        StaticLayout staticLayout = new StaticLayout(string, textPaint2, i, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.photoText = staticLayout;
        this.photoTextLeft = staticLayout.getLineCount() > 0 ? this.photoText.getLineLeft(0) : BitmapDescriptorFactory.HUE_RED;
        this.photoTextWidth = this.photoText.getLineCount() > 0 ? this.photoText.getLineWidth(0) : BitmapDescriptorFactory.HUE_RED;
        this.photoTextHeight = this.photoText.getHeight();
        String string2 = LocaleController.getString("StoryVideo");
        StaticLayout staticLayout2 = new StaticLayout(string2 == null ? "Video" : string2, this.textPaint, AndroidUtilities.displaySize.x / 2, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.videoText = staticLayout2;
        this.videoTextLeft = staticLayout2.getLineCount() > 0 ? this.videoText.getLineLeft(0) : BitmapDescriptorFactory.HUE_RED;
        this.videoTextWidth = this.videoText.getLineCount() > 0 ? this.videoText.getLineWidth(0) : f;
        this.videoTextHeight = this.videoText.getHeight();
        this.scrollWidth = AndroidUtilities.dp(32.0f) + (this.photoTextWidth / 2.0f) + (this.videoTextWidth / 2.0f);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    private float getScrollCx() {
        return (getWidth() / 2.0f) + AndroidUtilities.lerp(AndroidUtilities.dp(16.0f) + (this.photoTextWidth / 2.0f), -(AndroidUtilities.dp(16.0f) + (this.videoTextWidth / 2.0f)), this.mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchMode$0(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mode = fFloatValue;
        Utilities.Callback callback = this.onSwitchingModeListener;
        if (callback != null) {
            callback.run(Float.valueOf(Utilities.clamp(fFloatValue, 1.0f, BitmapDescriptorFactory.HUE_RED)));
        }
        invalidate();
    }

    protected abstract boolean allowTouch();

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        float height = getHeight() / 2.0f;
        float scrollCx = getScrollCx();
        int i = -AndroidUtilities.dp(1.0f);
        float fDp = AndroidUtilities.dp(26.0f) / 2.0f;
        float f = i;
        float f2 = (height - fDp) + f;
        float f3 = height + fDp + f;
        this.photoRect.set((scrollCx - AndroidUtilities.dp(28.0f)) - this.photoTextWidth, f2, scrollCx - AndroidUtilities.dp(4.0f), f3);
        this.videoRect.set(AndroidUtilities.dp(4.0f) + scrollCx, f2, AndroidUtilities.dp(28.0f) + scrollCx + this.videoTextWidth, f3);
        AndroidUtilities.lerp(this.photoRect, this.videoRect, Utilities.clamp(this.mode, 1.025f, -0.025f), this.selectorRect);
        canvas.drawRoundRect(this.selectorRect, fDp, fDp, this.selectorPaint);
        canvas.save();
        canvas.translate(((scrollCx - AndroidUtilities.dp(16.0f)) - this.photoTextWidth) - this.photoTextLeft, (height - (this.photoTextHeight / 2.0f)) + f);
        this.photoText.draw(canvas);
        canvas.restore();
        canvas.save();
        canvas.translate((scrollCx + AndroidUtilities.dp(16.0f)) - this.videoTextLeft, (height - (this.videoTextHeight / 2.0f)) + f);
        this.videoText.draw(canvas);
        canvas.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float xVelocity;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            if (!allowTouch()) {
                return false;
            }
            this.mIsTouch = true;
            this.modeAtTouchDown = this.mode;
            this.mLastTouchTime = System.currentTimeMillis();
            this.mLastX = motionEvent.getX();
            return true;
        }
        if (action == 1) {
            this.mIsTouch = false;
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000);
                xVelocity = this.mVelocityTracker.getXVelocity();
            } else {
                xVelocity = BitmapDescriptorFactory.HUE_RED;
            }
            if (!stopScroll(xVelocity) && System.currentTimeMillis() - this.mLastTouchTime <= ViewConfiguration.getTapTimeout() && Math.abs(motionEvent.getX() - this.mLastX) < AndroidUtilities.dp(4.0f)) {
                boolean z = motionEvent.getX() > getScrollCx();
                switchMode(z);
                Utilities.Callback callback = this.onSwitchModeListener;
                if (callback != null) {
                    callback.run(Boolean.valueOf(z));
                }
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.scrolledEnough = false;
        } else if (action == 2) {
            float x = motionEvent.getX();
            scrollX(this.mLastX - x);
            this.mLastX = x;
        } else if (action == 3) {
        }
        return super.onTouchEvent(motionEvent);
    }

    public void scrollX(float f) {
        if (!this.mIsScrolling && Math.abs(f) > this.mTouchSlop) {
            this.mIsScrolling = true;
            this.modeAtTouchDown = this.mode;
        }
        if (this.mIsScrolling) {
            float f2 = this.mode;
            if ((f2 <= BitmapDescriptorFactory.HUE_RED && f < BitmapDescriptorFactory.HUE_RED) || (f2 >= 1.0f && f > BitmapDescriptorFactory.HUE_RED)) {
                f *= 0.2f;
            }
            float f3 = f2 + ((f / this.scrollWidth) / 2.5f);
            this.mode = f3;
            float fClamp = Utilities.clamp(f3, 1.2f, -0.2f);
            this.mode = fClamp;
            Utilities.Callback callback = this.onSwitchingModeListener;
            if (callback != null) {
                callback.run(Float.valueOf(Utilities.clamp(fClamp, 1.0f, BitmapDescriptorFactory.HUE_RED)));
            }
            invalidate();
        }
    }

    @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        this.selectorPaint.setColor(ColorUtils.blendARGB(855638015, 536870912, f));
        this.textPaint.setColor(ColorUtils.blendARGB(-1, -16777216, f));
    }

    public void setOnSwitchModeListener(Utilities.Callback<Boolean> callback) {
        this.onSwitchModeListener = callback;
    }

    public void setOnSwitchingModeListener(Utilities.Callback<Float> callback) {
        this.onSwitchingModeListener = callback;
    }

    public boolean stopScroll(float f) {
        if (!this.mIsScrolling) {
            this.scrolledEnough = false;
            return false;
        }
        this.mIsScrolling = false;
        boolean z = Math.abs(f) <= 500.0f ? this.mode > 0.5f : f < BitmapDescriptorFactory.HUE_RED;
        switchMode(z);
        Utilities.Callback callback = this.onSwitchModeListener;
        if (callback != null) {
            callback.run(Boolean.valueOf(z));
        }
        this.scrolledEnough = false;
        return true;
    }

    public void switchMode(boolean z) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mode, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.PhotoVideoSwitcherView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$switchMode$0(valueAnimator2);
            }
        });
        this.animator.setDuration(320L);
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.animator.start();
    }
}
