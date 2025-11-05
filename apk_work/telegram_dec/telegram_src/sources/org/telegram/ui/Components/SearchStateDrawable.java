package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.zxing.common.detector.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SearchStateDrawable extends Drawable {
    private float cx;
    private float cy;
    private Runnable delaySetProgress;
    private int fromState;
    private float mn;
    private Paint paint;
    private boolean progressStartedWithOverTo;
    private boolean wereNotWaitingForProgressToEnd;
    private int alpha = 255;
    private Path path = new Path();
    private RectF progressRect = new RectF();
    private final float progressRadius = 0.25f;
    private long progressStart = -1;
    private float progressAngleFrom = BitmapDescriptorFactory.HUE_RED;
    private float progressAngleTo = BitmapDescriptorFactory.HUE_RED;
    private float[] progressSegments = new float[2];
    private int toState = 0;
    private boolean waitingForProgressToEnd = false;
    private AnimatedFloat progress = new AnimatedFloat(1.0f, new Runnable() { // from class: org.telegram.ui.Components.SearchStateDrawable$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.invalidateSelf();
        }
    }, 0, 350, CubicBezierInterpolator.EASE_OUT_QUINT);

    public SearchStateDrawable() {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.dp(1.333f));
    }

    private boolean containsAngle(float f, float f2, float f3) {
        float f4 = f2 % 360.0f;
        if (f4 < BitmapDescriptorFactory.HUE_RED) {
            f4 += 360.0f;
        }
        float f5 = f3 % 360.0f;
        if (f5 < BitmapDescriptorFactory.HUE_RED) {
            f5 += 360.0f;
        }
        return f4 > f5 ? f >= f4 || f <= f5 : f >= f4 && f <= f5;
    }

    private void drawCircle(Canvas canvas, float f, float f2, float f3) {
        if (f3 < w(0.075f)) {
            return;
        }
        canvas.drawCircle(f, f2, f3, this.paint);
    }

    private void drawLine(Canvas canvas, float f, float f2, float f3, float f4) {
        if (MathUtils.distance(f, f2, f3, f4) <= w(0.075f)) {
            return;
        }
        canvas.drawLine(f, f2, f3, f4, this.paint);
    }

    private void drawLines(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6) {
        if (Math.max(MathUtils.distance(f, f2, f3, f4), MathUtils.distance(f5, f6, f3, f4)) <= w(0.075f)) {
            return;
        }
        this.path.rewind();
        this.path.moveTo(f, f2);
        this.path.lineTo(f3, f4);
        this.path.lineTo(f5, f6);
        canvas.drawPath(this.path, this.paint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIconState$0(int i, boolean z) {
        this.delaySetProgress = null;
        setIconState(i, z, true);
    }

    private float lerp3(float f, float f2, float f3, float f4, float f5, float f6) {
        return (f * f4) + (f2 * f5) + (f3 * f6);
    }

    private void setIconState(final int i, final boolean z, boolean z2) {
        if (getIconState() == i) {
            if (i != 2) {
                AndroidUtilities.cancelRunOnUIThread(this.delaySetProgress);
                this.delaySetProgress = null;
                return;
            }
            return;
        }
        if (!z2 && i == 2) {
            if (this.delaySetProgress == null) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SearchStateDrawable$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setIconState$0(i, z);
                    }
                };
                this.delaySetProgress = runnable;
                AndroidUtilities.runOnUIThread(runnable, 65L);
                return;
            }
            return;
        }
        Runnable runnable2 = this.delaySetProgress;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
        }
        boolean z3 = false;
        if (this.progress.get() < 1.0f && z) {
            setIconState(this.toState, false);
        }
        if (i == 2) {
            this.progressAngleFrom = 180.0f;
            this.progressStart = -1L;
        } else if (this.toState == 2) {
            if (i == 0) {
                this.progressAngleTo = -45.0f;
            } else {
                this.progressAngleTo = BitmapDescriptorFactory.HUE_RED;
            }
        }
        if (z) {
            int i2 = this.toState;
            this.fromState = i2;
            this.toState = i;
            if (i2 == 2 && i != 2) {
                z3 = true;
            }
            this.waitingForProgressToEnd = z3;
            this.progress.set(BitmapDescriptorFactory.HUE_RED, true);
        } else {
            this.toState = i;
            this.fromState = i;
            this.waitingForProgressToEnd = false;
            this.progress.set(1.0f, true);
        }
        invalidateSelf();
    }

    private float w(float f) {
        return this.mn * f;
    }

    private float x(float f) {
        return this.cx - (this.mn * (0.5f - f));
    }

    private float y(float f) {
        return this.cy - (this.mn * (0.5f - f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        float f5;
        android.graphics.Rect bounds = getBounds();
        this.mn = Math.min(bounds.width(), bounds.height());
        this.cx = bounds.centerX();
        this.cy = bounds.centerY();
        int i2 = this.alpha;
        if (i2 < 255) {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i2, 31);
        }
        float f6 = this.progress.set(this.waitingForProgressToEnd ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        int i3 = this.toState;
        int i4 = this.fromState;
        float f7 = i3 == 0 ? i4 == 0 ? 1.0f : f6 : i4 == 0 ? 1.0f - f6 : BitmapDescriptorFactory.HUE_RED;
        int i5 = this.fromState;
        float f8 = i3 == 1 ? i5 == 1 ? 1.0f : f6 : i5 == 1 ? 1.0f - f6 : BitmapDescriptorFactory.HUE_RED;
        float f9 = i3 == 2 ? this.fromState == 2 ? 1.0f : f6 : this.fromState == 2 ? 1.0f - f6 : BitmapDescriptorFactory.HUE_RED;
        if (f7 > BitmapDescriptorFactory.HUE_RED) {
            drawCircle(canvas, AndroidUtilities.lerp(x(0.25f), x(0.444f), f7), AndroidUtilities.lerp(y(0.5f), y(0.444f), f7), AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, w(0.208f), f7));
        }
        if (f7 > BitmapDescriptorFactory.HUE_RED || f8 > BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            canvas.rotate(f7 * 45.0f, this.cx, this.cy);
            f = 0.75f;
            f2 = 0.2409f;
            f3 = 0.5f;
            f4 = f9;
            i = 2;
            drawLine(canvas, lerp3(x(0.914f), x(0.7638f), this.fromState == 2 ? x(0.75f) : x(0.2409f), f7, f8, f4), y(0.5f), lerp3(x(0.658f), x(0.2409f), this.fromState == 2 ? x(0.75f) : x(0.2409f), f7, f8, f4), y(0.5f));
            canvas.restore();
            f5 = BitmapDescriptorFactory.HUE_RED;
        } else {
            f4 = f9;
            f5 = BitmapDescriptorFactory.HUE_RED;
            f2 = 0.2409f;
            f = 0.75f;
            i = 2;
            f3 = 0.5f;
        }
        if (f8 > f5) {
            float fLerp = this.fromState == i ? AndroidUtilities.lerp(x(f), x(f2), f8) : x(f2);
            canvas.save();
            canvas.rotate(f7 * 45.0f, this.cx, this.cy);
            drawLines(canvas, fLerp + (x(0.2452f) * f8), AndroidUtilities.lerp(y(f3), y(0.25f), f8), fLerp, y(f3), fLerp + (x(0.2452f) * f8), AndroidUtilities.lerp(y(f3), y(f), f8));
            canvas.restore();
        }
        float f10 = f4;
        if (f10 > BitmapDescriptorFactory.HUE_RED) {
            if (this.progressStart < 0 && f10 > 0.8f) {
                this.progressStart = System.currentTimeMillis();
                this.wereNotWaitingForProgressToEnd = this.waitingForProgressToEnd;
            }
            if (this.progressStart > 0) {
                CircularProgressDrawable.getSegments((System.currentTimeMillis() - this.progressStart) % 5400.0f, this.progressSegments);
                float[] fArr = this.progressSegments;
                float fLerp2 = fArr[0];
                float fMin = fArr[1];
                if (getIconState() != i && !this.waitingForProgressToEnd) {
                    float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, (((float) Math.floor((fLerp2 - 180.0f) / 360.0f)) * 360.0f) + 180.0f);
                    fMin = Math.min(fMin, this.progressAngleTo + fMax);
                    fLerp2 = AndroidUtilities.lerp(fMin, Math.min(fLerp2, fMax + this.progressAngleTo), f10);
                }
                float f11 = this.progressAngleTo;
                float f12 = this.progressAngleFrom;
                boolean zContainsAngle = containsAngle(f11, f12 + fLerp2, f12 + fMin);
                boolean z = this.waitingForProgressToEnd;
                if (z && !this.wereNotWaitingForProgressToEnd) {
                    this.wereNotWaitingForProgressToEnd = z;
                    this.progressStartedWithOverTo = zContainsAngle;
                }
                if (this.progressStartedWithOverTo && !zContainsAngle) {
                    this.progressStartedWithOverTo = false;
                }
                if (z && zContainsAngle && !this.progressStartedWithOverTo) {
                    this.waitingForProgressToEnd = false;
                }
                this.progressRect.set(x(0.25f), y(0.25f), x(f), y(f));
                canvas.drawArc(this.progressRect, this.progressAngleFrom + fLerp2, fMin - fLerp2, false, this.paint);
                invalidateSelf();
            }
        }
        if (this.alpha < 255) {
            canvas.restore();
        }
        if (f6 < 1.0f) {
            invalidateSelf();
        }
    }

    public int getIconState() {
        return this.toState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    public void setColor(int i) {
        this.paint.setColor(i);
        this.alpha = this.paint.getAlpha();
        this.paint.setAlpha(255);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setIconState(int i) {
        setIconState(i, true);
    }

    public void setIconState(int i, boolean z) {
        setIconState(i, z, false);
    }
}
