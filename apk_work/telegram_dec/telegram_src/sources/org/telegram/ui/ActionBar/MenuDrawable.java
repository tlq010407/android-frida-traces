package org.telegram.ui.ActionBar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.MediaActionDrawable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class MenuDrawable extends Drawable {
    public static int TYPE_DEFAULT = 0;
    public static int TYPE_UDPATE_AVAILABLE = 1;
    public static int TYPE_UDPATE_DOWNLOADING = 2;
    private int alpha;
    private float animatedDownloadProgress;
    private int backColor;
    private final Paint backPaint;
    private int currentAnimationTime;
    private float currentRotation;
    private float downloadProgress;
    private float downloadProgressAnimationStart;
    private float downloadProgressTime;
    private float downloadRadOffset;
    private float finalRotation;
    private int iconColor;
    private DecelerateInterpolator interpolator;
    private long lastFrameTime;
    private boolean miniIcon;
    private final Paint paint;
    private int previousType;
    private RectF rect;
    private boolean reverseAngle;
    private boolean rotateToBack;
    private boolean roundCap;
    private int type;
    private float typeAnimationProgress;

    public MenuDrawable() {
        this(TYPE_DEFAULT);
    }

    public MenuDrawable(int i) {
        Paint paint = new Paint(1);
        this.paint = paint;
        Paint paint2 = new Paint(1);
        this.backPaint = paint2;
        this.rotateToBack = true;
        this.interpolator = new DecelerateInterpolator();
        this.rect = new RectF();
        this.alpha = 255;
        paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        paint2.setStrokeWidth(AndroidUtilities.density * 1.66f);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStyle(Paint.Style.STROKE);
        this.previousType = TYPE_DEFAULT;
        this.type = i;
        this.typeAnimationProgress = 1.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x046e  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float fDp;
        float fDp2;
        float f;
        float f2;
        float f3;
        float fDp3;
        float fDp4;
        float fDp5;
        float fDp6;
        int i;
        float f4;
        Canvas canvas2;
        float f5;
        Paint paint;
        float f6;
        float f7;
        int i2;
        int i3;
        float fDp7;
        float f8;
        int i4;
        int i5;
        Paint paint2;
        int i6;
        int i7;
        int i8;
        Paint paint3;
        int i9;
        float f9;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.lastFrameTime;
        long j2 = jElapsedRealtime - j;
        float f10 = this.currentRotation;
        float f11 = this.finalRotation;
        if (f10 != f11) {
            if (j != 0) {
                int i10 = (int) (this.currentAnimationTime + j2);
                this.currentAnimationTime = i10;
                if (i10 >= 200) {
                    this.currentRotation = f11;
                } else {
                    this.currentRotation = f10 < f11 ? this.interpolator.getInterpolation(i10 / 200.0f) * this.finalRotation : 1.0f - this.interpolator.getInterpolation(i10 / 200.0f);
                }
            }
            invalidateSelf();
        }
        float f12 = this.typeAnimationProgress;
        if (f12 < 1.0f) {
            float f13 = f12 + (j2 / 200.0f);
            this.typeAnimationProgress = f13;
            if (f13 > 1.0f) {
                this.typeAnimationProgress = 1.0f;
            }
            invalidateSelf();
        }
        this.lastFrameTime = jElapsedRealtime;
        canvas.save();
        canvas.translate(((getIntrinsicWidth() / 2) - AndroidUtilities.dp(9.0f)) - (AndroidUtilities.dp(1.0f) * this.currentRotation), getIntrinsicHeight() / 2);
        int color = this.iconColor;
        if (color == 0) {
            color = Theme.getColor(Theme.key_actionBarDefaultIcon);
        }
        int color2 = this.backColor;
        if (color2 == 0) {
            color2 = Theme.getColor(Theme.key_actionBarDefault);
        }
        int offsetColor = color2;
        int i11 = this.type;
        int i12 = TYPE_DEFAULT;
        if (i11 != i12) {
            if (this.previousType == i12) {
                fDp = AndroidUtilities.dp(9.0f) * this.typeAnimationProgress * (1.0f - this.currentRotation);
                fDp2 = AndroidUtilities.dp(7.0f) * this.typeAnimationProgress;
            } else {
                fDp = AndroidUtilities.dp(9.0f) * (1.0f - this.currentRotation);
                fDp2 = AndroidUtilities.dp(7.0f);
            }
            f = this.currentRotation;
        } else {
            if (this.previousType == i12) {
                f3 = BitmapDescriptorFactory.HUE_RED;
                f2 = BitmapDescriptorFactory.HUE_RED;
                if (this.rotateToBack) {
                    canvas.rotate(this.currentRotation * (this.reverseAngle ? -225 : 135), AndroidUtilities.dp(9.0f), BitmapDescriptorFactory.HUE_RED);
                    if (this.miniIcon) {
                        this.paint.setColor(color);
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine((AndroidUtilities.dp(1.0f) * this.currentRotation) + (AndroidUtilities.dpf2(2.0f) * (1.0f - Math.abs(this.currentRotation))), BitmapDescriptorFactory.HUE_RED, ((AndroidUtilities.dpf2(16.0f) * (1.0f - this.currentRotation)) + (AndroidUtilities.dp(17.0f) * this.currentRotation)) - f3, BitmapDescriptorFactory.HUE_RED, this.paint);
                        fDp3 = (AndroidUtilities.dpf2(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dpf2(0.5f) * Math.abs(this.currentRotation));
                        fDp4 = (AndroidUtilities.dpf2(16.0f) * (1.0f - Math.abs(this.currentRotation))) + (AndroidUtilities.dpf2(9.0f) * Math.abs(this.currentRotation));
                        fDp5 = AndroidUtilities.dpf2(5.0f) + (AndroidUtilities.dpf2(3.0f) * Math.abs(this.currentRotation));
                        fDp6 = AndroidUtilities.dpf2(2.0f) + (AndroidUtilities.dpf2(7.0f) * Math.abs(this.currentRotation));
                    } else {
                        int color3 = Theme.getColor(Theme.key_actionBarActionModeDefaultIcon);
                        offsetColor = AndroidUtilities.getOffsetColor(offsetColor, Theme.getColor(Theme.key_actionBarActionModeDefault), this.currentRotation, 1.0f);
                        this.paint.setColor(AndroidUtilities.getOffsetColor(color, color3, this.currentRotation, 1.0f));
                        this.paint.setAlpha(this.alpha);
                        canvas.drawLine(this.currentRotation * AndroidUtilities.dp(1.0f), BitmapDescriptorFactory.HUE_RED, (AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(1.0f) * this.currentRotation)) - f3, BitmapDescriptorFactory.HUE_RED, this.paint);
                        fDp3 = (AndroidUtilities.dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dp(0.5f) * Math.abs(this.currentRotation));
                        fDp4 = AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(9.0f) * Math.abs(this.currentRotation));
                        fDp5 = AndroidUtilities.dp(5.0f) + (AndroidUtilities.dp(3.0f) * Math.abs(this.currentRotation));
                        fDp6 = AndroidUtilities.dp(9.0f) * Math.abs(this.currentRotation);
                    }
                } else {
                    canvas.rotate(this.currentRotation * (this.reverseAngle ? -180 : 180), AndroidUtilities.dp(9.0f), BitmapDescriptorFactory.HUE_RED);
                    this.paint.setColor(color);
                    this.paint.setAlpha(this.alpha);
                    canvas.drawLine(this.roundCap ? (AndroidUtilities.dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation)) : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, ((AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(3.0f) * this.currentRotation)) - f3) - (this.roundCap ? (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation) : BitmapDescriptorFactory.HUE_RED), BitmapDescriptorFactory.HUE_RED, this.paint);
                    fDp3 = (AndroidUtilities.dp(5.0f) * (1.0f - Math.abs(this.currentRotation))) - (AndroidUtilities.dp(0.5f) * Math.abs(this.currentRotation));
                    fDp4 = AndroidUtilities.dp(18.0f) - (AndroidUtilities.dp(2.5f) * Math.abs(this.currentRotation));
                    fDp5 = AndroidUtilities.dp(5.0f) + (AndroidUtilities.dp(2.0f) * Math.abs(this.currentRotation));
                    fDp6 = AndroidUtilities.dp(7.5f) * Math.abs(this.currentRotation);
                    if (this.roundCap) {
                        fDp6 += (this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation);
                        float fDp8 = fDp3 + (AndroidUtilities.dp(0.5f) * this.currentRotation);
                        fDp4 -= (AndroidUtilities.dp(0.5f) * this.currentRotation) + ((this.paint.getStrokeWidth() / 2.0f) * (1.0f - this.currentRotation));
                        fDp5 -= AndroidUtilities.dp(0.25f) * this.currentRotation;
                        fDp3 = fDp8 + (AndroidUtilities.dp(0.25f) * this.currentRotation);
                    }
                }
                float f14 = fDp3;
                float f15 = fDp4;
                float f16 = fDp6;
                int i13 = offsetColor;
                float f17 = fDp5;
                if (this.miniIcon) {
                    i = i13;
                    f4 = f14;
                    canvas2 = canvas;
                    f5 = f16;
                    canvas2.drawLine(f5, -f17, f15 - f2, -f14, this.paint);
                    paint = this.paint;
                    f6 = f17;
                    f7 = f15;
                } else {
                    canvas2 = canvas;
                    f5 = f16;
                    f7 = f15;
                    i = i13;
                    f4 = f14;
                    canvas2.drawLine(f5, -f17, f7, -f14, this.paint);
                    paint = this.paint;
                    f6 = f17;
                }
                canvas2.drawLine(f5, f6, f7, f4, paint);
                i2 = this.type;
                i3 = TYPE_DEFAULT;
                if ((i2 == i3 && this.currentRotation != 1.0f) || (this.previousType != i3 && this.typeAnimationProgress != 1.0f)) {
                    fDp7 = AndroidUtilities.dp(17.0f);
                    f8 = -AndroidUtilities.dp(4.5f);
                    float f18 = AndroidUtilities.density * 5.5f;
                    float f19 = 1.0f - this.currentRotation;
                    canvas.scale(f19, f19, fDp7, f8);
                    if (this.type == TYPE_DEFAULT) {
                        f18 *= 1.0f - this.typeAnimationProgress;
                    }
                    this.backPaint.setColor(i);
                    this.backPaint.setAlpha(this.alpha);
                    canvas.drawCircle(fDp7, f8, f18, this.paint);
                    i4 = this.type;
                    i5 = TYPE_UDPATE_AVAILABLE;
                    if (i4 == i5 || this.previousType == i5) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                        if (this.previousType != TYPE_UDPATE_AVAILABLE) {
                            paint2 = this.backPaint;
                            i6 = (int) (this.alpha * (1.0f - this.typeAnimationProgress));
                        } else {
                            paint2 = this.backPaint;
                            i6 = this.alpha;
                        }
                        paint2.setAlpha(i6);
                        canvas.drawLine(fDp7, f8 - AndroidUtilities.dp(2.0f), fDp7, f8, this.backPaint);
                        canvas.drawPoint(fDp7, AndroidUtilities.dp(2.5f) + f8, this.backPaint);
                    }
                    i7 = this.type;
                    i8 = TYPE_UDPATE_DOWNLOADING;
                    if (i7 != i8 || this.previousType == i8) {
                        this.backPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                        if (this.previousType != TYPE_UDPATE_DOWNLOADING) {
                            paint3 = this.backPaint;
                            i9 = (int) (this.alpha * (1.0f - this.typeAnimationProgress));
                        } else {
                            paint3 = this.backPaint;
                            i9 = this.alpha;
                        }
                        paint3.setAlpha(i9);
                        float fMax = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                        this.rect.set(fDp7 - AndroidUtilities.dp(3.0f), f8 - AndroidUtilities.dp(3.0f), fDp7 + AndroidUtilities.dp(3.0f), f8 + AndroidUtilities.dp(3.0f));
                        canvas.drawArc(this.rect, this.downloadRadOffset, fMax, false, this.backPaint);
                        float f20 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                        this.downloadRadOffset = f20;
                        this.downloadRadOffset = MediaActionDrawable.getCircleValue(f20);
                        float f21 = this.downloadProgress;
                        float f22 = this.downloadProgressAnimationStart;
                        f9 = f21 - f22;
                        if (f9 > BitmapDescriptorFactory.HUE_RED) {
                            float f23 = this.downloadProgressTime + j2;
                            this.downloadProgressTime = f23;
                            if (f23 >= 200.0f) {
                                this.animatedDownloadProgress = f21;
                                this.downloadProgressAnimationStart = f21;
                                this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                this.animatedDownloadProgress = f22 + (f9 * this.interpolator.getInterpolation(f23 / 200.0f));
                            }
                        }
                        invalidateSelf();
                    }
                }
                canvas.restore();
            }
            fDp = AndroidUtilities.dp(9.0f) * (1.0f - this.typeAnimationProgress);
            fDp2 = AndroidUtilities.dp(7.0f);
            f = this.typeAnimationProgress;
        }
        f3 = fDp2 * (1.0f - f);
        f2 = fDp;
        if (this.rotateToBack) {
        }
        float f142 = fDp3;
        float f152 = fDp4;
        float f162 = fDp6;
        int i132 = offsetColor;
        float f172 = fDp5;
        if (this.miniIcon) {
        }
        canvas2.drawLine(f5, f6, f7, f4, paint);
        i2 = this.type;
        i3 = TYPE_DEFAULT;
        if (i2 == i3) {
            fDp7 = AndroidUtilities.dp(17.0f);
            f8 = -AndroidUtilities.dp(4.5f);
            float f182 = AndroidUtilities.density * 5.5f;
            float f192 = 1.0f - this.currentRotation;
            canvas.scale(f192, f192, fDp7, f8);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas.drawCircle(fDp7, f8, f182, this.paint);
            i4 = this.type;
            i5 = TYPE_UDPATE_AVAILABLE;
            if (i4 == i5) {
                this.backPaint.setStrokeWidth(AndroidUtilities.density * 1.66f);
                if (this.previousType != TYPE_UDPATE_AVAILABLE) {
                }
                paint2.setAlpha(i6);
                canvas.drawLine(fDp7, f8 - AndroidUtilities.dp(2.0f), fDp7, f8, this.backPaint);
                canvas.drawPoint(fDp7, AndroidUtilities.dp(2.5f) + f8, this.backPaint);
                i7 = this.type;
                i8 = TYPE_UDPATE_DOWNLOADING;
                if (i7 != i8) {
                    this.backPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                    if (this.previousType != TYPE_UDPATE_DOWNLOADING) {
                    }
                    paint3.setAlpha(i9);
                    float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                    this.rect.set(fDp7 - AndroidUtilities.dp(3.0f), f8 - AndroidUtilities.dp(3.0f), fDp7 + AndroidUtilities.dp(3.0f), f8 + AndroidUtilities.dp(3.0f));
                    canvas.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.backPaint);
                    float f202 = this.downloadRadOffset + ((360 * j2) / 2500.0f);
                    this.downloadRadOffset = f202;
                    this.downloadRadOffset = MediaActionDrawable.getCircleValue(f202);
                    float f212 = this.downloadProgress;
                    float f222 = this.downloadProgressAnimationStart;
                    f9 = f212 - f222;
                    if (f9 > BitmapDescriptorFactory.HUE_RED) {
                    }
                    invalidateSelf();
                }
            }
        } else {
            fDp7 = AndroidUtilities.dp(17.0f);
            f8 = -AndroidUtilities.dp(4.5f);
            float f1822 = AndroidUtilities.density * 5.5f;
            float f1922 = 1.0f - this.currentRotation;
            canvas.scale(f1922, f1922, fDp7, f8);
            if (this.type == TYPE_DEFAULT) {
            }
            this.backPaint.setColor(i);
            this.backPaint.setAlpha(this.alpha);
            canvas.drawCircle(fDp7, f8, f1822, this.paint);
            i4 = this.type;
            i5 = TYPE_UDPATE_AVAILABLE;
            if (i4 == i5) {
            }
        }
        canvas.restore();
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
        if (this.alpha != i) {
            this.alpha = i;
            this.paint.setAlpha(i);
            this.backPaint.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setBackColor(int i) {
        this.backColor = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setIconColor(int i) {
        this.iconColor = i;
    }

    public void setMiniIcon(boolean z) {
        this.miniIcon = z;
    }

    public void setRotateToBack(boolean z) {
        this.rotateToBack = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setRotation(float f, boolean z) {
        boolean z2;
        this.lastFrameTime = 0L;
        float f2 = this.currentRotation;
        if (f2 != 1.0f) {
            z2 = f2 != BitmapDescriptorFactory.HUE_RED;
            this.lastFrameTime = 0L;
            if (z) {
                this.currentRotation = f;
            } else {
                this.currentAnimationTime = f2 < f ? (int) (f2 * 200.0f) : (int) ((1.0f - f2) * 200.0f);
                this.lastFrameTime = SystemClock.elapsedRealtime();
            }
            this.finalRotation = f;
            invalidateSelf();
        }
        this.reverseAngle = z2;
        this.lastFrameTime = 0L;
        if (z) {
        }
        this.finalRotation = f;
        invalidateSelf();
    }

    public void setRoundCap() {
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.roundCap = true;
    }
}
