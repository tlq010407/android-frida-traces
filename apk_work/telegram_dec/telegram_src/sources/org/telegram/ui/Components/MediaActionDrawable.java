package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.animation.DecelerateInterpolator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class MediaActionDrawable extends Drawable {
    private float animatedDownloadProgress;
    private boolean animatingTransition;
    private ColorFilter colorFilter;
    private int currentIcon;
    private MediaActionDrawableDelegate delegate;
    private float downloadProgress;
    private float downloadProgressAnimationStart;
    private float downloadProgressTime;
    private float downloadRadOffset;
    private LinearGradient gradientDrawable;
    private Matrix gradientMatrix;
    private boolean hasOverlayImage;
    private boolean isMini;
    private long lastAnimationTime;
    private Theme.MessageDrawable messageDrawable;
    private int nextIcon;
    private String percentString;
    private int percentStringWidth;
    private float savedTransitionProgress;
    private TextPaint textPaint = new TextPaint(1);
    public Paint paint = new Paint(1);
    private Paint backPaint = new Paint(1);
    public Paint paint2 = new Paint(1);
    private Paint paint3 = new Paint(1);
    private RectF rect = new RectF();
    private float scale = 1.0f;
    private DecelerateInterpolator interpolator = new DecelerateInterpolator();
    private float transitionAnimationTime = 400.0f;
    private int lastPercent = -1;
    private float overrideAlpha = 1.0f;
    private float transitionProgress = 1.0f;

    public interface MediaActionDrawableDelegate {
        void invalidate();
    }

    public MediaActionDrawable() {
        this.paint.setColor(-1);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint3.setColor(-1);
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        this.textPaint.setColor(-1);
        this.paint2.setColor(-1);
    }

    public static float getCircleValue(float f) {
        while (f > 360.0f) {
            f -= 360.0f;
        }
        return f;
    }

    public void applyShaderMatrix(boolean z) {
        Theme.MessageDrawable messageDrawable = this.messageDrawable;
        if (messageDrawable == null || !messageDrawable.hasGradient() || this.hasOverlayImage) {
            return;
        }
        android.graphics.Rect bounds = getBounds();
        Shader gradientShader = this.messageDrawable.getGradientShader();
        Matrix matrix = this.messageDrawable.getMatrix();
        matrix.reset();
        this.messageDrawable.applyMatrixScale();
        if (z) {
            matrix.postTranslate(-bounds.centerX(), (-this.messageDrawable.getTopY()) + bounds.top);
        } else {
            matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, -this.messageDrawable.getTopY());
        }
        gradientShader.setLocalMatrix(matrix);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0699  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x06b2  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x06f3  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0740  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x076e  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x07c3  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x07cd  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x07d0  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x07f5  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x080a  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x083b  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0850  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0878 A[PHI: r3
      0x0878: PHI (r3v104 int) = (r3v103 int), (r3v127 int) binds: [B:356:0x0876, B:353:0x0872] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:358:0x087b A[PHI: r3
      0x087b: PHI (r3v105 int) = (r3v103 int), (r3v127 int) binds: [B:356:0x0876, B:353:0x0872] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0880 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0885 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x08de  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x08e1  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x08e4  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0912  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0929  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0949  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x094c  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0973  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x097b  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x099e  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x09d0  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0a04  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0a0a  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0a44  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0a47  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0a64  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0ab6  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0ab9  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0ae2  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0aec  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0af6  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0b82  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0b84  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0b9f  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0bb8  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0beb  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0c0f  */
    /* JADX WARN: Removed duplicated region for block: B:519:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        int iSave;
        float f;
        int i;
        float f2;
        float fDp;
        int i2;
        android.graphics.Rect rect;
        int i3;
        int i4;
        float fDp2;
        float fDp3;
        float fDp4;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        android.graphics.Rect rect2;
        int i5;
        int i6;
        int i7;
        float f11;
        float fMin;
        float fCenterX;
        float fCenterY;
        float fDp5;
        int iMin;
        float f12;
        float f13;
        float fCenterX2;
        float fDp6;
        float f14;
        float f15;
        int iCenterY;
        int iCenterY2;
        float f16;
        int i8;
        int i9;
        int i10;
        int i11;
        float f17;
        float fMax;
        Path[] pathArr;
        Path[] pathArr2;
        Path[] pathArr3;
        Path[] pathArr4;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        float f18;
        Path[] pathArr5;
        Path[] pathArr6;
        int i12;
        int i13;
        float f19;
        int i14;
        int i15;
        int i16;
        float f20;
        int i17;
        int i18;
        boolean z;
        float f21;
        int i19;
        int i20;
        float f22;
        float fMin2;
        float f23;
        int i21;
        Path[] pathArr7;
        Path[] pathArr8;
        long j;
        int i22;
        int i23;
        Path path;
        Path path2;
        Path path3;
        int i24;
        int i25;
        float interpolation = 90.0f;
        android.graphics.Rect bounds = getBounds();
        Theme.MessageDrawable messageDrawable = this.messageDrawable;
        if (messageDrawable != null && messageDrawable.hasGradient() && !this.hasOverlayImage) {
            Shader gradientShader = this.messageDrawable.getGradientShader();
            this.paint.setShader(gradientShader);
            this.paint2.setShader(gradientShader);
            this.paint3.setShader(gradientShader);
        } else if (this.gradientDrawable == null || this.hasOverlayImage) {
            this.paint.setShader(null);
            this.paint2.setShader(null);
            this.paint3.setShader(null);
        } else {
            this.gradientMatrix.reset();
            this.gradientMatrix.setTranslate(BitmapDescriptorFactory.HUE_RED, bounds.top);
            this.gradientDrawable.setLocalMatrix(this.gradientMatrix);
            this.paint.setShader(this.gradientDrawable);
            this.paint2.setShader(this.gradientDrawable);
            this.paint3.setShader(this.gradientDrawable);
        }
        int iCenterX = bounds.centerX();
        int iCenterY3 = bounds.centerY();
        int i26 = this.nextIcon;
        if (i26 == 4) {
            int i27 = this.currentIcon;
            if (i27 != 3 && i27 != 14) {
                iSave = canvas.save();
                f = 1.0f - this.transitionProgress;
                canvas.scale(f, f, iCenterX, iCenterY3);
                i = iSave;
            }
            i = 0;
        } else {
            if ((i26 == 6 || i26 == 10) && this.currentIcon == 4) {
                iSave = canvas.save();
                f = this.transitionProgress;
                canvas.scale(f, f, iCenterX, iCenterY3);
                i = iSave;
            }
            i = 0;
        }
        AndroidUtilities.dp(3.0f);
        if (this.currentIcon == 2 || this.nextIcon == 2) {
            applyShaderMatrix(false);
            float f24 = iCenterY3;
            float fDp7 = f24 - (AndroidUtilities.dp(9.0f) * this.scale);
            float fDp8 = (AndroidUtilities.dp(9.0f) * this.scale) + f24;
            float fDp9 = (AndroidUtilities.dp(12.0f) * this.scale) + f24;
            int i28 = this.currentIcon;
            if ((i28 == 3 || i28 == 14) && this.nextIcon == 2) {
                this.paint.setAlpha((int) (Math.min(1.0f, this.transitionProgress / 0.5f) * 255.0f));
                f2 = this.transitionProgress;
                fDp = (AndroidUtilities.dp(12.0f) * this.scale) + f24;
            } else {
                int i29 = this.nextIcon;
                if (i29 == 3 || i29 == 14 || i29 == 2) {
                    this.paint.setAlpha(255);
                    f2 = this.transitionProgress;
                } else {
                    this.paint.setAlpha((int) (Math.min(1.0f, this.savedTransitionProgress / 0.5f) * 255.0f * (1.0f - this.transitionProgress)));
                    f2 = this.savedTransitionProgress;
                }
                fDp = (AndroidUtilities.dp(1.0f) * this.scale) + f24;
            }
            if (this.animatingTransition) {
                int i30 = this.nextIcon;
                if (i30 == 2 || f2 <= 0.5f) {
                    i2 = iCenterX;
                    rect = bounds;
                    i3 = i;
                    i4 = iCenterY3;
                    if (i30 == 2) {
                        f8 = 1.0f - f2;
                    } else {
                        f8 = f2 / 0.5f;
                        f2 = 1.0f - f8;
                    }
                    fDp7 += (fDp - fDp7) * f8;
                    fDp8 += (fDp9 - fDp8) * f8;
                    float f25 = i2;
                    fDp2 = f25 - ((AndroidUtilities.dp(8.0f) * f2) * this.scale);
                    fDp3 = f25 + (AndroidUtilities.dp(8.0f) * f2 * this.scale);
                    fDp4 = AndroidUtilities.dp(8.0f) * f2;
                } else {
                    float fDp10 = AndroidUtilities.dp(13.0f);
                    float f26 = this.scale;
                    float fDp11 = (fDp10 * f26 * f26) + (this.isMini ? AndroidUtilities.dp(2.0f) : 0);
                    float f27 = f2 - 0.5f;
                    float f28 = f27 / 0.5f;
                    if (f27 > 0.2f) {
                        f10 = (f27 - 0.2f) / 0.3f;
                        f9 = 1.0f;
                    } else {
                        f9 = f27 / 0.2f;
                        f10 = BitmapDescriptorFactory.HUE_RED;
                    }
                    float f29 = iCenterX;
                    float f30 = f29 - fDp11;
                    float f31 = fDp11 / 2.0f;
                    this.rect.set(f30, fDp9 - f31, f29, f31 + fDp9);
                    float f32 = f10 * 100.0f;
                    i3 = i;
                    i4 = iCenterY3;
                    i2 = iCenterX;
                    canvas.drawArc(this.rect, f32, (f28 * 104.0f) - f32, false, this.paint);
                    float f33 = fDp + ((fDp9 - fDp) * f9);
                    if (f10 > BitmapDescriptorFactory.HUE_RED) {
                        float f34 = this.nextIcon == 14 ? BitmapDescriptorFactory.HUE_RED : (-45.0f) * (1.0f - f10);
                        float fDp12 = AndroidUtilities.dp(7.0f) * f10 * this.scale;
                        int iMin2 = (int) (f10 * 255.0f);
                        int i31 = this.nextIcon;
                        if (i31 != 3 && i31 != 14 && i31 != 2) {
                            iMin2 = (int) (iMin2 * (1.0f - Math.min(1.0f, this.transitionProgress / 0.5f)));
                        }
                        int i32 = iMin2;
                        if (f34 != BitmapDescriptorFactory.HUE_RED) {
                            canvas.save();
                            canvas.rotate(f34, f29, f24);
                        }
                        if (i32 != 0) {
                            this.paint.setAlpha(i32);
                            if (this.nextIcon == 14) {
                                this.paint3.setAlpha(i32);
                                this.rect.set(i2 - AndroidUtilities.dp(3.5f), i4 - AndroidUtilities.dp(3.5f), AndroidUtilities.dp(3.5f) + i2, AndroidUtilities.dp(3.5f) + i4);
                                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint3);
                                this.paint.setAlpha((int) (i32 * 0.15f));
                                int iDp = AndroidUtilities.dp(this.isMini ? 2.0f : 4.0f);
                                this.rect.set(bounds.left + iDp, bounds.top + iDp, bounds.right - iDp, bounds.bottom - iDp);
                                canvas.drawArc(this.rect, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.paint);
                                this.paint.setAlpha(i32);
                                rect2 = bounds;
                            } else {
                                rect2 = bounds;
                                float f35 = f29 - fDp12;
                                float f36 = f24 - fDp12;
                                float f37 = f29 + fDp12;
                                float f38 = f24 + fDp12;
                                canvas.drawLine(f35, f36, f37, f38, this.paint);
                                canvas.drawLine(f37, f36, f35, f38, this.paint);
                            }
                        } else {
                            rect2 = bounds;
                        }
                        if (f34 != BitmapDescriptorFactory.HUE_RED) {
                            canvas.restore();
                        }
                    } else {
                        rect2 = bounds;
                    }
                    f4 = f29;
                    f6 = f33;
                    f5 = f4;
                    rect = rect2;
                    f3 = fDp9;
                    if (f6 != f3) {
                        float f39 = i2;
                        canvas.drawLine(f39, f6, f39, f3, this.paint);
                    }
                    f7 = i2;
                    if (f5 != f7) {
                        float f40 = fDp9;
                        float f41 = f3;
                        canvas.drawLine(f5, f40, f7, f41, this.paint);
                        canvas.drawLine(f4, f40, f7, f41, this.paint);
                    }
                }
            } else {
                i2 = iCenterX;
                rect = bounds;
                i3 = i;
                i4 = iCenterY3;
                float f42 = i2;
                fDp2 = f42 - (AndroidUtilities.dp(8.0f) * this.scale);
                fDp3 = f42 + (AndroidUtilities.dp(8.0f) * this.scale);
                fDp4 = AndroidUtilities.dp(8.0f);
            }
            f3 = fDp8;
            f4 = fDp3;
            f5 = fDp2;
            fDp9 = fDp8 - (fDp4 * this.scale);
            f6 = fDp7;
            if (f6 != f3) {
            }
            f7 = i2;
            if (f5 != f7) {
            }
        } else {
            i2 = iCenterX;
            rect = bounds;
            i3 = i;
            i4 = iCenterY3;
        }
        int i33 = this.currentIcon;
        if (i33 == 3 || i33 == 14 || (i33 == 4 && ((i25 = this.nextIcon) == 14 || i25 == 3))) {
            applyShaderMatrix(false);
            int i34 = this.nextIcon;
            if (i34 == 2) {
                float f43 = this.transitionProgress;
                if (f43 <= 0.5f) {
                    float f44 = 1.0f - (f43 / 0.5f);
                    fDp6 = AndroidUtilities.dp(7.0f) * f44 * this.scale;
                    i11 = (int) (f44 * 255.0f);
                } else {
                    fDp6 = BitmapDescriptorFactory.HUE_RED;
                    i11 = 0;
                }
                iMin = i11;
                f11 = 1.0f;
                fCenterY = BitmapDescriptorFactory.HUE_RED;
                fCenterX2 = BitmapDescriptorFactory.HUE_RED;
                f13 = BitmapDescriptorFactory.HUE_RED;
                f12 = 1.0f;
                i5 = 8;
                i6 = 9;
            } else {
                if (i34 != 15 && i34 != 0) {
                    if (i34 != 1 && i34 != 5) {
                        i5 = 8;
                        i6 = 9;
                        if (i34 != 8 && i34 != 9 && i34 != 7) {
                            i7 = 6;
                            if (i34 != 6) {
                                if (i34 == 4) {
                                    float f45 = 1.0f - this.transitionProgress;
                                    float fDp13 = AndroidUtilities.dp(7.0f) * this.scale;
                                    int i35 = (int) (f45 * 255.0f);
                                    if (this.currentIcon == 14) {
                                        fCenterX2 = rect.left;
                                        iCenterY2 = rect.top;
                                    } else {
                                        fCenterX2 = rect.centerX();
                                        iCenterY2 = rect.centerY();
                                    }
                                    float f46 = iCenterY2;
                                    f12 = f45;
                                    fDp6 = fDp13;
                                    f11 = 1.0f;
                                    f13 = BitmapDescriptorFactory.HUE_RED;
                                    iMin = i35;
                                    fCenterY = f46;
                                } else if (i34 == 14 || i34 == 3) {
                                    float f47 = this.transitionProgress;
                                    float f48 = 1.0f - f47;
                                    if (this.currentIcon == 4) {
                                        f15 = f47;
                                        f14 = BitmapDescriptorFactory.HUE_RED;
                                    } else {
                                        f14 = 45.0f * f48;
                                        f15 = 1.0f;
                                    }
                                    fDp5 = AndroidUtilities.dp(7.0f) * this.scale;
                                    iMin = (int) (f47 * 255.0f);
                                    if (this.nextIcon == 14) {
                                        fCenterX = rect.left;
                                        iCenterY = rect.top;
                                    } else {
                                        fCenterX = rect.centerX();
                                        iCenterY = rect.centerY();
                                    }
                                    f12 = f15;
                                    fCenterY = iCenterY;
                                    f13 = f14;
                                    f11 = 1.0f;
                                } else {
                                    fDp6 = AndroidUtilities.dp(7.0f) * this.scale;
                                    f11 = 1.0f;
                                    fCenterY = BitmapDescriptorFactory.HUE_RED;
                                    fCenterX2 = BitmapDescriptorFactory.HUE_RED;
                                    f13 = BitmapDescriptorFactory.HUE_RED;
                                    iMin = 255;
                                    f12 = 1.0f;
                                }
                            }
                            float f49 = fDp5;
                            fCenterX2 = fCenterX;
                            fDp6 = f49;
                        }
                        if (i34 == i7) {
                            f11 = 1.0f;
                            fMin = Math.min(1.0f, this.transitionProgress / 0.5f);
                        } else {
                            f11 = 1.0f;
                            fMin = this.transitionProgress;
                        }
                        float f50 = f11 - fMin;
                        fCenterX = rect.centerX();
                        fCenterY = rect.centerY();
                        fDp5 = AndroidUtilities.dp(7.0f) * f50 * this.scale;
                        iMin = (int) (Math.min(f11, f50 * 2.0f) * 255.0f);
                        f12 = f50;
                        f13 = BitmapDescriptorFactory.HUE_RED;
                        float f492 = fDp5;
                        fCenterX2 = fCenterX;
                        fDp6 = f492;
                    }
                    i7 = 6;
                    if (i34 == i7) {
                    }
                    float f502 = f11 - fMin;
                    fCenterX = rect.centerX();
                    fCenterY = rect.centerY();
                    fDp5 = AndroidUtilities.dp(7.0f) * f502 * this.scale;
                    iMin = (int) (Math.min(f11, f502 * 2.0f) * 255.0f);
                    f12 = f502;
                    f13 = BitmapDescriptorFactory.HUE_RED;
                    float f4922 = fDp5;
                    fCenterX2 = fCenterX;
                    fDp6 = f4922;
                }
                i5 = 8;
                i6 = 9;
                i7 = 6;
                if (i34 == i7) {
                }
                float f5022 = f11 - fMin;
                fCenterX = rect.centerX();
                fCenterY = rect.centerY();
                fDp5 = AndroidUtilities.dp(7.0f) * f5022 * this.scale;
                iMin = (int) (Math.min(f11, f5022 * 2.0f) * 255.0f);
                f12 = f5022;
                f13 = BitmapDescriptorFactory.HUE_RED;
                float f49222 = fDp5;
                fCenterX2 = fCenterX;
                fDp6 = f49222;
            }
            if (f12 != f11) {
                canvas.save();
                canvas.scale(f12, f12, fCenterX2, fCenterY);
            }
            if (f13 != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.rotate(f13, i2, i4);
            }
            if (iMin != 0) {
                float f51 = iMin;
                this.paint.setAlpha((int) (this.overrideAlpha * f51));
                if (this.currentIcon == 14 || this.nextIcon == 14) {
                    f16 = f13;
                    i8 = iMin;
                    i9 = 7;
                    this.paint3.setAlpha((int) (f51 * this.overrideAlpha));
                    this.rect.set(i2 - AndroidUtilities.dp(3.5f), i4 - AndroidUtilities.dp(3.5f), AndroidUtilities.dp(3.5f) + i2, AndroidUtilities.dp(3.5f) + i4);
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint3);
                } else {
                    float f52 = i2;
                    float f53 = f52 - fDp6;
                    float f54 = i4;
                    float f55 = f54 - fDp6;
                    float f56 = f52 + fDp6;
                    float f57 = f54 + fDp6;
                    f16 = f13;
                    i8 = iMin;
                    i9 = 7;
                    canvas.drawLine(f53, f55, f56, f57, this.paint);
                    canvas.drawLine(f56, f55, f53, f57, this.paint);
                }
            } else {
                f16 = f13;
                i8 = iMin;
                i9 = 7;
            }
            if (f16 != BitmapDescriptorFactory.HUE_RED) {
                canvas.restore();
            }
            if (f12 != 1.0f) {
                canvas.restore();
            }
            int i36 = this.currentIcon;
            if ((i36 == 3 || i36 == 14 || (i36 == 4 && ((i10 = this.nextIcon) == 14 || i10 == 3))) && i8 != 0) {
                float fMax2 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                int iDp2 = AndroidUtilities.dp(this.isMini ? 2.0f : 4.0f);
                this.rect.set(rect.left + iDp2, rect.top + iDp2, rect.right - iDp2, rect.bottom - iDp2);
                int i37 = this.currentIcon;
                if (i37 == 14 || (i37 == 4 && this.nextIcon == 14)) {
                    this.paint.setAlpha((int) (i8 * 0.15f * this.overrideAlpha));
                    canvas.drawArc(this.rect, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.paint);
                    this.paint.setAlpha(i8);
                }
                canvas.drawArc(this.rect, this.downloadRadOffset, fMax2, false, this.paint);
            }
        } else {
            if (i33 == 10 || this.nextIcon == 10 || i33 == 13) {
                int i38 = this.nextIcon;
                int i39 = (i38 == 4 || i38 == 6) ? (int) ((1.0f - this.transitionProgress) * 255.0f) : 255;
                if (i39 != 0) {
                    applyShaderMatrix(false);
                    this.paint.setAlpha((int) (i39 * this.overrideAlpha));
                    float fMax3 = Math.max(4.0f, this.animatedDownloadProgress * 360.0f);
                    int iDp3 = AndroidUtilities.dp(this.isMini ? 2.0f : 4.0f);
                    this.rect.set(rect.left + iDp3, rect.top + iDp3, rect.right - iDp3, rect.bottom - iDp3);
                    canvas.drawArc(this.rect, this.downloadRadOffset, fMax3, false, this.paint);
                }
            }
            i9 = 7;
            i5 = 8;
            i6 = 9;
        }
        int i40 = this.currentIcon;
        if (i40 == this.nextIcon) {
            f17 = 1.0f;
            fMax = 1.0f;
        } else if (i40 == 4 || i40 == 3 || i40 == 14) {
            float f58 = this.transitionProgress;
            f17 = f58;
            fMax = 1.0f - f58;
        } else {
            float fMin3 = Math.min(1.0f, this.transitionProgress / 0.5f);
            fMax = Math.max(BitmapDescriptorFactory.HUE_RED, 1.0f - (this.transitionProgress / 0.5f));
            f17 = fMin3;
        }
        int i41 = this.nextIcon;
        if (i41 == 15) {
            pathArr = Theme.chat_updatePath;
        } else {
            if (this.currentIcon == 15) {
                pathArr2 = Theme.chat_updatePath;
                pathArr = null;
                if (i41 != 5) {
                    pathArr = Theme.chat_filePath;
                } else if (this.currentIcon == 5) {
                    pathArr2 = Theme.chat_filePath;
                }
                pathArr3 = pathArr;
                pathArr4 = pathArr2;
                if (i41 != i9) {
                    drawable2 = Theme.chat_flameIcon;
                    drawable = null;
                } else {
                    drawable = this.currentIcon == i9 ? Theme.chat_flameIcon : null;
                    drawable2 = null;
                }
                if (i41 != i5) {
                    drawable2 = Theme.chat_gifIcon;
                } else if (this.currentIcon == i5) {
                    drawable = Theme.chat_gifIcon;
                }
                drawable3 = drawable;
                drawable4 = drawable2;
                if (this.currentIcon != i6 || i41 == i6) {
                    applyShaderMatrix(false);
                    this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                    int iDp4 = i4 + AndroidUtilities.dp(7.0f);
                    int iDp5 = i2 - AndroidUtilities.dp(3.0f);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.save();
                        float f59 = this.transitionProgress;
                        canvas.scale(f59, f59, i2, i4);
                    }
                    float f60 = iDp5;
                    f18 = fMax;
                    float f61 = iDp4;
                    pathArr5 = pathArr4;
                    pathArr6 = pathArr3;
                    canvas.drawLine(iDp5 - AndroidUtilities.dp(6.0f), iDp4 - AndroidUtilities.dp(6.0f), f60, f61, this.paint);
                    canvas.drawLine(f60, f61, iDp5 + AndroidUtilities.dp(12.0f), iDp4 - AndroidUtilities.dp(12.0f), this.paint);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.restore();
                    }
                } else {
                    pathArr5 = pathArr4;
                    pathArr6 = pathArr3;
                    f18 = fMax;
                }
                if (this.currentIcon != 12 || this.nextIcon == 12) {
                    applyShaderMatrix(false);
                    int i42 = this.currentIcon;
                    int i43 = this.nextIcon;
                    float f62 = i42 != i43 ? 1.0f : i43 == 13 ? this.transitionProgress : 1.0f - this.transitionProgress;
                    this.paint.setAlpha(i42 != i43 ? 255 : (int) (f62 * 255.0f));
                    AndroidUtilities.dp(7.0f);
                    AndroidUtilities.dp(3.0f);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.save();
                        canvas.scale(f62, f62, i2, i4);
                    }
                    float fDp14 = AndroidUtilities.dp(7.0f) * this.scale;
                    float f63 = i2;
                    float f64 = f63 - fDp14;
                    float f65 = i4;
                    float f66 = f65 - fDp14;
                    float f67 = f63 + fDp14;
                    float f68 = f65 + fDp14;
                    canvas.drawLine(f64, f66, f67, f68, this.paint);
                    canvas.drawLine(f67, f66, f64, f68, this.paint);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.restore();
                    }
                }
                if (this.currentIcon != 13 || this.nextIcon == 13) {
                    applyShaderMatrix(false);
                    i12 = this.currentIcon;
                    i13 = this.nextIcon;
                    if (i12 != i13) {
                        f19 = 1.0f;
                    } else {
                        f19 = this.transitionProgress;
                        if (i13 != 13) {
                            f19 = 1.0f - f19;
                        }
                    }
                    this.textPaint.setAlpha((int) (f19 * 255.0f));
                    int iDp6 = i4 + AndroidUtilities.dp(5.0f);
                    int i44 = i2 - (this.percentStringWidth / 2);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.save();
                        canvas.scale(f19, f19, i2, i4);
                    }
                    i14 = (int) (this.animatedDownloadProgress * 100.0f);
                    if (this.percentString != null || i14 != this.lastPercent) {
                        this.lastPercent = i14;
                        this.percentString = String.format("%d%%", Integer.valueOf(i14));
                        this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r1));
                    }
                    canvas.drawText(this.percentString, i44, iDp6, this.textPaint);
                    if (this.currentIcon != this.nextIcon) {
                        canvas.restore();
                    }
                }
                i15 = this.currentIcon;
                if (i15 != 0 || i15 == 1 || (i24 = this.nextIcon) == 0 || i24 == 1) {
                    if ((i15 == 0 || this.nextIcon != 1) && !(i15 == 1 && this.nextIcon == 0)) {
                        i16 = 1;
                        f20 = i15 == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    } else if (this.animatingTransition) {
                        f20 = this.nextIcon == 0 ? 1.0f - this.transitionProgress : this.transitionProgress;
                        i16 = 1;
                    } else {
                        i16 = 1;
                        if (this.nextIcon == 1) {
                        }
                    }
                    i17 = this.nextIcon;
                    if ((i17 == 0 || i17 == i16) && (i15 == 0 || i15 == i16)) {
                        i18 = 255;
                        this.paint2.setAlpha(255);
                        z = true;
                    } else {
                        if (i17 == 4) {
                            this.paint2.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                        } else {
                            this.paint2.setAlpha(i15 == i17 ? 255 : (int) (this.transitionProgress * 255.0f));
                        }
                        z = true;
                        i18 = 255;
                    }
                    applyShaderMatrix(z);
                    canvas.save();
                    canvas.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f20)), rect.centerY());
                    f21 = f20 * 500.0f;
                    i19 = this.currentIcon;
                    float f69 = i19 == 1 ? 90.0f : BitmapDescriptorFactory.HUE_RED;
                    if (i19 == 0 && this.nextIcon == 1) {
                        if (f21 < 384.0f) {
                            interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f21 / 384.0f) * 95.0f;
                        } else if (f21 < 484.0f) {
                            interpolation = 95.0f - (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f21 - 384.0f) / 100.0f) * 5.0f);
                        }
                        f21 += 100.0f;
                    } else {
                        if (i19 == 1 && this.nextIcon == 0) {
                            if (f21 >= 100.0f) {
                                interpolation = CubicBezierInterpolator.EASE_BOTH.getInterpolation(f21 / 100.0f) * (-5.0f);
                            } else if (f21 < 484.0f) {
                                interpolation = (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f21 - 100.0f) / 384.0f) * 95.0f) - 5.0f;
                            } else {
                                f69 = 90.0f;
                            }
                        }
                        canvas.rotate(f69);
                        i20 = this.currentIcon;
                        if ((i20 != 0 && i20 != 1) || i20 == 4) {
                            canvas.scale(f17, f17);
                        }
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.scale(1.0f, -1.0f);
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.restore();
                    }
                    f69 = interpolation;
                    canvas.rotate(f69);
                    i20 = this.currentIcon;
                    if (i20 != 0) {
                        canvas.scale(f17, f17);
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.scale(1.0f, -1.0f);
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.restore();
                    } else {
                        canvas.scale(f17, f17);
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.scale(1.0f, -1.0f);
                        Theme.playPauseAnimator.draw(canvas, this.paint2, f21);
                        canvas.restore();
                    }
                } else {
                    i18 = 255;
                }
                if (this.currentIcon != 6 || this.nextIcon == 6) {
                    applyShaderMatrix(false);
                    if (this.currentIcon == 6) {
                        float f70 = this.transitionProgress;
                        if (f70 > 0.5f) {
                            float f71 = (f70 - 0.5f) / 0.5f;
                            fMin2 = 1.0f - Math.min(1.0f, f71 / 0.5f);
                            f22 = f71 > 0.5f ? (f71 - 0.5f) / 0.5f : BitmapDescriptorFactory.HUE_RED;
                        } else {
                            f22 = BitmapDescriptorFactory.HUE_RED;
                            fMin2 = 1.0f;
                        }
                    } else if (this.nextIcon != 6) {
                        this.paint.setAlpha((int) ((1.0f - this.transitionProgress) * 255.0f));
                        fMin2 = BitmapDescriptorFactory.HUE_RED;
                        f23 = 1.0f;
                        int iDp7 = i4 + AndroidUtilities.dp(7.0f);
                        int iDp8 = i2 - AndroidUtilities.dp(3.0f);
                        if (fMin2 < 1.0f) {
                            i21 = iDp8;
                            canvas.drawLine(iDp8 - AndroidUtilities.dp(6.0f), iDp7 - AndroidUtilities.dp(6.0f), iDp8 - (AndroidUtilities.dp(6.0f) * fMin2), iDp7 - (AndroidUtilities.dp(6.0f) * fMin2), this.paint);
                        } else {
                            i21 = iDp8;
                        }
                        if (f23 > BitmapDescriptorFactory.HUE_RED) {
                            float f72 = i21;
                            float f73 = iDp7;
                            canvas.drawLine(f72, f73, f72 + (AndroidUtilities.dp(12.0f) * f23), f73 - (AndroidUtilities.dp(12.0f) * f23), this.paint);
                        }
                    } else {
                        f22 = 1.0f;
                        fMin2 = BitmapDescriptorFactory.HUE_RED;
                    }
                    this.paint.setAlpha(i18);
                    f23 = f22;
                    int iDp72 = i4 + AndroidUtilities.dp(7.0f);
                    int iDp82 = i2 - AndroidUtilities.dp(3.0f);
                    if (fMin2 < 1.0f) {
                    }
                    if (f23 > BitmapDescriptorFactory.HUE_RED) {
                    }
                }
                if (drawable3 != null && drawable3 != drawable4) {
                    int intrinsicWidth = (int) (drawable3.getIntrinsicWidth() * f18);
                    int intrinsicHeight = (int) (drawable3.getIntrinsicHeight() * f18);
                    drawable3.setColorFilter(this.colorFilter);
                    drawable3.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                    int i45 = intrinsicWidth / 2;
                    int i46 = intrinsicHeight / 2;
                    drawable3.setBounds(i2 - i45, i4 - i46, i45 + i2, i46 + i4);
                    drawable3.draw(canvas);
                }
                if (drawable4 != null) {
                    int intrinsicWidth2 = (int) (drawable4.getIntrinsicWidth() * f17);
                    int intrinsicHeight2 = (int) (drawable4.getIntrinsicHeight() * f17);
                    drawable4.setColorFilter(this.colorFilter);
                    drawable4.setAlpha(this.currentIcon == this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
                    int i47 = intrinsicWidth2 / 2;
                    int i48 = intrinsicHeight2 / 2;
                    drawable4.setBounds(i2 - i47, i4 - i48, i47 + i2, i48 + i4);
                    drawable4.draw(canvas);
                }
                pathArr7 = pathArr5;
                pathArr8 = pathArr6;
                if (pathArr7 != null && pathArr7 != pathArr8) {
                    int iDp9 = AndroidUtilities.dp(24.0f);
                    this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                    this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
                    applyShaderMatrix(true);
                    canvas.save();
                    canvas.translate(i2, i4);
                    float f74 = f18;
                    canvas.scale(f74, f74);
                    float f75 = (-iDp9) / 2;
                    canvas.translate(f75, f75);
                    path2 = pathArr7[0];
                    if (path2 != null) {
                        canvas.drawPath(path2, this.paint2);
                    }
                    path3 = pathArr7[1];
                    if (path3 != null) {
                        canvas.drawPath(path3, this.backPaint);
                    }
                    canvas.restore();
                }
                if (pathArr8 != null) {
                    int iDp10 = AndroidUtilities.dp(24.0f);
                    int i49 = this.currentIcon == this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f);
                    this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                    this.paint2.setAlpha(i49);
                    applyShaderMatrix(true);
                    canvas.save();
                    canvas.translate(i2, i4);
                    canvas.scale(f17, f17);
                    float f76 = (-iDp10) / 2;
                    canvas.translate(f76, f76);
                    Path path4 = pathArr8[0];
                    if (path4 != null) {
                        canvas.drawPath(path4, this.paint2);
                    }
                    if (pathArr8.length >= 3 && (path = pathArr8[2]) != null) {
                        canvas.drawPath(path, this.paint);
                    }
                    Path path5 = pathArr8[1];
                    if (path5 != null) {
                        if (i49 != 255) {
                            int alpha = this.backPaint.getAlpha();
                            this.backPaint.setAlpha((int) (alpha * (i49 / 255.0f)));
                            canvas.drawPath(pathArr8[1], this.backPaint);
                            this.backPaint.setAlpha(alpha);
                        } else {
                            canvas.drawPath(path5, this.backPaint);
                        }
                    }
                    canvas.restore();
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = jCurrentTimeMillis - this.lastAnimationTime;
                j = j2 <= 17 ? 17L : j2;
                this.lastAnimationTime = jCurrentTimeMillis;
                i22 = this.currentIcon;
                if (i22 != 3 || i22 == 14 || ((i22 == 4 && this.nextIcon == 14) || i22 == 10 || i22 == 13)) {
                    float f77 = this.downloadRadOffset + ((360 * j) / 2500.0f);
                    this.downloadRadOffset = f77;
                    this.downloadRadOffset = getCircleValue(f77);
                    if (this.nextIcon != 2) {
                        float f78 = this.downloadProgress;
                        float f79 = this.downloadProgressAnimationStart;
                        float f80 = f78 - f79;
                        if (f80 > BitmapDescriptorFactory.HUE_RED) {
                            float f81 = this.downloadProgressTime + j;
                            this.downloadProgressTime = f81;
                            if (f81 >= 200.0f) {
                                this.animatedDownloadProgress = f78;
                                this.downloadProgressAnimationStart = f78;
                                this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                this.animatedDownloadProgress = f79 + (f80 * this.interpolator.getInterpolation(f81 / 200.0f));
                            }
                        }
                    }
                    invalidateSelf();
                }
                if (this.animatingTransition) {
                    float f82 = this.transitionProgress;
                    if (f82 < 1.0f) {
                        float f83 = f82 + (j / this.transitionAnimationTime);
                        this.transitionProgress = f83;
                        if (f83 >= 1.0f) {
                            this.currentIcon = this.nextIcon;
                            this.transitionProgress = 1.0f;
                            this.animatingTransition = false;
                        }
                        invalidateSelf();
                    }
                }
                i23 = i3;
                if (i23 < 1) {
                    canvas.restoreToCount(i23);
                    return;
                }
                return;
            }
            pathArr = null;
        }
        pathArr2 = null;
        if (i41 != 5) {
        }
        pathArr3 = pathArr;
        pathArr4 = pathArr2;
        if (i41 != i9) {
        }
        if (i41 != i5) {
        }
        drawable3 = drawable;
        drawable4 = drawable2;
        if (this.currentIcon != i6) {
            applyShaderMatrix(false);
            this.paint.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) (this.transitionProgress * 255.0f));
            int iDp42 = i4 + AndroidUtilities.dp(7.0f);
            int iDp52 = i2 - AndroidUtilities.dp(3.0f);
            if (this.currentIcon != this.nextIcon) {
            }
            float f602 = iDp52;
            f18 = fMax;
            float f612 = iDp42;
            pathArr5 = pathArr4;
            pathArr6 = pathArr3;
            canvas.drawLine(iDp52 - AndroidUtilities.dp(6.0f), iDp42 - AndroidUtilities.dp(6.0f), f602, f612, this.paint);
            canvas.drawLine(f602, f612, iDp52 + AndroidUtilities.dp(12.0f), iDp42 - AndroidUtilities.dp(12.0f), this.paint);
            if (this.currentIcon != this.nextIcon) {
            }
        }
        if (this.currentIcon != 12) {
            applyShaderMatrix(false);
            int i422 = this.currentIcon;
            int i432 = this.nextIcon;
            if (i422 != i432) {
            }
            this.paint.setAlpha(i422 != i432 ? 255 : (int) (f62 * 255.0f));
            AndroidUtilities.dp(7.0f);
            AndroidUtilities.dp(3.0f);
            if (this.currentIcon != this.nextIcon) {
            }
            float fDp142 = AndroidUtilities.dp(7.0f) * this.scale;
            float f632 = i2;
            float f642 = f632 - fDp142;
            float f652 = i4;
            float f662 = f652 - fDp142;
            float f672 = f632 + fDp142;
            float f682 = f652 + fDp142;
            canvas.drawLine(f642, f662, f672, f682, this.paint);
            canvas.drawLine(f672, f662, f642, f682, this.paint);
            if (this.currentIcon != this.nextIcon) {
            }
        }
        if (this.currentIcon != 13) {
            applyShaderMatrix(false);
            i12 = this.currentIcon;
            i13 = this.nextIcon;
            if (i12 != i13) {
            }
            this.textPaint.setAlpha((int) (f19 * 255.0f));
            int iDp62 = i4 + AndroidUtilities.dp(5.0f);
            int i442 = i2 - (this.percentStringWidth / 2);
            if (this.currentIcon != this.nextIcon) {
            }
            i14 = (int) (this.animatedDownloadProgress * 100.0f);
            if (this.percentString != null) {
                this.lastPercent = i14;
                this.percentString = String.format("%d%%", Integer.valueOf(i14));
                this.percentStringWidth = (int) Math.ceil(this.textPaint.measureText(r1));
                canvas.drawText(this.percentString, i442, iDp62, this.textPaint);
                if (this.currentIcon != this.nextIcon) {
                }
            }
        }
        i15 = this.currentIcon;
        if (i15 != 0) {
            if (i15 == 0) {
                i16 = 1;
                if (i15 == 1) {
                }
                i17 = this.nextIcon;
                if (i17 == 0) {
                    i18 = 255;
                    this.paint2.setAlpha(255);
                    z = true;
                    applyShaderMatrix(z);
                    canvas.save();
                    canvas.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f20)), rect.centerY());
                    f21 = f20 * 500.0f;
                    i19 = this.currentIcon;
                    if (i19 == 1) {
                    }
                    if (i19 == 0) {
                        if (i19 == 1) {
                            if (f21 >= 100.0f) {
                            }
                            f69 = interpolation;
                        }
                        canvas.rotate(f69);
                        i20 = this.currentIcon;
                        if (i20 != 0) {
                        }
                    }
                } else {
                    i18 = 255;
                    this.paint2.setAlpha(255);
                    z = true;
                    applyShaderMatrix(z);
                    canvas.save();
                    canvas.translate(rect.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - f20)), rect.centerY());
                    f21 = f20 * 500.0f;
                    i19 = this.currentIcon;
                    if (i19 == 1) {
                    }
                    if (i19 == 0) {
                    }
                }
            } else {
                i16 = 1;
                if (i15 == 1) {
                }
                i17 = this.nextIcon;
                if (i17 == 0) {
                }
            }
        }
        if (this.currentIcon != 6) {
            applyShaderMatrix(false);
            if (this.currentIcon == 6) {
            }
            this.paint.setAlpha(i18);
            f23 = f22;
            int iDp722 = i4 + AndroidUtilities.dp(7.0f);
            int iDp822 = i2 - AndroidUtilities.dp(3.0f);
            if (fMin2 < 1.0f) {
            }
            if (f23 > BitmapDescriptorFactory.HUE_RED) {
            }
        }
        if (drawable3 != null) {
            int intrinsicWidth3 = (int) (drawable3.getIntrinsicWidth() * f18);
            int intrinsicHeight3 = (int) (drawable3.getIntrinsicHeight() * f18);
            drawable3.setColorFilter(this.colorFilter);
            drawable3.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
            int i452 = intrinsicWidth3 / 2;
            int i462 = intrinsicHeight3 / 2;
            drawable3.setBounds(i2 - i452, i4 - i462, i452 + i2, i462 + i4);
            drawable3.draw(canvas);
        }
        if (drawable4 != null) {
        }
        pathArr7 = pathArr5;
        pathArr8 = pathArr6;
        if (pathArr7 != null) {
            int iDp92 = AndroidUtilities.dp(24.0f);
            this.paint2.setStyle(Paint.Style.FILL_AND_STROKE);
            this.paint2.setAlpha(this.currentIcon != this.nextIcon ? 255 : (int) ((1.0f - this.transitionProgress) * 255.0f));
            applyShaderMatrix(true);
            canvas.save();
            canvas.translate(i2, i4);
            float f742 = f18;
            canvas.scale(f742, f742);
            float f752 = (-iDp92) / 2;
            canvas.translate(f752, f752);
            path2 = pathArr7[0];
            if (path2 != null) {
            }
            path3 = pathArr7[1];
            if (path3 != null) {
            }
            canvas.restore();
        }
        if (pathArr8 != null) {
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        long j22 = jCurrentTimeMillis2 - this.lastAnimationTime;
        if (j22 <= 17) {
        }
        this.lastAnimationTime = jCurrentTimeMillis2;
        i22 = this.currentIcon;
        if (i22 != 3) {
            float f772 = this.downloadRadOffset + ((360 * j) / 2500.0f);
            this.downloadRadOffset = f772;
            this.downloadRadOffset = getCircleValue(f772);
            if (this.nextIcon != 2) {
            }
            invalidateSelf();
        }
        if (this.animatingTransition) {
        }
        i23 = i3;
        if (i23 < 1) {
        }
    }

    public int getCurrentIcon() {
        return this.nextIcon;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return AndroidUtilities.dp(48.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public int getPreviousIcon() {
        return this.currentIcon;
    }

    public float getProgress() {
        return this.downloadProgress;
    }

    public float getTransitionProgress() {
        if (this.animatingTransition) {
            return this.transitionProgress;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        MediaActionDrawableDelegate mediaActionDrawableDelegate = this.delegate;
        if (mediaActionDrawableDelegate != null) {
            mediaActionDrawableDelegate.invalidate();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public void setBackColor(int i) {
        this.backPaint.setColor(i | (-16777216));
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.messageDrawable = messageDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        float intrinsicWidth = (i3 - i) / getIntrinsicWidth();
        this.scale = intrinsicWidth;
        if (intrinsicWidth < 0.7f) {
            this.paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        }
    }

    public void setColor(int i) {
        int i2 = (-16777216) | i;
        this.paint.setColor(i2);
        this.paint2.setColor(i2);
        this.paint3.setColor(i2);
        this.textPaint.setColor(i2);
        this.colorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        this.paint2.setColorFilter(colorFilter);
        this.paint3.setColorFilter(colorFilter);
        this.textPaint.setColorFilter(colorFilter);
    }

    public void setDelegate(MediaActionDrawableDelegate mediaActionDrawableDelegate) {
        this.delegate = mediaActionDrawableDelegate;
    }

    public void setHasOverlayImage(boolean z) {
        this.hasOverlayImage = z;
    }

    public boolean setIcon(int i, boolean z) {
        int i2;
        int i3;
        if (this.currentIcon == i && (i3 = this.nextIcon) != i) {
            this.currentIcon = i3;
            this.transitionProgress = 1.0f;
        }
        if (z) {
            int i4 = this.currentIcon;
            if (i4 == i || (i2 = this.nextIcon) == i) {
                return false;
            }
            this.transitionAnimationTime = ((i4 == 0 && i == 1) || (i4 == 1 && i == 0)) ? 300.0f : (i4 == 2 && (i == 3 || i == 14)) ? 400.0f : (i4 == 4 || i != 6) ? ((i4 == 4 && i == 14) || (i4 == 14 && i == 4)) ? 160.0f : 220.0f : 360.0f;
            if (this.animatingTransition) {
                this.currentIcon = i2;
            }
            this.animatingTransition = true;
            this.nextIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = BitmapDescriptorFactory.HUE_RED;
        } else {
            if (this.currentIcon == i) {
                return false;
            }
            this.animatingTransition = false;
            this.nextIcon = i;
            this.currentIcon = i;
            this.savedTransitionProgress = this.transitionProgress;
            this.transitionProgress = 1.0f;
        }
        if (i == 3 || i == 14) {
            this.downloadRadOffset = 112.0f;
            this.animatedDownloadProgress = BitmapDescriptorFactory.HUE_RED;
            this.downloadProgressAnimationStart = BitmapDescriptorFactory.HUE_RED;
            this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
        }
        invalidateSelf();
        return true;
    }

    public void setMini(boolean z) {
        this.isMini = z;
        this.paint.setStrokeWidth(AndroidUtilities.dp(z ? 2.0f : 3.0f));
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    public void setProgress(float f, boolean z) {
        if (this.downloadProgress == f) {
            return;
        }
        if (z) {
            if (this.animatedDownloadProgress > f) {
                this.animatedDownloadProgress = f;
            }
            this.downloadProgressAnimationStart = this.animatedDownloadProgress;
        } else {
            this.animatedDownloadProgress = f;
            this.downloadProgressAnimationStart = f;
        }
        this.downloadProgress = f;
        this.downloadProgressTime = BitmapDescriptorFactory.HUE_RED;
        invalidateSelf();
    }
}
