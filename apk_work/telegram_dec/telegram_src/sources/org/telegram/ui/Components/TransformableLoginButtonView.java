package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class TransformableLoginButtonView extends View {
    private Paint backgroundPaint;
    private String buttonText;
    private float buttonWidth;
    private boolean drawBackground;
    private Paint outlinePaint;
    private float progress;
    private RectF rect;
    private Drawable rippleDrawable;
    private TextPaint textPaint;
    private int transformType;

    public TransformableLoginButtonView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.outlinePaint = new Paint(1);
        this.drawBackground = true;
        this.transformType = 0;
        this.rect = new RectF();
        this.backgroundPaint.setColor(Theme.getColor(Theme.key_chats_actionBackground));
        this.outlinePaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.outlinePaint.setStyle(Paint.Style.STROKE);
        this.outlinePaint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.rippleDrawable;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        drawable.setHotspot(f, f2);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.setState(getDrawableState());
            invalidate();
        }
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.drawBackground) {
            float fDp = AndroidUtilities.dp(((this.transformType == 0 ? this.progress : 1.0f) * 26.0f) + 6.0f);
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            canvas.drawRoundRect(this.rect, fDp, fDp, this.backgroundPaint);
        }
        int i = this.transformType;
        if (i == 0) {
            TextPaint textPaint = this.textPaint;
            if (textPaint != null && this.buttonText != null) {
                int alpha = textPaint.getAlpha();
                this.textPaint.setAlpha((int) (alpha * (1.0f - (Math.min(0.6f, this.progress) / 0.6f))));
                canvas.drawText(this.buttonText, (getWidth() - this.buttonWidth) / 2.0f, ((getHeight() / 2.0f) + (this.textPaint.getTextSize() / 2.0f)) - AndroidUtilities.dp(1.75f), this.textPaint);
                this.textPaint.setAlpha(alpha);
            }
            float fMax = (Math.max(0.4f, this.progress) - 0.4f) / 0.6f;
            if (fMax != BitmapDescriptorFactory.HUE_RED) {
                float fDp2 = AndroidUtilities.dp(21.0f) + ((getWidth() - (AndroidUtilities.dp(21.0f) * 2)) * fMax);
                float height = getHeight() / 2.0f;
                canvas.drawLine(AndroidUtilities.dp(21.0f), height, fDp2, height, this.outlinePaint);
                double d = fDp2;
                double dCos = Math.cos(0.7853981633974483d);
                double dDp = AndroidUtilities.dp(9.0f) * fMax;
                Double.isNaN(dDp);
                Double.isNaN(d);
                float f = (float) (d - (dCos * dDp));
                double dSin = Math.sin(0.7853981633974483d);
                Double.isNaN(dDp);
                float f2 = (float) (dSin * dDp);
                canvas.drawLine(fDp2, height, f, height - f2, this.outlinePaint);
                canvas.drawLine(fDp2, height, f, height + f2, this.outlinePaint);
            }
        } else if (i == 1) {
            float fDp3 = AndroidUtilities.dp(21.0f);
            float width = getWidth() - AndroidUtilities.dp(21.0f);
            float height2 = getHeight() / 2.0f;
            canvas.save();
            canvas.translate((-AndroidUtilities.dp(2.0f)) * this.progress, BitmapDescriptorFactory.HUE_RED);
            canvas.rotate(this.progress * 90.0f, getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.drawLine(((width - fDp3) * this.progress) + fDp3, height2, width, height2, this.outlinePaint);
            int iDp = AndroidUtilities.dp((this.progress * (-1.0f)) + 9.0f);
            int iDp2 = AndroidUtilities.dp((this.progress * 7.0f) + 9.0f);
            double d2 = width;
            double d3 = iDp;
            double dCos2 = Math.cos(0.7853981633974483d);
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = height2;
            double dSin2 = Math.sin(0.7853981633974483d);
            Double.isNaN(d3);
            Double.isNaN(d4);
            canvas.drawLine(width, height2, (float) (d2 - (dCos2 * d3)), (float) ((d3 * dSin2) + d4), this.outlinePaint);
            double d5 = iDp2;
            double dCos3 = Math.cos(0.7853981633974483d);
            Double.isNaN(d5);
            Double.isNaN(d2);
            double dSin3 = Math.sin(0.7853981633974483d);
            Double.isNaN(d5);
            Double.isNaN(d4);
            canvas.drawLine(width, height2, (float) (d2 - (dCos3 * d5)), (float) (d4 - (d5 * dSin3)), this.outlinePaint);
            canvas.restore();
        }
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getHeight());
            if (Build.VERSION.SDK_INT >= 21) {
                this.rippleDrawable.setHotspotBounds(0, 0, getWidth(), getHeight());
            }
            this.rippleDrawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundPaint.setColor(i);
        invalidate();
    }

    public void setButtonText(TextPaint textPaint, String str) {
        this.textPaint = textPaint;
        this.buttonText = str;
        this.outlinePaint.setColor(textPaint.getColor());
        this.buttonWidth = textPaint.measureText(str);
    }

    public void setColor(int i) {
        this.outlinePaint.setColor(i);
        invalidate();
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setProgress(float f) {
        this.progress = f;
        invalidate();
    }

    public void setRippleDrawable(Drawable drawable) {
        this.rippleDrawable = drawable;
        invalidate();
    }

    public void setTransformType(int i) {
        this.transformType = i;
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2;
        return super.verifyDrawable(drawable) || ((drawable2 = this.rippleDrawable) != null && drawable == drawable2);
    }
}
