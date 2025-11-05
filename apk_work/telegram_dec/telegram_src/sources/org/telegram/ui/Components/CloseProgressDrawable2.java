package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class CloseProgressDrawable2 extends Drawable {
    private float angle;
    private boolean animating;
    private int currentColor;
    private int globalColorAlpha;
    private DecelerateInterpolator interpolator;
    private long lastFrameTime;
    private Paint paint;
    private RectF rect;
    private int side;

    public CloseProgressDrawable2() {
        this(2.0f);
    }

    public CloseProgressDrawable2(float f) {
        this.paint = new Paint(1);
        this.interpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.globalColorAlpha = 255;
        this.paint.setColor(-1);
        this.paint.setStrokeWidth(AndroidUtilities.dp(f));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStyle(Paint.Style.STROKE);
        this.side = AndroidUtilities.dp(8.0f);
    }

    private void setColor(int i) {
        if (this.currentColor != i) {
            this.globalColorAlpha = Color.alpha(i);
            this.paint.setColor(ColorUtils.setAlphaComponent(i, 255));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b4  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        setColor(getCurrentColor());
        long j = this.lastFrameTime;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        if (j != 0) {
            long j2 = jCurrentTimeMillis - j;
            boolean z = this.animating;
            if (z || this.angle != BitmapDescriptorFactory.HUE_RED) {
                float f8 = this.angle + ((j2 * 360) / 500.0f);
                this.angle = f8;
                if (z || f8 < 720.0f) {
                    this.angle = f8 - (((int) (f8 / 720.0f)) * 720);
                } else {
                    this.angle = BitmapDescriptorFactory.HUE_RED;
                }
                invalidateSelf();
            }
        }
        if (this.globalColorAlpha == 255 || getBounds() == null || getBounds().isEmpty()) {
            canvas.save();
        } else {
            canvas.saveLayerAlpha(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom, this.globalColorAlpha, 31);
        }
        canvas.translate(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2);
        canvas.rotate(-45.0f);
        float f9 = this.angle;
        if (f9 < BitmapDescriptorFactory.HUE_RED || f9 >= 90.0f) {
            if (f9 >= 90.0f && f9 < 180.0f) {
                f3 = 1.0f - ((f9 - 90.0f) / 90.0f);
                f = BitmapDescriptorFactory.HUE_RED;
                f2 = 1.0f;
                f5 = BitmapDescriptorFactory.HUE_RED;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                }
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                }
                if (f2 != BitmapDescriptorFactory.HUE_RED) {
                }
                if (f5 != 1.0f) {
                }
                canvas.restore();
                int iCenterX = getBounds().centerX();
                int iCenterY = getBounds().centerY();
                RectF rectF = this.rect;
                int i = this.side;
                rectF.set(iCenterX - i, iCenterY - i, iCenterX + i, iCenterY + i);
                RectF rectF2 = this.rect;
                f6 = this.angle;
                if (f6 >= 360.0f) {
                }
                canvas.drawArc(rectF2, f7 - 45.0f, f6 >= 360.0f ? f6 : 720.0f - f6, false, this.paint);
                this.lastFrameTime = jCurrentTimeMillis;
            }
            if (f9 < 180.0f || f9 >= 270.0f) {
                if (f9 >= 270.0f && f9 < 360.0f) {
                    f4 = (f9 - 270.0f) / 90.0f;
                } else if (f9 < 360.0f || f9 >= 450.0f) {
                    if (f9 >= 450.0f && f9 < 540.0f) {
                        f = (f9 - 450.0f) / 90.0f;
                        f3 = BitmapDescriptorFactory.HUE_RED;
                    } else if (f9 >= 540.0f && f9 < 630.0f) {
                        f3 = (f9 - 540.0f) / 90.0f;
                        f = 1.0f;
                    } else if (f9 < 630.0f || f9 >= 720.0f) {
                        f = 1.0f;
                    } else {
                        f2 = (f9 - 630.0f) / 90.0f;
                        f = 1.0f;
                        f3 = 1.0f;
                    }
                    f2 = BitmapDescriptorFactory.HUE_RED;
                } else {
                    f4 = 1.0f - ((f9 - 360.0f) / 90.0f);
                }
                f5 = f4;
                f = BitmapDescriptorFactory.HUE_RED;
                f3 = BitmapDescriptorFactory.HUE_RED;
                f2 = BitmapDescriptorFactory.HUE_RED;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.side * f, this.paint);
                }
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    canvas.drawLine((-this.side) * f3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.paint);
                }
                if (f2 != BitmapDescriptorFactory.HUE_RED) {
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, (-this.side) * f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.paint);
                }
                if (f5 != 1.0f) {
                    float f10 = this.side;
                    canvas.drawLine(f10 * f5, BitmapDescriptorFactory.HUE_RED, f10, BitmapDescriptorFactory.HUE_RED, this.paint);
                }
                canvas.restore();
                int iCenterX2 = getBounds().centerX();
                int iCenterY2 = getBounds().centerY();
                RectF rectF3 = this.rect;
                int i2 = this.side;
                rectF3.set(iCenterX2 - i2, iCenterY2 - i2, iCenterX2 + i2, iCenterY2 + i2);
                RectF rectF22 = this.rect;
                f6 = this.angle;
                if (f6 >= 360.0f) {
                    f7 = f6 - 360.0f;
                }
                canvas.drawArc(rectF22, f7 - 45.0f, f6 >= 360.0f ? f6 : 720.0f - f6, false, this.paint);
                this.lastFrameTime = jCurrentTimeMillis;
            }
            f2 = 1.0f - ((f9 - 180.0f) / 90.0f);
            f = BitmapDescriptorFactory.HUE_RED;
            f3 = BitmapDescriptorFactory.HUE_RED;
            f5 = BitmapDescriptorFactory.HUE_RED;
            if (f != BitmapDescriptorFactory.HUE_RED) {
            }
            if (f3 != BitmapDescriptorFactory.HUE_RED) {
            }
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
            }
            if (f5 != 1.0f) {
            }
            canvas.restore();
            int iCenterX22 = getBounds().centerX();
            int iCenterY22 = getBounds().centerY();
            RectF rectF32 = this.rect;
            int i22 = this.side;
            rectF32.set(iCenterX22 - i22, iCenterY22 - i22, iCenterX22 + i22, iCenterY22 + i22);
            RectF rectF222 = this.rect;
            f6 = this.angle;
            if (f6 >= 360.0f) {
            }
            canvas.drawArc(rectF222, f7 - 45.0f, f6 >= 360.0f ? f6 : 720.0f - f6, false, this.paint);
            this.lastFrameTime = jCurrentTimeMillis;
        }
        f = 1.0f - (f9 / 90.0f);
        f3 = 1.0f;
        f2 = 1.0f;
        f5 = BitmapDescriptorFactory.HUE_RED;
        if (f != BitmapDescriptorFactory.HUE_RED) {
        }
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
        }
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
        }
        if (f5 != 1.0f) {
        }
        canvas.restore();
        int iCenterX222 = getBounds().centerX();
        int iCenterY222 = getBounds().centerY();
        RectF rectF322 = this.rect;
        int i222 = this.side;
        rectF322.set(iCenterX222 - i222, iCenterY222 - i222, iCenterX222 + i222, iCenterY222 + i222);
        RectF rectF2222 = this.rect;
        f6 = this.angle;
        if (f6 >= 360.0f) {
        }
        canvas.drawArc(rectF2222, f7 - 45.0f, f6 >= 360.0f ? f6 : 720.0f - f6, false, this.paint);
        this.lastFrameTime = jCurrentTimeMillis;
    }

    protected abstract int getCurrentColor();

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
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setSide(int i) {
        this.side = i;
    }

    public void startAnimation() {
        this.animating = true;
        this.lastFrameTime = System.currentTimeMillis();
        invalidateSelf();
    }

    public void stopAnimation() {
        this.animating = false;
    }
}
