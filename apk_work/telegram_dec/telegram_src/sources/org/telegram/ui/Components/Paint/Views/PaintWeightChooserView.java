package org.telegram.ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.core.view.GestureDetectorCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Paint.RenderView;
import org.telegram.ui.Components.Paint.Swatch;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PaintWeightChooserView extends View {
    private AnimatedFloat animatedMax;
    private AnimatedFloat animatedMin;
    private AnimatedFloat animatedWeight;
    private Paint backgroundPaint;
    private Paint colorPaint;
    private Swatch colorSwatch;
    private boolean drawCenter;
    private GestureDetectorCompat gestureDetector;
    private float hideProgress;
    private boolean isPanTransitionInProgress;
    private boolean isTouchInProgress;
    private boolean isViewHidden;
    private long lastUpdate;
    private float max;
    private float min;
    private Runnable onUpdate;
    private Path path;
    private RenderView renderView;
    private boolean showPreview;
    private float showProgress;
    private RectF touchRect;
    private ValueOverride valueOverride;

    public interface ValueOverride {
        float get();

        void set(float f);
    }

    public PaintWeightChooserView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.colorPaint = new Paint(1);
        this.path = new Path();
        this.touchRect = new RectF();
        this.showPreview = true;
        this.animatedWeight = new AnimatedFloat(this);
        this.animatedMin = new AnimatedFloat(this);
        this.animatedMax = new AnimatedFloat(this);
        this.colorSwatch = new Swatch(-1, 1.0f, 0.016773745f);
        this.drawCenter = true;
        this.gestureDetector = new GestureDetectorCompat(context, new GestureDetector.SimpleOnGestureListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.1
            float startDeltaY;
            float startWeight;
            boolean startedY;

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                boolean zContains = PaintWeightChooserView.this.touchRect.contains(motionEvent.getX(), motionEvent.getY());
                if (PaintWeightChooserView.this.isTouchInProgress != zContains) {
                    PaintWeightChooserView.this.isTouchInProgress = zContains;
                    PaintWeightChooserView.this.invalidate();
                    if (zContains) {
                        this.startWeight = PaintWeightChooserView.this.valueOverride != null ? PaintWeightChooserView.this.valueOverride.get() : PaintWeightChooserView.this.colorSwatch.brushWeight;
                        this.startedY = false;
                    }
                }
                return PaintWeightChooserView.this.isTouchInProgress;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PaintWeightChooserView.this.isTouchInProgress) {
                    if (!this.startedY) {
                        this.startDeltaY = motionEvent.getY() - motionEvent2.getY();
                        this.startedY = true;
                    }
                    float fClamp = MathUtils.clamp(this.startWeight + ((((motionEvent.getY() - motionEvent2.getY()) - this.startDeltaY) / PaintWeightChooserView.this.touchRect.height()) * (PaintWeightChooserView.this.max - PaintWeightChooserView.this.min)), PaintWeightChooserView.this.min, PaintWeightChooserView.this.max);
                    if (PaintWeightChooserView.this.valueOverride != null) {
                        PaintWeightChooserView.this.valueOverride.set(fClamp);
                    } else {
                        PaintWeightChooserView.this.colorSwatch.brushWeight = fClamp;
                    }
                    PaintWeightChooserView.this.animatedWeight.set(fClamp, true);
                    if (PaintWeightChooserView.this.onUpdate != null) {
                        PaintWeightChooserView.this.onUpdate.run();
                    }
                    PaintWeightChooserView.this.invalidate();
                }
                return PaintWeightChooserView.this.isTouchInProgress;
            }
        });
        this.colorPaint.setColor(-1);
        this.colorPaint.setShadowLayer(AndroidUtilities.dp(4.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(2.0f), 1342177280);
        this.backgroundPaint.setColor(1090519039);
        this.backgroundPaint.setShadowLayer(AndroidUtilities.dp(3.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(1.0f), 637534208);
    }

    private void drawCircleWithShadow(Canvas canvas, float f, float f2, float f3, boolean z) {
        if (z) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((f - f3) - AndroidUtilities.dp(6.0f), (f2 - f3) - AndroidUtilities.dp(6.0f), f + f3 + AndroidUtilities.dp(6.0f), f2 + f3 + AndroidUtilities.dp(6.0f));
            canvas.saveLayerAlpha(rectF, (int) (this.showProgress * 255.0f), 31);
        }
        canvas.drawCircle(f, f2, f3, this.colorPaint);
        if (z) {
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float fMax;
        float fMax2;
        super.onDraw(canvas);
        long jMin = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
        this.lastUpdate = System.currentTimeMillis();
        AnimatedFloat animatedFloat = this.animatedWeight;
        ValueOverride valueOverride = this.valueOverride;
        float f = animatedFloat.set(valueOverride != null ? valueOverride.get() : this.colorSwatch.brushWeight);
        float f2 = this.animatedMin.set(this.min);
        float f3 = this.animatedMax.set(this.max);
        boolean z = this.isViewHidden;
        if (z) {
            float f4 = this.hideProgress;
            if (f4 != 1.0f) {
                fMax = Math.min(1.0f, f4 + (jMin / 200.0f));
            } else if (!z) {
                float f5 = this.hideProgress;
                if (f5 != BitmapDescriptorFactory.HUE_RED) {
                    fMax = Math.max(BitmapDescriptorFactory.HUE_RED, f5 - (jMin / 200.0f));
                }
            }
            this.hideProgress = fMax;
            invalidate();
        }
        boolean z2 = this.isTouchInProgress;
        if (z2) {
            float f6 = this.showProgress;
            if (f6 != 1.0f) {
                fMax2 = Math.min(1.0f, f6 + (jMin / 200.0f));
            } else if (!z2) {
                float f7 = this.showProgress;
                if (f7 != BitmapDescriptorFactory.HUE_RED) {
                    fMax2 = Math.max(BitmapDescriptorFactory.HUE_RED, f7 - (jMin / 200.0f));
                }
            }
            this.showProgress = fMax2;
            invalidate();
        }
        float fHeight = this.touchRect.height();
        int iDp = AndroidUtilities.dp(16.0f);
        int iDp2 = AndroidUtilities.dp(3.0f);
        int iDp3 = AndroidUtilities.dp(3.0f);
        this.path.rewind();
        this.path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        RectF rectF = AndroidUtilities.rectTmp;
        int i = -iDp3;
        int i2 = -iDp;
        rectF.set(AndroidUtilities.lerp(i, i2, this.showProgress), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(iDp3, iDp, this.showProgress), AndroidUtilities.lerp(iDp3, iDp, this.showProgress) * 2);
        this.path.arcTo(rectF, -90.0f, 90.0f);
        this.path.lineTo(AndroidUtilities.lerp(iDp3, iDp2, this.showProgress), fHeight);
        rectF.set(AndroidUtilities.lerp(i, -iDp2, this.showProgress), fHeight - (iDp2 * 2), AndroidUtilities.lerp(iDp3, iDp2, this.showProgress), fHeight);
        this.path.arcTo(rectF, BitmapDescriptorFactory.HUE_RED, 180.0f);
        float f8 = iDp;
        this.path.lineTo(AndroidUtilities.lerp(i, i2, this.showProgress), f8);
        rectF.set(AndroidUtilities.lerp(i, i2, this.showProgress), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(iDp3, iDp, this.showProgress), iDp * 2);
        this.path.arcTo(rectF, -180.0f, 90.0f);
        this.path.close();
        if (this.hideProgress != BitmapDescriptorFactory.HUE_RED) {
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            canvas.saveLayerAlpha(rectF, (int) ((1.0f - this.hideProgress) * 255.0f), 31);
        }
        canvas.save();
        float fDp = AndroidUtilities.dp(32.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        canvas.translate(fDp * cubicBezierInterpolator.getInterpolation(this.showProgress), this.touchRect.top);
        canvas.drawPath(this.path, this.backgroundPaint);
        canvas.restore();
        float fDp2 = AndroidUtilities.dp(32.0f) * cubicBezierInterpolator.getInterpolation(this.showProgress);
        RectF rectF2 = this.touchRect;
        float f9 = (f - f2) / (f3 - f2);
        float fHeight2 = rectF2.top + (rectF2.height() * (1.0f - f9));
        RectF rectF3 = this.touchRect;
        float f10 = iDp2 * 1.5f;
        drawCircleWithShadow(canvas, fDp2, MathUtils.clamp(fHeight2, rectF3.top + f8, rectF3.bottom - Math.min(f10, f8)), AndroidUtilities.lerp(AndroidUtilities.dp(12.0f), AndroidUtilities.lerp(Math.min(f10, f8), f8, f9), this.showProgress), false);
        if (this.drawCenter && this.showProgress != BitmapDescriptorFactory.HUE_RED && this.showPreview && this.renderView != null) {
            drawCircleWithShadow(canvas, getWidth() / 2.0f, getHeight() / 2.0f, this.renderView.brushWeightForSize(f) * this.renderView.getCurrentBrush().getScale() * this.renderView.getCurrentBrush().getPreviewScale(), true);
        }
        if (this.hideProgress != BitmapDescriptorFactory.HUE_RED) {
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isPanTransitionInProgress) {
            return;
        }
        int height = (int) (getHeight() * 0.3f);
        this.touchRect.set(BitmapDescriptorFactory.HUE_RED, (getHeight() - height) / 2.0f, AndroidUtilities.dp(32.0f), (getHeight() + height) / 2.0f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.gestureDetector.onTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            this.isTouchInProgress = false;
            invalidate();
        }
        return zOnTouchEvent;
    }

    public void setBrushWeight(float f) {
        this.colorSwatch.brushWeight = f;
        invalidate();
    }

    public void setColorSwatch(Swatch swatch) {
        this.colorSwatch = swatch;
        invalidate();
    }

    public void setDrawCenter(boolean z) {
        this.drawCenter = z;
        invalidate();
    }

    public void setMinMax(float f, float f2) {
        this.min = f;
        this.max = f2;
        invalidate();
    }

    public void setOnUpdate(Runnable runnable) {
        this.onUpdate = runnable;
    }

    public void setRenderView(RenderView renderView) {
        this.renderView = renderView;
    }

    public void setShowPreview(boolean z) {
        this.showPreview = z;
        invalidate();
    }

    public void setValueOverride(ValueOverride valueOverride) {
        this.valueOverride = valueOverride;
        invalidate();
    }

    public void setViewHidden(boolean z) {
        this.isViewHidden = z;
        invalidate();
    }

    public void stopPanTransition() {
        this.isPanTransitionInProgress = false;
        invalidate();
    }
}
