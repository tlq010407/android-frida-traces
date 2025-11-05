package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import androidx.core.content.ContextCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ColoredImageSpan extends ReplacementSpan {
    private float alpha;
    private Runnable checkColorDelegate;
    int colorKey;
    public Drawable drawable;
    int drawableColor;
    private Paint.FontMetricsInt fontMetrics;
    private boolean isRelativeSize;
    private int overrideColor;
    public boolean recolorDrawable;
    private float rotate;
    private float scaleX;
    private float scaleY;
    private int size;
    private int sizeWidth;
    public float spaceScaleX;
    private int topOffset;
    private float translateX;
    private float translateY;
    public boolean useLinkPaintColor;
    boolean usePaintColor;
    private final int verticalAlignment;

    public ColoredImageSpan(int i) {
        this(i, 0);
    }

    public ColoredImageSpan(int i, int i2) {
        this(ContextCompat.getDrawable(ApplicationLoader.applicationContext, i).mutate(), i2);
    }

    public ColoredImageSpan(Drawable drawable) {
        this(drawable, 0);
    }

    public ColoredImageSpan(Drawable drawable, int i) {
        this.recolorDrawable = true;
        this.usePaintColor = true;
        this.useLinkPaintColor = false;
        this.topOffset = 0;
        this.alpha = 1.0f;
        this.spaceScaleX = 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.drawable = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        this.verticalAlignment = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009d  */
    @Override // android.text.style.ReplacementSpan
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        boolean z;
        int i6;
        float alpha;
        float alpha2;
        Runnable runnable = this.checkColorDelegate;
        if (runnable == null) {
            if (this.recolorDrawable) {
                int color = this.overrideColor;
                if (color == 0) {
                    if (this.useLinkPaintColor && (paint instanceof TextPaint)) {
                        color = ((TextPaint) paint).linkColor;
                    } else if (this.usePaintColor) {
                        color = paint.getColor();
                        z = true;
                        if (this.drawableColor != color) {
                            this.drawableColor = color;
                            this.drawable.setColorFilter(new PorterDuffColorFilter(this.drawableColor, PorterDuff.Mode.SRC_IN));
                        }
                    } else {
                        color = Theme.getColor(this.colorKey);
                    }
                    z = false;
                    if (this.drawableColor != color) {
                    }
                } else {
                    z = false;
                    if (this.drawableColor != color) {
                    }
                }
            }
            canvas.save();
            Drawable drawable = this.drawable;
            int iDp = i5 - (drawable == null ? drawable.getBounds().bottom : i5);
            i6 = this.verticalAlignment;
            if (i6 != 1) {
                if (i6 == 2) {
                    int i7 = i3 + ((i5 - i3) / 2);
                    Drawable drawable2 = this.drawable;
                    iDp = i7 - (drawable2 != null ? drawable2.getBounds().height() / 2 : 0);
                } else if (i6 == 0) {
                    int i8 = i5 - i3;
                    int intrinsicHeight = this.size;
                    if (intrinsicHeight == 0) {
                        intrinsicHeight = this.drawable.getIntrinsicHeight();
                    }
                    iDp = AndroidUtilities.dp(this.topOffset) + i3 + ((i8 - intrinsicHeight) / 2);
                }
            }
            canvas.translate(f + this.translateX, iDp + this.translateY);
            if (this.drawable != null) {
                float f2 = this.scaleX;
                if (f2 != 1.0f || this.scaleY != 1.0f) {
                    canvas.scale(f2, this.scaleY, BitmapDescriptorFactory.HUE_RED, r5.getBounds().centerY());
                }
                float f3 = this.rotate;
                if (f3 != 1.0f) {
                    canvas.rotate(f3, this.drawable.getBounds().centerX(), this.drawable.getBounds().centerY());
                }
                Drawable drawable3 = this.drawable;
                if (z) {
                    alpha = this.alpha * 255.0f;
                    alpha2 = paint.getAlpha() / Color.alpha(this.drawableColor);
                } else {
                    alpha = paint.getAlpha();
                    alpha2 = this.alpha;
                }
                drawable3.setAlpha((int) (alpha * alpha2));
                this.drawable.draw(canvas);
            }
            canvas.restore();
        }
        runnable.run();
        z = false;
        canvas.save();
        Drawable drawable4 = this.drawable;
        int iDp2 = i5 - (drawable4 == null ? drawable4.getBounds().bottom : i5);
        i6 = this.verticalAlignment;
        if (i6 != 1) {
        }
        canvas.translate(f + this.translateX, iDp2 + this.translateY);
        if (this.drawable != null) {
        }
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float fAbs;
        int intrinsicWidth;
        if (this.isRelativeSize && this.fontMetrics != null) {
            if (fontMetricsInt == null) {
                fontMetricsInt = new Paint.FontMetricsInt();
            }
            Paint.FontMetricsInt fontMetricsInt2 = this.fontMetrics;
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
            fAbs = Math.abs(this.scaleX) * Math.abs(this.spaceScaleX);
            intrinsicWidth = this.size;
        } else if (this.sizeWidth != 0) {
            fAbs = Math.abs(this.scaleX);
            intrinsicWidth = this.sizeWidth;
        } else {
            fAbs = Math.abs(this.scaleX) * Math.abs(this.spaceScaleX);
            intrinsicWidth = this.size;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.drawable.getIntrinsicWidth();
            }
        }
        return (int) (fAbs * intrinsicWidth);
    }

    public void rotate(float f) {
        this.rotate = f;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setColorKey(int i) {
        this.colorKey = i;
        this.usePaintColor = i < 0;
    }

    public void setOverrideColor(int i) {
        this.overrideColor = i;
    }

    public void setRelativeSize(Paint.FontMetricsInt fontMetricsInt) {
        this.isRelativeSize = true;
        this.fontMetrics = fontMetricsInt;
        if (fontMetricsInt != null) {
            setSize(Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent));
            if (this.size == 0) {
                setSize(AndroidUtilities.dp(20.0f));
            }
        }
    }

    public void setScale(float f) {
        this.scaleX = f;
    }

    public void setScale(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public void setSize(int i) {
        this.size = i;
        this.drawable.setBounds(0, 0, i, i);
    }

    public void setTopOffset(int i) {
        this.topOffset = i;
    }

    public void setTranslateX(float f) {
        this.translateX = f;
    }

    public void setTranslateY(float f) {
        this.translateY = f;
    }

    public void setWidth(int i) {
        this.sizeWidth = i;
    }

    public void translate(float f, float f2) {
        this.translateX = f;
        this.translateY = f2;
    }
}
