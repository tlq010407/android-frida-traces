package org.telegram.ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class VoIPToggleButton extends FrameLayout {
    private boolean animateBackground;
    int animateToBackgroundColor;
    public int animationDelay;
    private int backgroundCheck1;
    private int backgroundCheck2;
    int backgroundColor;
    private Paint bitmapPaint;
    private ValueAnimator checkAnimator;
    private boolean checkable;
    private boolean checkableForAccessibility;
    private boolean checked;
    private float checkedProgress;
    Paint circlePaint;
    private float crossOffset;
    private Paint crossPaint;
    private float crossProgress;
    int currentBackgroundColor;
    int currentIconColor;
    int currentIconRes;
    String currentText;
    private boolean drawBackground;
    private boolean drawCross;
    Drawable[] icon;
    private boolean iconChangeColor;
    private float pressedScale;
    private ValueAnimator pressedScaleAnimator;
    private float radius;
    ValueAnimator replaceAnimator;
    private int replaceColorFrom;
    float replaceProgress;
    Drawable rippleDrawable;
    FrameLayout textLayoutContainer;
    TextView[] textView;
    private Paint xRefPaint;

    public VoIPToggleButton(Context context) {
        this(context, 52.0f);
    }

    public VoIPToggleButton(Context context, float f) {
        super(context);
        this.circlePaint = new Paint(1);
        this.drawBackground = true;
        this.icon = new Drawable[2];
        this.textView = new TextView[2];
        this.crossPaint = new Paint(1);
        this.xRefPaint = new Paint(1);
        this.bitmapPaint = new Paint(1);
        this.pressedScale = 1.0f;
        this.radius = f;
        setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.textLayoutContainer = frameLayout;
        addView(frameLayout);
        for (int i = 0; i < 2; i++) {
            TextView textView = new TextView(context);
            textView.setGravity(1);
            textView.setTextSize(1, 11.0f);
            textView.setTextColor(-1);
            textView.setImportantForAccessibility(2);
            this.textLayoutContainer.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, BitmapDescriptorFactory.HUE_RED, f + 6.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            this.textView[i] = textView;
        }
        this.textView[1].setVisibility(8);
        this.xRefPaint.setColor(-16777216);
        this.xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.xRefPaint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        this.crossPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.crossPaint.setStrokeCap(Paint.Cap.ROUND);
        this.bitmapPaint.setFilterBitmap(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setChecked$2(ValueAnimator valueAnimator) {
        this.checkedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setBackgroundColor(this.backgroundCheck1, this.backgroundCheck2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setData$1(boolean z, ValueAnimator valueAnimator) {
        this.replaceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        if (z) {
            this.textView[0].setAlpha(1.0f - this.replaceProgress);
            this.textView[0].setScaleX(1.0f - this.replaceProgress);
            this.textView[0].setScaleY(1.0f - this.replaceProgress);
            this.textView[1].setAlpha(this.replaceProgress);
            this.textView[1].setScaleX(this.replaceProgress);
            this.textView[1].setScaleY(this.replaceProgress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPressedBtn$0(ValueAnimator valueAnimator) {
        this.pressedScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0033  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        canvas.save();
        float f = this.pressedScale;
        canvas.scale(f, f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        if (this.animateBackground) {
            float f2 = this.replaceProgress;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.circlePaint.setColor(ColorUtils.blendARGB(this.backgroundColor, this.animateToBackgroundColor, f2));
            } else {
                this.circlePaint.setColor(this.backgroundColor);
            }
        }
        float width = getWidth() / 2.0f;
        float fDp = AndroidUtilities.dp(this.radius) / 2.0f;
        float fDp2 = AndroidUtilities.dp(this.radius) / 2.0f;
        if (this.drawBackground) {
            canvas.drawCircle(width, fDp, AndroidUtilities.dp(this.radius) / 2.0f, this.circlePaint);
        }
        if (this.rippleDrawable == null) {
            Drawable drawableCreateSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.dp(this.radius), 0, -16777216);
            this.rippleDrawable = drawableCreateSimpleSelectorCircleDrawable;
            drawableCreateSimpleSelectorCircleDrawable.setCallback(this);
        }
        this.rippleDrawable.setBounds((int) (width - fDp2), (int) (fDp - fDp2), (int) (width + fDp2), (int) (fDp2 + fDp));
        this.rippleDrawable.draw(canvas);
        if (this.currentIconRes != 0) {
            if (!this.drawCross && this.crossProgress == BitmapDescriptorFactory.HUE_RED) {
                int i = 0;
                while (true) {
                    if (i >= ((this.replaceProgress == BitmapDescriptorFactory.HUE_RED || this.iconChangeColor) ? 1 : 2)) {
                        break;
                    }
                    if (this.icon[i] != null) {
                        canvas.save();
                        float f3 = this.replaceProgress;
                        if (f3 == BitmapDescriptorFactory.HUE_RED || this.iconChangeColor) {
                            if (this.iconChangeColor) {
                                int iBlendARGB = ColorUtils.blendARGB(this.replaceColorFrom, this.currentIconColor, f3);
                                this.icon[i].setColorFilter(new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.MULTIPLY));
                                this.crossPaint.setColor(iBlendARGB);
                            }
                            this.icon[i].setAlpha(255);
                            this.icon[i].setBounds((int) (width - (r5.getIntrinsicWidth() / 2.0f)), (int) (fDp - (this.icon[i].getIntrinsicHeight() / 2)), (int) ((this.icon[i].getIntrinsicWidth() / 2) + width), (int) ((this.icon[i].getIntrinsicHeight() / 2) + fDp));
                            this.icon[i].draw(canvas);
                            canvas.restore();
                        } else {
                            Drawable[] drawableArr = this.icon;
                            if (drawableArr[0] != null && drawableArr[1] != null) {
                                if (i == 0) {
                                    f3 = 1.0f - f3;
                                }
                                canvas.scale(f3, f3, width, fDp);
                                this.icon[i].setAlpha((int) (f3 * 255.0f));
                            }
                            this.icon[i].setBounds((int) (width - (r5.getIntrinsicWidth() / 2.0f)), (int) (fDp - (this.icon[i].getIntrinsicHeight() / 2)), (int) ((this.icon[i].getIntrinsicWidth() / 2) + width), (int) ((this.icon[i].getIntrinsicHeight() / 2) + fDp));
                            this.icon[i].draw(canvas);
                            canvas.restore();
                        }
                    }
                    i++;
                }
            } else {
                if (this.iconChangeColor) {
                    int iBlendARGB2 = ColorUtils.blendARGB(this.replaceColorFrom, this.currentIconColor, this.replaceProgress);
                    this.icon[0].setColorFilter(new PorterDuffColorFilter(iBlendARGB2, PorterDuff.Mode.MULTIPLY));
                    this.crossPaint.setColor(iBlendARGB2);
                }
                this.icon[0].setAlpha(255);
                float f4 = this.replaceProgress;
                if (f4 != BitmapDescriptorFactory.HUE_RED && this.iconChangeColor) {
                    int iBlendARGB3 = ColorUtils.blendARGB(this.replaceColorFrom, this.currentIconColor, f4);
                    this.icon[0].setColorFilter(new PorterDuffColorFilter(iBlendARGB3, PorterDuff.Mode.MULTIPLY));
                    this.crossPaint.setColor(iBlendARGB3);
                }
                this.icon[0].setAlpha(255);
                boolean z = this.drawCross;
                if (z) {
                    float f5 = this.crossProgress;
                    if (f5 < 1.0f) {
                        float f6 = f5 + 0.08f;
                        this.crossProgress = f6;
                        if (f6 > 1.0f) {
                            this.crossProgress = 1.0f;
                        } else {
                            invalidate();
                        }
                        if (this.crossProgress <= BitmapDescriptorFactory.HUE_RED) {
                            float intrinsicWidth = ((int) (width - (this.icon[0].getIntrinsicWidth() / 2.0f))) + AndroidUtilities.dpf2(8.0f) + this.crossOffset;
                            float intrinsicHeight = ((int) (fDp - (this.icon[0].getIntrinsicHeight() / 2))) + AndroidUtilities.dpf2(8.0f);
                            float fDp3 = AndroidUtilities.dp(17.0f);
                            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                            float fDp4 = (intrinsicWidth - AndroidUtilities.dp(1.0f)) + (fDp3 * cubicBezierInterpolator.getInterpolation(this.crossProgress));
                            float fDp5 = intrinsicHeight + (AndroidUtilities.dp(17.0f) * cubicBezierInterpolator.getInterpolation(this.crossProgress));
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
                            this.icon[0].setBounds((int) (width - (r1.getIntrinsicWidth() / 2.0f)), (int) (fDp - (this.icon[0].getIntrinsicHeight() / 2)), (int) (width + (this.icon[0].getIntrinsicWidth() / 2)), (int) (fDp + (this.icon[0].getIntrinsicHeight() / 2)));
                            this.icon[0].draw(canvas);
                            canvas.drawLine(intrinsicWidth, intrinsicHeight - AndroidUtilities.dp(2.0f), fDp4, fDp5 - AndroidUtilities.dp(2.0f), this.xRefPaint);
                            canvas.drawLine(intrinsicWidth, intrinsicHeight, fDp4, fDp5, this.crossPaint);
                            canvas.restore();
                        } else {
                            this.icon[0].setBounds((int) (width - (r1.getIntrinsicWidth() / 2.0f)), (int) (fDp - (this.icon[0].getIntrinsicHeight() / 2)), (int) (width + (this.icon[0].getIntrinsicWidth() / 2)), (int) (fDp + (this.icon[0].getIntrinsicHeight() / 2)));
                            this.icon[0].draw(canvas);
                        }
                    } else {
                        if (!z) {
                            float f7 = this.crossProgress - 0.08f;
                            this.crossProgress = f7;
                            if (f7 < BitmapDescriptorFactory.HUE_RED) {
                                this.crossProgress = BitmapDescriptorFactory.HUE_RED;
                            }
                        }
                        if (this.crossProgress <= BitmapDescriptorFactory.HUE_RED) {
                        }
                    }
                }
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setText(this.currentText);
        if (!this.checkable && !this.checkableForAccessibility) {
            accessibilityNodeInfo.setClassName(Button.class.getName());
            return;
        }
        accessibilityNodeInfo.setClassName(ToggleButton.class.getName());
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checked);
    }

    public void setBackgroundColor(int i, int i2) {
        this.backgroundCheck1 = i;
        this.backgroundCheck2 = i2;
        this.backgroundColor = ColorUtils.blendARGB(i, i2, this.checkedProgress);
        invalidate();
    }

    public void setCheckable(boolean z) {
        this.checkable = z;
    }

    public void setCheckableForAccessibility(boolean z) {
        this.checkableForAccessibility = z;
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checked == z) {
            return;
        }
        this.checked = z;
        if (this.checkable) {
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                if (z) {
                    f = 1.0f;
                }
                this.checkedProgress = f;
                setBackgroundColor(this.backgroundCheck1, this.backgroundCheck2);
                return;
            }
            ValueAnimator valueAnimator = this.checkAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.checkAnimator.cancel();
            }
            float f2 = this.checkedProgress;
            if (this.checked) {
                f = 1.0f;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            this.checkAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPToggleButton$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setChecked$2(valueAnimator2);
                }
            });
            this.checkAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.VoIPToggleButton.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    VoIPToggleButton voIPToggleButton = VoIPToggleButton.this;
                    voIPToggleButton.checkedProgress = voIPToggleButton.checked ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    VoIPToggleButton voIPToggleButton2 = VoIPToggleButton.this;
                    voIPToggleButton2.setBackgroundColor(voIPToggleButton2.backgroundCheck1, VoIPToggleButton.this.backgroundCheck2);
                }
            });
            this.checkAnimator.setDuration(150L);
            this.checkAnimator.start();
        }
    }

    public void setCrossOffset(float f) {
        this.crossOffset = f;
    }

    public void setData(int i, int i2, int i3, float f, boolean z, String str, boolean z2, boolean z3) {
        int iDp;
        int i4;
        int i5;
        String str2;
        if (getVisibility() != 0) {
            setVisibility(0);
            z3 = false;
        }
        if (this.currentIconRes == i && this.currentIconColor == i2 && ((this.checkable || this.currentBackgroundColor == i3) && (str2 = this.currentText) != null && str2.equals(str) && z2 == this.drawCross)) {
            return;
        }
        if (this.rippleDrawable == null || z) {
            if (Color.alpha(i3) != 255 || AndroidUtilities.computePerceivedBrightness(i3) <= 0.5d) {
                iDp = AndroidUtilities.dp(this.radius);
                i4 = (int) (f * 76.5f);
                i5 = -1;
            } else {
                iDp = AndroidUtilities.dp(this.radius);
                i4 = (int) (f * 25.5f);
                i5 = -16777216;
            }
            Drawable drawableCreateSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(iDp, 0, ColorUtils.setAlphaComponent(i5, i4));
            this.rippleDrawable = drawableCreateSimpleSelectorCircleDrawable;
            drawableCreateSimpleSelectorCircleDrawable.setCallback(this);
        }
        ValueAnimator valueAnimator = this.replaceAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.animateBackground = this.currentBackgroundColor != i3;
        boolean z4 = this.currentIconRes == i;
        this.iconChangeColor = z4;
        if (z4) {
            this.replaceColorFrom = this.currentIconColor;
        }
        this.currentIconRes = i;
        this.currentIconColor = i2;
        this.currentBackgroundColor = i3;
        this.currentText = str;
        this.drawCross = z2;
        if (z3) {
            if (!z4 && i != 0) {
                this.icon[1] = ContextCompat.getDrawable(getContext(), i).mutate();
                this.icon[1].setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
            }
            if (!this.checkable) {
                this.animateToBackgroundColor = i3;
            }
            final boolean z5 = !this.textView[0].getText().toString().equals(str);
            TextView[] textViewArr = this.textView;
            if (z5) {
                textViewArr[1].setText(str);
                this.textView[1].setVisibility(0);
                this.textView[1].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.textView[1].setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.textView[1].setScaleY(BitmapDescriptorFactory.HUE_RED);
            } else {
                textViewArr[0].setText(str);
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.replaceAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPToggleButton$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setData$1(z5, valueAnimator2);
                }
            });
            this.replaceAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.VoIPToggleButton.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Drawable[] drawableArr;
                    Drawable drawable;
                    VoIPToggleButton voIPToggleButton = VoIPToggleButton.this;
                    voIPToggleButton.replaceAnimator = null;
                    if (z5) {
                        TextView[] textViewArr2 = voIPToggleButton.textView;
                        TextView textView = textViewArr2[0];
                        textViewArr2[0] = textViewArr2[1];
                        textViewArr2[1] = textView;
                        textView.setVisibility(8);
                    }
                    if (!VoIPToggleButton.this.iconChangeColor && (drawable = (drawableArr = VoIPToggleButton.this.icon)[1]) != null) {
                        drawableArr[0] = drawable;
                        drawableArr[1] = null;
                    }
                    VoIPToggleButton.this.iconChangeColor = false;
                    if (!VoIPToggleButton.this.checkable) {
                        VoIPToggleButton voIPToggleButton2 = VoIPToggleButton.this;
                        voIPToggleButton2.backgroundColor = voIPToggleButton2.animateToBackgroundColor;
                    }
                    VoIPToggleButton voIPToggleButton3 = VoIPToggleButton.this;
                    voIPToggleButton3.replaceProgress = BitmapDescriptorFactory.HUE_RED;
                    voIPToggleButton3.invalidate();
                }
            });
            this.replaceAnimator.setDuration(150L).start();
        } else {
            if (i != 0) {
                this.icon[0] = ContextCompat.getDrawable(getContext(), i).mutate();
                this.icon[0].setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
            }
            this.crossPaint.setColor(i2);
            if (!this.checkable) {
                this.backgroundColor = i3;
            }
            this.textView[0].setText(str);
            this.crossProgress = this.drawCross ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            this.iconChangeColor = false;
            this.replaceProgress = BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
    }

    public void setData(int i, int i2, int i3, String str, boolean z, boolean z2) {
        setData(i, i2, i3, 1.0f, true, str, z, z2);
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setEnabled(boolean z, boolean z2) {
        super.setEnabled(z);
        if (z2) {
            animate().alpha(z ? 1.0f : 0.5f).setDuration(180L).start();
        } else {
            clearAnimation();
            setAlpha(z ? 1.0f : 0.5f);
        }
    }

    public void setPressedBtn(boolean z) {
        ValueAnimator valueAnimator = this.pressedScaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pressedScale, z ? 0.8f : 1.0f);
        this.pressedScaleAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.VoIPToggleButton$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setPressedBtn$0(valueAnimator2);
            }
        });
        this.pressedScaleAnimator.setDuration(150L);
        this.pressedScaleAnimator.start();
    }

    public void setTextSize(int i) {
        for (int i2 = 0; i2 < 2; i2++) {
            this.textView[i2].setTextSize(1, i);
        }
    }

    public void shakeView() {
        AndroidUtilities.shakeView(this.textView[0]);
        AndroidUtilities.shakeView(this.textView[1]);
    }

    public void showText(boolean z, boolean z2) {
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            if (z) {
                f = 1.0f;
            }
            if (this.textLayoutContainer.getAlpha() != f) {
                this.textLayoutContainer.animate().alpha(f).start();
                return;
            }
            return;
        }
        this.textLayoutContainer.animate().cancel();
        FrameLayout frameLayout = this.textLayoutContainer;
        if (z) {
            f = 1.0f;
        }
        frameLayout.setAlpha(f);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.rippleDrawable == drawable || super.verifyDrawable(drawable);
    }
}
