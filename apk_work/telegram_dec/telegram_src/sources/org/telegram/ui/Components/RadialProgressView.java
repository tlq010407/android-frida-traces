package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class RadialProgressView extends View {
    private AccelerateInterpolator accelerateInterpolator;
    private float animatedProgress;
    private RectF cicleRect;
    private float currentCircleLength;
    private float currentProgress;
    private float currentProgressTime;
    private DecelerateInterpolator decelerateInterpolator;
    private float drawingCircleLenght;
    private long lastUpdateTime;
    private boolean noProgress;
    private float progressAnimationStart;
    private int progressColor;
    private Paint progressPaint;
    private int progressTime;
    private float radOffset;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean risingCircleLength;
    private int size;
    private boolean toCircle;
    private float toCircleProgress;
    private boolean useSelfAlpha;

    public RadialProgressView(Context context) {
        this(context, null);
    }

    public RadialProgressView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.cicleRect = new RectF();
        this.noProgress = true;
        this.resourcesProvider = resourcesProvider;
        this.size = AndroidUtilities.dp(40.0f);
        this.progressColor = getThemedColor(Theme.key_progressCircle);
        this.decelerateInterpolator = new DecelerateInterpolator();
        this.accelerateInterpolator = new AccelerateInterpolator();
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.progressPaint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        this.progressPaint.setColor(this.progressColor);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private void updateAnimation() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        if (j > 17) {
            j = 17;
        }
        this.lastUpdateTime = jCurrentTimeMillis;
        updateAnimation(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00de A[PHI: r9 r10
      0x00de: PHI (r9v11 float) = (r9v10 float), (r9v13 float) binds: [B:38:0x00dc, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]
      0x00de: PHI (r10v6 float) = (r10v5 float), (r10v11 float) binds: [B:38:0x00dc, B:35:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateAnimation(long j) {
        float f;
        float interpolation;
        this.radOffset = (this.radOffset + ((360 * j) / 2000.0f)) - (((int) (r0 / 360.0f)) * 360);
        boolean z = this.toCircle;
        if (z) {
            float f2 = this.toCircleProgress;
            if (f2 != 1.0f) {
                float f3 = f2 + 0.07272727f;
                this.toCircleProgress = f3;
                if (f3 > 1.0f) {
                    this.toCircleProgress = 1.0f;
                }
            } else if (!z) {
                float f4 = this.toCircleProgress;
                if (f4 != BitmapDescriptorFactory.HUE_RED) {
                    float f5 = f4 - 0.04f;
                    this.toCircleProgress = f5;
                    if (f5 < BitmapDescriptorFactory.HUE_RED) {
                        this.toCircleProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                }
            }
        }
        if (!this.noProgress) {
            float f6 = this.currentProgress;
            float f7 = this.progressAnimationStart;
            float f8 = f6 - f7;
            if (f8 > BitmapDescriptorFactory.HUE_RED) {
                int i = (int) (this.progressTime + j);
                this.progressTime = i;
                float f9 = i;
                if (f9 >= 200.0f) {
                    this.progressAnimationStart = f6;
                    this.animatedProgress = f6;
                    this.progressTime = 0;
                } else {
                    this.animatedProgress = f7 + (f8 * AndroidUtilities.decelerateInterpolator.getInterpolation(f9 / 200.0f));
                }
            }
            this.currentCircleLength = Math.max(4.0f, this.animatedProgress * 360.0f);
        } else if (this.toCircleProgress == BitmapDescriptorFactory.HUE_RED) {
            float f10 = this.currentProgressTime + j;
            this.currentProgressTime = f10;
            if (f10 >= 500.0f) {
                this.currentProgressTime = 500.0f;
            }
            if (this.risingCircleLength) {
                this.currentCircleLength = (this.accelerateInterpolator.getInterpolation(this.currentProgressTime / 500.0f) * 266.0f) + 4.0f;
            } else {
                this.currentCircleLength = 4.0f - ((1.0f - this.decelerateInterpolator.getInterpolation(this.currentProgressTime / 500.0f)) * 270.0f);
            }
            if (this.currentProgressTime == 500.0f) {
                boolean z2 = this.risingCircleLength;
                if (z2) {
                    this.radOffset += 270.0f;
                    this.currentCircleLength = -266.0f;
                }
                this.risingCircleLength = !z2;
                this.currentProgressTime = BitmapDescriptorFactory.HUE_RED;
            }
        } else if (this.risingCircleLength) {
            f = this.currentCircleLength;
            interpolation = (this.accelerateInterpolator.getInterpolation(this.currentProgressTime / 500.0f) * 266.0f) + 4.0f + (this.toCircleProgress * 360.0f);
            this.currentCircleLength = interpolation;
            if (f - interpolation > BitmapDescriptorFactory.HUE_RED) {
                this.radOffset += f - interpolation;
            }
        } else {
            f = this.currentCircleLength;
            interpolation = (4.0f - ((1.0f - this.decelerateInterpolator.getInterpolation(this.currentProgressTime / 500.0f)) * 270.0f)) - (this.toCircleProgress * 364.0f);
            this.currentCircleLength = interpolation;
            if (f - interpolation > BitmapDescriptorFactory.HUE_RED) {
            }
        }
        invalidate();
    }

    public void draw(Canvas canvas, float f, float f2) {
        float f3 = this.size / 2.0f;
        this.cicleRect.set(f - f3, f2 - f3, f + f3, f2 + f3);
        RectF rectF = this.cicleRect;
        float f4 = this.radOffset;
        float f5 = this.currentCircleLength;
        this.drawingCircleLenght = f5;
        canvas.drawArc(rectF, f4, f5, false, this.progressPaint);
        updateAnimation();
    }

    public boolean isCircle() {
        return Math.abs(this.drawingCircleLenght) >= 360.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.cicleRect.set((getMeasuredWidth() - this.size) / 2, (getMeasuredHeight() - this.size) / 2, r0 + r2, r1 + r2);
        RectF rectF = this.cicleRect;
        float f = this.radOffset;
        float f2 = this.currentCircleLength;
        this.drawingCircleLenght = f2;
        canvas.drawArc(rectF, f, f2, false, this.progressPaint);
        updateAnimation();
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        if (this.useSelfAlpha) {
            Drawable background = getBackground();
            int i = (int) (f * 255.0f);
            if (background != null) {
                background.setAlpha(i);
            }
            this.progressPaint.setAlpha(i);
        }
    }

    public void setNoProgress(boolean z) {
        this.noProgress = z;
    }

    public void setProgress(float f) {
        this.currentProgress = f;
        if (this.animatedProgress > f) {
            this.animatedProgress = f;
        }
        this.progressAnimationStart = this.animatedProgress;
        this.progressTime = 0;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
        this.progressPaint.setColor(i);
    }

    public void setSize(int i) {
        this.size = i;
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.progressPaint.setStrokeWidth(AndroidUtilities.dp(f));
    }

    public void setUseSelfAlpha(boolean z) {
        this.useSelfAlpha = z;
    }

    public void sync(RadialProgressView radialProgressView) {
        this.lastUpdateTime = radialProgressView.lastUpdateTime;
        this.radOffset = radialProgressView.radOffset;
        this.toCircle = radialProgressView.toCircle;
        this.toCircleProgress = radialProgressView.toCircleProgress;
        this.noProgress = radialProgressView.noProgress;
        this.currentCircleLength = radialProgressView.currentCircleLength;
        this.drawingCircleLenght = radialProgressView.drawingCircleLenght;
        this.currentProgressTime = radialProgressView.currentProgressTime;
        this.currentProgress = radialProgressView.currentProgress;
        this.progressTime = radialProgressView.progressTime;
        this.animatedProgress = radialProgressView.animatedProgress;
        this.risingCircleLength = radialProgressView.risingCircleLength;
        this.progressAnimationStart = radialProgressView.progressAnimationStart;
        updateAnimation(85L);
    }

    public void toCircle(boolean z, boolean z2) {
        this.toCircle = z;
        if (z2) {
            return;
        }
        this.toCircleProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }
}
