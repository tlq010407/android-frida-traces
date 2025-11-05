package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextPaint;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class CheckBoxBase {
    private static Paint eraser;
    private static Paint forbidPaint;
    private static Paint paint;
    public long animationDuration;
    private boolean attachedToWindow;
    private int background2ColorKey;
    private int backgroundColor;
    private int backgroundColorKey;
    private Paint backgroundPaint;
    private int backgroundType;
    private ObjectAnimator checkAnimator;
    private Paint checkPaint;
    private String checkedText;
    private GenericProvider circlePaintProvider;
    private boolean cutCheck;
    private boolean drawUnchecked;
    private boolean forbidden;
    private boolean isChecked;
    private Theme.MessageDrawable messageDrawable;
    private View parentView;
    private float progress;
    private ProgressDelegate progressDelegate;
    private Theme.ResourcesProvider resourcesProvider;
    private float size;
    private int strokeBackgroundKey;
    private int strokeBackgroundWidth;
    private TextPaint textPaint;
    private boolean useDefaultCheck;
    public android.graphics.Rect bounds = new android.graphics.Rect();
    private RectF rect = new RectF();
    public float checkScale = 1.0f;
    private float alpha = 1.0f;
    private Path path = new Path();
    private boolean enabled = true;
    private float backgroundAlpha = 1.0f;
    private int checkColorKey = Theme.key_checkboxCheck;

    public interface ProgressDelegate {
        void setProgress(float f);
    }

    public CheckBoxBase(View view, int i, Theme.ResourcesProvider resourcesProvider) {
        int i2 = Theme.key_chat_serviceBackground;
        this.backgroundColorKey = i2;
        this.background2ColorKey = i2;
        this.strokeBackgroundKey = Theme.key_dialogBackground;
        this.strokeBackgroundWidth = -1;
        this.drawUnchecked = true;
        this.circlePaintProvider = new GenericProvider() { // from class: org.telegram.ui.Components.CheckBoxBase$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return CheckBoxBase.lambda$new$0((Void) obj);
            }
        };
        this.animationDuration = 200L;
        this.resourcesProvider = resourcesProvider;
        this.parentView = view;
        this.size = i;
        if (paint == null) {
            paint = new Paint(1);
            Paint paint2 = new Paint(1);
            eraser = paint2;
            paint2.setColor(0);
            eraser.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        Paint paint3 = new Paint(1);
        this.checkPaint = paint3;
        paint3.setStrokeCap(Paint.Cap.ROUND);
        Paint paint4 = this.checkPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint4.setStyle(style);
        this.checkPaint.setStrokeJoin(Paint.Join.ROUND);
        this.checkPaint.setStrokeWidth(AndroidUtilities.dp(1.9f));
        Paint paint5 = new Paint(1);
        this.backgroundPaint = paint5;
        paint5.setStyle(style);
        this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.2f));
    }

    private void animateToCheckedState(boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.checkAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.CheckBoxBase.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(CheckBoxBase.this.checkAnimator)) {
                    CheckBoxBase.this.checkAnimator = null;
                }
                if (CheckBoxBase.this.isChecked) {
                    return;
                }
                CheckBoxBase.this.checkedText = null;
            }
        });
        this.checkAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.checkAnimator.setDuration(this.animationDuration);
        this.checkAnimator.start();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private void invalidate() {
        if (this.parentView.getParent() != null) {
            ((View) this.parentView.getParent()).invalidate();
        }
        this.parentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Paint lambda$new$0(Void r0) {
        return paint;
    }

    public void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.checkAnimator = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:230:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0132 A[PHI: r1
      0x0132: PHI (r1v23 android.graphics.Paint) = (r1v17 android.graphics.Paint), (r1v135 android.graphics.Paint) binds: [B:57:0x012f, B:45:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        float f;
        float fDp;
        float f2;
        int i;
        int i2;
        float f3;
        float f4;
        int i3;
        int i4;
        float f5;
        int i5;
        Paint paint2;
        int i6;
        int offsetColor;
        int i7;
        int i8;
        boolean z;
        float f6;
        Paint paint3;
        int i9;
        float f7;
        float f8;
        float f9;
        boolean z2;
        int i10;
        float f10;
        float f11;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        float f12;
        float f13;
        Paint paint4;
        int themedColor;
        float fDp2 = AndroidUtilities.dp(this.size / 2.0f);
        int i17 = this.backgroundType;
        if (i17 != 12 && i17 != 13) {
            if (i17 != 0 && i17 != 11) {
                f = fDp2;
                fDp = fDp2 - AndroidUtilities.dp(0.2f);
            }
            float f14 = !this.forbidden ? 1.0f : this.progress;
            f2 = f14 < 0.5f ? 1.0f : f14 / 0.5f;
            int iCenterX = this.bounds.centerX();
            int iCenterY = this.bounds.centerY();
            if (this.cutCheck) {
                i = iCenterY;
                i2 = iCenterX;
                f3 = f14;
                f4 = f;
                i3 = 12;
                i4 = 13;
                f5 = 1.0f;
            } else {
                float f15 = iCenterX;
                float f16 = iCenterY;
                i = iCenterY;
                i2 = iCenterX;
                f3 = f14;
                f5 = 1.0f;
                f4 = f;
                i3 = 12;
                i4 = 13;
                canvas.saveLayerAlpha(f15 - f, f16 - f, f15 + f, f16 + f, 255, 31);
            }
            i5 = this.backgroundColorKey;
            if (i5 < 0) {
                if (this.drawUnchecked) {
                    int i18 = this.backgroundType;
                    if (i18 == i3 || i18 == i4) {
                        paint.setColor(getThemedColor(i5));
                        paint.setAlpha((int) (this.backgroundAlpha * 255.0f));
                    } else {
                        if (i18 == 6 || i18 == 7) {
                            paint4 = paint;
                            themedColor = getThemedColor(this.background2ColorKey);
                        } else {
                            if (i18 != 10 && i18 != 14) {
                                paint4 = paint;
                                themedColor = (16777215 & Theme.getServiceMessageColor()) | 671088640;
                            }
                            paint2 = this.backgroundPaint;
                            i7 = this.background2ColorKey;
                            offsetColor = getThemedColor(i7);
                            paint2.setColor(offsetColor);
                        }
                        paint4.setColor(themedColor);
                    }
                    paint2 = this.backgroundPaint;
                    i7 = this.checkColorKey;
                    offsetColor = getThemedColor(i7);
                    paint2.setColor(offsetColor);
                } else {
                    paint2 = this.backgroundPaint;
                    i6 = this.background2ColorKey;
                    if (i6 < 0) {
                        i6 = this.checkColorKey;
                    }
                    offsetColor = AndroidUtilities.getOffsetColor(16777215, getThemedColor(i6), f3, this.backgroundAlpha);
                    paint2.setColor(offsetColor);
                }
            } else if (this.drawUnchecked) {
                paint.setColor(Color.argb((int) (this.backgroundAlpha * 25.0f), 0, 0, 0));
                if (this.backgroundType != 8) {
                    paint2 = this.backgroundPaint;
                    offsetColor = AndroidUtilities.getOffsetColor(-1, getThemedColor(this.checkColorKey), f3, this.backgroundAlpha);
                    paint2.setColor(offsetColor);
                }
                paint2 = this.backgroundPaint;
                i7 = this.background2ColorKey;
                offsetColor = getThemedColor(i7);
                paint2.setColor(offsetColor);
            } else if (this.backgroundColor != 0) {
                this.backgroundPaint.setColor(0);
            } else {
                paint2 = this.backgroundPaint;
                i6 = this.background2ColorKey;
                if (i6 < 0) {
                }
                offsetColor = AndroidUtilities.getOffsetColor(16777215, getThemedColor(i6), f3, this.backgroundAlpha);
                paint2.setColor(offsetColor);
            }
            if (this.drawUnchecked && (i16 = this.backgroundType) >= 0 && i16 != i3 && i16 != i4) {
                if (i16 != 8 || i16 == 10 || i16 == 14) {
                    f12 = i2;
                    f13 = i;
                } else if (i16 == 6 || i16 == 7) {
                    f12 = i2;
                    f13 = i;
                    canvas.drawCircle(f12, f13, f4 - AndroidUtilities.dp(f5), paint);
                } else {
                    canvas.drawCircle(i2, i, f4, paint);
                }
                canvas.drawCircle(f12, f13, f4 - AndroidUtilities.dp(1.5f), this.backgroundPaint);
            }
            paint.setColor(getThemedColor(this.checkColorKey));
            i8 = this.backgroundType;
            if (i8 != -1 || i8 == 7 || i8 == 8 || i8 == 9 || i8 == 10 || i8 == 14) {
                z = false;
                f6 = BitmapDescriptorFactory.HUE_RED;
            } else if (i8 == i3 || i8 == i4) {
                z = false;
                f6 = BitmapDescriptorFactory.HUE_RED;
                this.backgroundPaint.setStyle(Paint.Style.FILL);
                Theme.MessageDrawable messageDrawable = this.messageDrawable;
                if (messageDrawable == null || !messageDrawable.hasGradient()) {
                    this.backgroundPaint.setShader(null);
                } else {
                    Shader gradientShader = this.messageDrawable.getGradientShader();
                    Matrix matrix = this.messageDrawable.getMatrix();
                    matrix.reset();
                    this.messageDrawable.applyMatrixScale();
                    matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (-this.messageDrawable.getTopY()) + this.bounds.top);
                    gradientShader.setLocalMatrix(matrix);
                    this.backgroundPaint.setShader(gradientShader);
                }
                canvas.drawCircle(i2, i, (f4 - AndroidUtilities.dp(f5)) * this.backgroundAlpha, this.backgroundPaint);
                this.backgroundPaint.setStyle(Paint.Style.STROKE);
            } else if (i8 == 0 || i8 == 11) {
                z = false;
                f6 = BitmapDescriptorFactory.HUE_RED;
                canvas.drawCircle(i2, i, f4, this.backgroundPaint);
            } else {
                float f17 = i2;
                float f18 = i;
                this.rect.set(f17 - fDp, f18 - fDp, f17 + fDp, f18 + fDp);
                int i19 = this.backgroundType;
                if (i19 == 6) {
                    i13 = (int) (f3 * (-360.0f));
                    i12 = 0;
                } else if (i19 == 1) {
                    i13 = (int) (f3 * (-270.0f));
                    i12 = -90;
                } else {
                    int i20 = (int) (f3 * 270.0f);
                    i12 = 90;
                    if (LocaleController.isRTL) {
                        i20 = -i20;
                    }
                    i13 = i20;
                }
                if (i19 == 6) {
                    int themedColor2 = getThemedColor(this.strokeBackgroundKey);
                    int iAlpha = Color.alpha(themedColor2);
                    this.backgroundPaint.setColor(themedColor2);
                    this.backgroundPaint.setAlpha((int) (iAlpha * f3));
                    Paint paint5 = this.backgroundPaint;
                    f6 = BitmapDescriptorFactory.HUE_RED;
                    i14 = i12;
                    z = false;
                    i15 = i13;
                    canvas.drawArc(this.rect, i12, i13, false, paint5);
                    int themedColor3 = getThemedColor(Theme.key_chat_attachPhotoBackground);
                    int iAlpha2 = Color.alpha(themedColor3);
                    this.backgroundPaint.setColor(themedColor3);
                    this.backgroundPaint.setAlpha((int) (iAlpha2 * f3));
                } else {
                    i14 = i12;
                    i15 = i13;
                    z = false;
                    f6 = BitmapDescriptorFactory.HUE_RED;
                }
                canvas.drawArc(this.rect, i14, i15, false, this.backgroundPaint);
            }
            if (f2 > f6) {
                float f19 = f3 < 0.5f ? BitmapDescriptorFactory.HUE_RED : (f3 - 0.5f) / 0.5f;
                int i21 = this.backgroundType;
                if (i21 == 9) {
                    paint3 = paint;
                    i9 = this.background2ColorKey;
                } else if (i21 == 11 || i21 == 6 || i21 == 7 || i21 == 10 || ((!this.drawUnchecked && this.backgroundColorKey >= 0) || i21 == 14)) {
                    paint3 = paint;
                    i9 = this.backgroundColorKey;
                } else {
                    int i22 = this.backgroundColor;
                    if (i22 != 0) {
                        paint.setColor(i22);
                        if (this.forbidden) {
                            f7 = 1.0f;
                            if (this.alpha < 1.0f) {
                                paint.setColor(ColorUtils.blendARGB(this.backgroundPaint.getColor(), paint.getColor(), this.alpha));
                            }
                        } else {
                            paint.setColor(this.backgroundPaint.getColor());
                            f7 = 1.0f;
                        }
                        if (!this.useDefaultCheck || (i11 = this.checkColorKey) < 0) {
                            this.checkPaint.setColor(getThemedColor(Theme.key_checkboxCheck));
                        } else {
                            this.checkPaint.setColor(getThemedColor(i11));
                        }
                        if (this.alpha < f7 && Theme.isCurrentThemeDark()) {
                            this.checkPaint.setColor(ColorUtils.blendARGB(paint.getColor(), this.checkPaint.getColor(), this.alpha));
                        }
                        if (this.backgroundType != -1) {
                            float fDp3 = AndroidUtilities.dp(this.size) / 2.0f;
                            int iSave = canvas.save();
                            canvas.translate(i2 - fDp3, i - fDp3);
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(this.size), AndroidUtilities.dp(this.size), 255, 31);
                            Paint paint6 = (Paint) this.circlePaintProvider.provide(z);
                            int i23 = this.backgroundType;
                            if (i23 == 12 || i23 == 13) {
                                int alpha = paint6.getAlpha();
                                paint6.setAlpha((int) (f2 * 255.0f));
                                canvas.drawCircle(fDp3, fDp3, f4 * f2, paint6);
                                if (paint6 != paint) {
                                    paint6.setAlpha(alpha);
                                }
                            } else {
                                float fDp4 = f4 - AndroidUtilities.dp(0.5f);
                                canvas.drawCircle(fDp3, fDp3, fDp4, paint6);
                                canvas.drawCircle(fDp3, fDp3, fDp4 * (1.0f - f2), eraser);
                            }
                            canvas.restoreToCount(iSave);
                        }
                        if (!this.forbidden) {
                            if (forbidPaint == null) {
                                Paint paint7 = new Paint(1);
                                forbidPaint = paint7;
                                paint7.setStyle(Paint.Style.STROKE);
                                forbidPaint.setStrokeCap(Paint.Cap.ROUND);
                                forbidPaint.setStrokeJoin(Paint.Join.ROUND);
                                forbidPaint.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.dp(0.66f), AndroidUtilities.dp(4.0f)}, BitmapDescriptorFactory.HUE_RED));
                            }
                            forbidPaint.setStrokeWidth(AndroidUtilities.dp(1.66f));
                            forbidPaint.setColor(getThemedColor(Theme.key_switchTrack));
                            canvas.drawCircle(i2, i, AndroidUtilities.dp(9.0f), forbidPaint);
                        } else if (f19 != BitmapDescriptorFactory.HUE_RED) {
                            if (this.checkedText != null) {
                                if (this.textPaint == null) {
                                    i10 = 1;
                                    TextPaint textPaint = new TextPaint(1);
                                    this.textPaint = textPaint;
                                    textPaint.setTypeface(AndroidUtilities.bold());
                                } else {
                                    i10 = 1;
                                }
                                int length = this.checkedText.length();
                                if (length == 0 || length == i10 || length == 2) {
                                    f10 = 14.0f;
                                    f11 = 18.0f;
                                } else if (length != 3) {
                                    f10 = 8.0f;
                                    f11 = 15.75f;
                                } else {
                                    f11 = 16.5f;
                                    f10 = 10.0f;
                                }
                                this.textPaint.setTextSize(AndroidUtilities.dp(f10));
                                this.textPaint.setColor(getThemedColor(this.checkColorKey));
                                canvas.save();
                                float f20 = i2;
                                canvas.scale(f19, 1.0f, f20, i);
                                String str = this.checkedText;
                                canvas.drawText(str, f20 - (this.textPaint.measureText(str) / 2.0f), AndroidUtilities.dp(f11), this.textPaint);
                            } else {
                                this.path.reset();
                                int i24 = this.backgroundType;
                                if (i24 == -1) {
                                    f9 = 1.4f;
                                } else if (i24 == 5) {
                                    f9 = 0.8f;
                                } else {
                                    f8 = 9.0f;
                                    f9 = 1.0f;
                                    float fDp5 = AndroidUtilities.dp(f8 * f9) * f19;
                                    float fDp6 = AndroidUtilities.dp(f9 * 4.0f) * f19;
                                    int iDp = i2 - AndroidUtilities.dp(1.5f);
                                    int iDp2 = AndroidUtilities.dp(4.0f) + i;
                                    float fSqrt = (float) Math.sqrt((fDp6 * fDp6) / 2.0f);
                                    float f21 = iDp;
                                    float f22 = iDp2;
                                    this.path.moveTo(f21 - fSqrt, f22 - fSqrt);
                                    this.path.lineTo(f21, f22);
                                    float fSqrt2 = (float) Math.sqrt((fDp5 * fDp5) / 2.0f);
                                    this.path.lineTo(f21 + fSqrt2, f22 - fSqrt2);
                                    if (this.cutCheck && this.checkScale == 1.0f) {
                                        z2 = false;
                                    } else {
                                        canvas.save();
                                        float f23 = this.checkScale;
                                        canvas.scale(f23, f23, i2, i);
                                        z2 = true;
                                    }
                                    canvas.drawPath(this.path, this.checkPaint);
                                    if (z2) {
                                    }
                                }
                                f8 = 9.0f;
                                float fDp52 = AndroidUtilities.dp(f8 * f9) * f19;
                                float fDp62 = AndroidUtilities.dp(f9 * 4.0f) * f19;
                                int iDp3 = i2 - AndroidUtilities.dp(1.5f);
                                int iDp22 = AndroidUtilities.dp(4.0f) + i;
                                float fSqrt3 = (float) Math.sqrt((fDp62 * fDp62) / 2.0f);
                                float f212 = iDp3;
                                float f222 = iDp22;
                                this.path.moveTo(f212 - fSqrt3, f222 - fSqrt3);
                                this.path.lineTo(f212, f222);
                                float fSqrt22 = (float) Math.sqrt((fDp52 * fDp52) / 2.0f);
                                this.path.lineTo(f212 + fSqrt22, f222 - fSqrt22);
                                if (this.cutCheck) {
                                    canvas.save();
                                    float f232 = this.checkScale;
                                    canvas.scale(f232, f232, i2, i);
                                    z2 = true;
                                    canvas.drawPath(this.path, this.checkPaint);
                                    if (z2) {
                                    }
                                }
                            }
                            canvas.restore();
                        }
                    } else {
                        paint3 = paint;
                        i9 = this.enabled ? Theme.key_checkbox : Theme.key_checkboxDisabled;
                    }
                }
                paint3.setColor(getThemedColor(i9));
                if (this.forbidden) {
                }
                if (this.useDefaultCheck) {
                    this.checkPaint.setColor(getThemedColor(Theme.key_checkboxCheck));
                    if (this.alpha < f7) {
                        this.checkPaint.setColor(ColorUtils.blendARGB(paint.getColor(), this.checkPaint.getColor(), this.alpha));
                    }
                    if (this.backgroundType != -1) {
                    }
                    if (!this.forbidden) {
                    }
                }
            }
            if (this.cutCheck) {
                return;
            }
            canvas.restore();
            return;
        }
        fDp2 = AndroidUtilities.dp(10.0f);
        f = fDp2;
        fDp = f;
        if (!this.forbidden) {
        }
        if (f14 < 0.5f) {
        }
        int iCenterX2 = this.bounds.centerX();
        int iCenterY2 = this.bounds.centerY();
        if (this.cutCheck) {
        }
        i5 = this.backgroundColorKey;
        if (i5 < 0) {
        }
        if (this.drawUnchecked) {
            if (i16 != 8) {
                f12 = i2;
                f13 = i;
                canvas.drawCircle(f12, f13, f4 - AndroidUtilities.dp(1.5f), this.backgroundPaint);
            }
        }
        paint.setColor(getThemedColor(this.checkColorKey));
        i8 = this.backgroundType;
        if (i8 != -1) {
            z = false;
            f6 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f2 > f6) {
        }
        if (this.cutCheck) {
        }
    }

    public boolean getDrawUnchecked() {
        return this.drawUnchecked;
    }

    public float getProgress() {
        return this.progress;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void onAttachedToWindow() {
        this.attachedToWindow = true;
    }

    public void onDetachedFromWindow() {
        this.attachedToWindow = false;
    }

    public void setAlpha(float f) {
        this.alpha = f;
        invalidate();
    }

    public void setBackgroundAlpha(float f) {
        this.backgroundAlpha = f;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        invalidate();
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.messageDrawable = messageDrawable;
    }

    public void setBackgroundType(int i) {
        Paint paint2;
        float f;
        int iDp;
        this.backgroundType = i;
        if (i != 12 && i != 13) {
            if (i == 4 || i == 5) {
                this.backgroundPaint.setStrokeWidth(AndroidUtilities.dp(1.9f));
                if (i != 5) {
                    return;
                } else {
                    paint2 = this.checkPaint;
                }
            } else if (i == 3) {
                paint2 = this.backgroundPaint;
                f = 3.0f;
            } else if (i == 0) {
                return;
            } else {
                paint2 = this.backgroundPaint;
            }
            iDp = AndroidUtilities.dp(1.5f);
            paint2.setStrokeWidth(iDp);
        }
        paint2 = this.backgroundPaint;
        f = 1.0f;
        iDp = AndroidUtilities.dp(f);
        paint2.setStrokeWidth(iDp);
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        android.graphics.Rect rect = this.bounds;
        rect.left = i;
        rect.top = i2;
        rect.right = i + i3;
        rect.bottom = i2 + i4;
    }

    public void setChecked(int i, boolean z, boolean z2) {
        if (i >= 0) {
            this.checkedText = "" + (i + 1);
            invalidate();
        }
        if (z == this.isChecked) {
            return;
        }
        this.isChecked = z;
        if (this.attachedToWindow && z2) {
            animateToCheckedState(z);
        } else {
            cancelCheckAnimator();
            setProgress(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(-1, z, z2);
    }

    public void setCirclePaintProvider(GenericProvider genericProvider) {
        this.circlePaintProvider = genericProvider;
    }

    public void setColor(int i, int i2, int i3) {
        this.backgroundColorKey = i;
        this.background2ColorKey = i2;
        this.checkColorKey = i3;
        invalidate();
    }

    public void setCuttingCheck(boolean z) {
        if (this.cutCheck == z) {
            return;
        }
        this.cutCheck = z;
        this.checkPaint.setXfermode(z ? new PorterDuffXfermode(PorterDuff.Mode.CLEAR) : null);
    }

    public void setDrawUnchecked(boolean z) {
        this.drawUnchecked = z;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setForbidden(boolean z) {
        if (this.forbidden == z) {
            return;
        }
        this.forbidden = z;
        invalidate();
    }

    public void setNum(int i) {
        String str;
        if (i < 0) {
            if (this.checkAnimator == null) {
                str = null;
            }
            invalidate();
        } else {
            str = "" + (i + 1);
        }
        this.checkedText = str;
        invalidate();
    }

    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
        ProgressDelegate progressDelegate = this.progressDelegate;
        if (progressDelegate != null) {
            progressDelegate.setProgress(f);
        }
    }

    public void setProgressDelegate(ProgressDelegate progressDelegate) {
        this.progressDelegate = progressDelegate;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void setStrokeBackgroundColor(int i) {
        this.strokeBackgroundKey = i;
        invalidate();
    }

    public void setUseDefaultCheck(boolean z) {
        this.useDefaultCheck = z;
    }
}
