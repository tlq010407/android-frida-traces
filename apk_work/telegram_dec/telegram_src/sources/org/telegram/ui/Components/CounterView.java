package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class CounterView extends View {
    public CounterDrawable counterDrawable;
    private final Theme.ResourcesProvider resourcesProvider;

    public static class CounterDrawable {
        public boolean addServiceGradient;
        private int circleColor;
        public Paint circlePaint;
        private StaticLayout countAnimationInLayout;
        private boolean countAnimationIncrement;
        private StaticLayout countAnimationStableLayout;
        private ValueAnimator countAnimator;
        private StaticLayout countLayout;
        private float countLayoutWidth;
        float countLeft;
        private StaticLayout countOldLayout;
        private int countWidth;
        private int countWidthOld;
        int currentCount;
        CharSequence currentText;
        private boolean drawBackground;
        public float horizontalPadding;
        int lastH;
        private View parent;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean reverseAnimation;
        public boolean shortFormat;
        private int textColor;
        public boolean updateVisibility;
        int width;
        float x;
        public float circleScale = 1.0f;
        int animationType = -1;
        public TextPaint textPaint = new TextPaint(1);
        public RectF rectF = new RectF();
        public float countChangeProgress = 1.0f;
        private int textColorKey = Theme.key_chat_goDownButtonCounter;
        private int circleColorKey = Theme.key_chat_goDownButtonCounterBackground;
        public int gravity = 17;
        public float radius = 11.5f;
        int type = 0;

        public CounterDrawable(View view, boolean z, Theme.ResourcesProvider resourcesProvider) {
            this.parent = view;
            this.resourcesProvider = resourcesProvider;
            this.drawBackground = z;
            if (z) {
                Paint paint = new Paint(1);
                this.circlePaint = paint;
                paint.setColor(-16777216);
            }
            this.textPaint.setTypeface(AndroidUtilities.bold());
            this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        }

        private void drawInternal(Canvas canvas) {
            boolean z;
            float f = this.radius * 2.0f;
            float fDp = (this.lastH - AndroidUtilities.dp(f)) / 2.0f;
            updateX(this.countWidth);
            RectF rectF = this.rectF;
            float f2 = this.x;
            rectF.set(f2, fDp, this.countWidth + f2 + AndroidUtilities.dp(this.radius - 0.5f), AndroidUtilities.dp(f) + fDp);
            if (this.circlePaint != null && this.drawBackground) {
                if (this.circleScale != 1.0f) {
                    canvas.save();
                    float f3 = this.circleScale;
                    canvas.scale(f3, f3, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                } else {
                    z = false;
                }
                RectF rectF2 = this.rectF;
                float f4 = this.radius * AndroidUtilities.density;
                canvas.drawRoundRect(rectF2, f4, f4, this.circlePaint);
                if (this.addServiceGradient && Theme.hasGradientService()) {
                    RectF rectF3 = this.rectF;
                    float f5 = this.radius * AndroidUtilities.density;
                    canvas.drawRoundRect(rectF3, f5, f5, Theme.chat_actionBackgroundGradientDarkenPaint);
                }
                if (z) {
                    canvas.restore();
                }
            }
            if (this.countLayout != null) {
                canvas.save();
                canvas.translate(this.countLeft, fDp + AndroidUtilities.dp(4.0f));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
        }

        private String getStringOfCCount(int i) {
            return this.shortFormat ? AndroidUtilities.formatWholeNumber(i, 0) : String.valueOf(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(ValueAnimator valueAnimator) {
            this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.parent;
            if (view != null) {
                view.invalidate();
            }
        }

        private void updateX(float f) {
            float fDp = this.drawBackground ? AndroidUtilities.dp(5.5f) : BitmapDescriptorFactory.HUE_RED;
            int i = this.gravity;
            if (i == 5) {
                float f2 = this.width - fDp;
                this.countLeft = f2;
                float f3 = this.horizontalPadding;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    f = Math.max(f3 + (f / 2.0f), f);
                }
                this.countLeft = f2 - f;
            } else if (i == 3) {
                this.countLeft = fDp;
            } else {
                this.countLeft = (int) ((this.width - f) / 2.0f);
            }
            this.x = this.countLeft - fDp;
        }

        /* JADX WARN: Removed duplicated region for block: B:71:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01ae  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas) {
            float interpolation;
            boolean z;
            StaticLayout staticLayout;
            Paint paint;
            CubicBezierInterpolator cubicBezierInterpolator;
            float f;
            int i = this.type;
            if (i != 1 && i != 2) {
                int themedColor = getThemedColor(this.textColorKey);
                int themedColor2 = getThemedColor(this.circleColorKey);
                if (this.textColor != themedColor) {
                    this.textColor = themedColor;
                    this.textPaint.setColor(themedColor);
                }
                Paint paint2 = this.circlePaint;
                if (paint2 != null && this.circleColor != themedColor2) {
                    this.circleColor = themedColor2;
                    paint2.setColor(themedColor2);
                }
            }
            float f2 = this.countChangeProgress;
            if (f2 == 1.0f) {
                drawInternal(canvas);
                return;
            }
            int i2 = this.animationType;
            if (i2 == 0 || i2 == 1) {
                updateX(this.countWidth);
                float f3 = this.countLeft + (this.countWidth / 2.0f);
                float f4 = this.lastH / 2.0f;
                canvas.save();
                float f5 = this.animationType == 0 ? this.countChangeProgress : 1.0f - this.countChangeProgress;
                canvas.scale(f5, f5, f3, f4);
                drawInternal(canvas);
            } else {
                float f6 = f2 * 2.0f;
                if (f6 > 1.0f) {
                    f6 = 1.0f;
                }
                float fDp = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
                int i3 = this.countWidth;
                int i4 = this.countWidthOld;
                float f7 = i3 == i4 ? i3 : (i3 * f6) + (i4 * (1.0f - f6));
                updateX(f7);
                if (this.countAnimationIncrement) {
                    float f8 = this.countChangeProgress;
                    if (f8 <= 0.5f) {
                        cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
                        f = f8 * 2.0f;
                    } else {
                        cubicBezierInterpolator = CubicBezierInterpolator.EASE_IN;
                        f = 1.0f - ((f8 - 0.5f) * 2.0f);
                    }
                    interpolation = (cubicBezierInterpolator.getInterpolation(f) * 0.1f) + 1.0f;
                } else {
                    interpolation = 1.0f;
                }
                RectF rectF = this.rectF;
                float f9 = this.x;
                rectF.set(f9, fDp, f7 + f9 + AndroidUtilities.dp(this.radius - 0.5f), AndroidUtilities.dp(this.radius * 2.0f) + fDp);
                canvas.save();
                canvas.scale(interpolation, interpolation, this.rectF.centerX(), this.rectF.centerY());
                if (this.circleScale != 1.0f) {
                    canvas.save();
                    float f10 = this.circleScale;
                    canvas.scale(f10, f10, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                } else {
                    z = false;
                }
                if (this.drawBackground && (paint = this.circlePaint) != null) {
                    RectF rectF2 = this.rectF;
                    float f11 = this.radius * AndroidUtilities.density;
                    canvas.drawRoundRect(rectF2, f11, f11, paint);
                    if (this.addServiceGradient && Theme.hasGradientService()) {
                        RectF rectF3 = this.rectF;
                        float f12 = this.radius * AndroidUtilities.density;
                        canvas.drawRoundRect(rectF3, f12, f12, Theme.chat_actionBackgroundGradientDarkenPaint);
                    }
                }
                if (z) {
                    canvas.restore();
                }
                canvas.clipRect(this.rectF);
                boolean z2 = this.reverseAnimation != this.countAnimationIncrement;
                if (this.countAnimationInLayout != null) {
                    canvas.save();
                    float f13 = this.countLeft;
                    float fDp2 = AndroidUtilities.dp(4.0f) + fDp;
                    int iDp = AndroidUtilities.dp(13.0f);
                    if (!z2) {
                        iDp = -iDp;
                    }
                    canvas.translate(f13, fDp2 + (iDp * (1.0f - f6)));
                    this.textPaint.setAlpha((int) (f6 * 255.0f));
                    staticLayout = this.countAnimationInLayout;
                } else {
                    if (this.countLayout != null) {
                        canvas.save();
                        float f14 = this.countLeft;
                        float fDp3 = AndroidUtilities.dp(4.0f) + fDp;
                        int iDp2 = AndroidUtilities.dp(13.0f);
                        if (!z2) {
                            iDp2 = -iDp2;
                        }
                        canvas.translate(f14, fDp3 + (iDp2 * (1.0f - f6)));
                        this.textPaint.setAlpha((int) (f6 * 255.0f));
                        staticLayout = this.countLayout;
                    }
                    if (this.countOldLayout != null) {
                        canvas.save();
                        canvas.translate(this.countLeft, AndroidUtilities.dp(4.0f) + fDp + ((z2 ? -AndroidUtilities.dp(13.0f) : AndroidUtilities.dp(13.0f)) * f6));
                        this.textPaint.setAlpha((int) ((1.0f - f6) * 255.0f));
                        this.countOldLayout.draw(canvas);
                        canvas.restore();
                    }
                    if (this.countAnimationStableLayout != null) {
                        canvas.save();
                        canvas.translate(this.countLeft, fDp + AndroidUtilities.dp(4.0f));
                        this.textPaint.setAlpha(255);
                        this.countAnimationStableLayout.draw(canvas);
                        canvas.restore();
                    }
                    this.textPaint.setAlpha(255);
                }
                staticLayout.draw(canvas);
                canvas.restore();
                if (this.countOldLayout != null) {
                }
                if (this.countAnimationStableLayout != null) {
                }
                this.textPaint.setAlpha(255);
            }
            canvas.restore();
        }

        public float getCenterX() {
            updateX(this.countWidth);
            return this.countLeft + (this.countWidth / 2.0f);
        }

        public int getCurrentWidth() {
            return (int) Math.ceil(this.countLayoutWidth);
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        public int getWidth() {
            if (this.currentCount == 0) {
                return 0;
            }
            return this.countWidth + AndroidUtilities.dp(this.radius - 0.5f);
        }

        public void setCount(int i, boolean z) {
            setText(getStringOfCCount(i), z, i, false);
        }

        public void setParent(View view) {
            this.parent = view;
        }

        public void setSize(int i, int i2) {
            if (i != this.lastH) {
                int i3 = this.currentCount;
                this.currentCount = -1;
                setCount(i3, this.animationType == 0);
                this.lastH = i;
            }
            this.width = i2;
        }

        public void setText(CharSequence charSequence, boolean z, int i, boolean z2) {
            ValueAnimator valueAnimator;
            long j;
            ValueAnimator valueAnimator2;
            TimeInterpolator overshootInterpolator;
            View view;
            View view2;
            if (TextUtils.equals(charSequence, this.currentText)) {
                return;
            }
            ValueAnimator valueAnimator3 = this.countAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
            }
            if (i > 0 && this.updateVisibility && (view2 = this.parent) != null) {
                view2.setVisibility(0);
            }
            boolean z3 = Math.abs(i - this.currentCount) > 99 ? false : z;
            float lineWidth = BitmapDescriptorFactory.HUE_RED;
            if (!z3) {
                this.currentCount = i;
                this.currentText = charSequence;
                if (i == 0) {
                    if (!this.updateVisibility || (view = this.parent) == null) {
                        return;
                    }
                    view.setVisibility(8);
                    return;
                }
                this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(charSequence.toString())));
                StaticLayout staticLayout = new StaticLayout(charSequence, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.countLayout = staticLayout;
                if (staticLayout.getLineCount() >= 1) {
                    lineWidth = this.countLayout.getLineWidth(0);
                }
                this.countLayoutWidth = lineWidth;
                View view3 = this.parent;
                if (view3 != null) {
                    view3.invalidate();
                    return;
                }
                return;
            }
            if (z3) {
                ValueAnimator valueAnimator4 = this.countAnimator;
                if (valueAnimator4 != null) {
                    valueAnimator4.cancel();
                }
                this.countChangeProgress = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.countAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.CounterView$CounterDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator5) {
                        this.f$0.lambda$setText$0(valueAnimator5);
                    }
                });
                this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.CounterView.CounterDrawable.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        CounterDrawable counterDrawable = CounterDrawable.this;
                        counterDrawable.countChangeProgress = 1.0f;
                        counterDrawable.countOldLayout = null;
                        CounterDrawable.this.countAnimationStableLayout = null;
                        CounterDrawable.this.countAnimationInLayout = null;
                        if (CounterDrawable.this.parent != null) {
                            CounterDrawable counterDrawable2 = CounterDrawable.this;
                            if (counterDrawable2.currentCount == 0 && counterDrawable2.updateVisibility) {
                                counterDrawable2.parent.setVisibility(8);
                            }
                            CounterDrawable.this.parent.invalidate();
                        }
                        CounterDrawable.this.animationType = -1;
                    }
                });
                if (this.currentCount <= 0) {
                    this.animationType = 0;
                    this.countAnimator.setDuration(220L);
                    valueAnimator2 = this.countAnimator;
                    overshootInterpolator = new OvershootInterpolator();
                } else {
                    if (i == 0) {
                        this.animationType = 1;
                        valueAnimator = this.countAnimator;
                        j = 150;
                    } else {
                        this.animationType = 2;
                        valueAnimator = this.countAnimator;
                        j = 430;
                    }
                    valueAnimator.setDuration(j);
                    valueAnimator2 = this.countAnimator;
                    overshootInterpolator = CubicBezierInterpolator.DEFAULT;
                }
                valueAnimator2.setInterpolator(overshootInterpolator);
                if (this.countLayout != null) {
                    CharSequence charSequence2 = this.currentText;
                    if (charSequence2.length() != charSequence.length() || z2) {
                        this.countOldLayout = this.countLayout;
                    } else {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence2);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(charSequence);
                        for (int i2 = 0; i2 < charSequence2.length(); i2++) {
                            if (charSequence2.charAt(i2) == charSequence.charAt(i2)) {
                                int i3 = i2 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i2, i3, 0);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i2, i3, 0);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i2, i2 + 1, 0);
                            }
                        }
                        int iMax = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(charSequence2.toString())));
                        TextPaint textPaint = this.textPaint;
                        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                        this.countOldLayout = new StaticLayout(spannableStringBuilder, textPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.countAnimationStableLayout = new StaticLayout(spannableStringBuilder3, this.textPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.countAnimationInLayout = new StaticLayout(spannableStringBuilder2, this.textPaint, iMax, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    }
                }
                this.countWidthOld = this.countWidth;
                this.countAnimationIncrement = i > this.currentCount;
                this.countAnimator.start();
            }
            if (i > 0) {
                this.countWidth = Math.max(AndroidUtilities.dp(12.0f), (int) Math.ceil(this.textPaint.measureText(charSequence.toString())));
                StaticLayout staticLayout2 = new StaticLayout(charSequence, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.countLayout = staticLayout2;
                if (staticLayout2.getLineCount() >= 1) {
                    lineWidth = this.countLayout.getLineWidth(0);
                }
                this.countLayoutWidth = lineWidth;
            }
            this.currentCount = i;
            this.currentText = charSequence;
            View view4 = this.parent;
            if (view4 != null) {
                view4.invalidate();
            }
        }

        public void setType(int i) {
            this.type = i;
        }

        public void updateBackgroundRect() {
            int i;
            float f = this.countChangeProgress;
            if (f == 1.0f || (i = this.animationType) == 0 || i == 1) {
                updateX(this.countWidth);
                float fDp = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
                RectF rectF = this.rectF;
                float f2 = this.x;
                rectF.set(f2, fDp, this.countWidth + f2 + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + fDp);
                return;
            }
            float f3 = f * 2.0f;
            if (f3 > 1.0f) {
                f3 = 1.0f;
            }
            float fDp2 = (this.lastH - AndroidUtilities.dp(this.radius * 2.0f)) / 2.0f;
            int i2 = this.countWidth;
            int i3 = this.countWidthOld;
            float f4 = i2 == i3 ? i2 : (i2 * f3) + (i3 * (1.0f - f3));
            updateX(f4);
            RectF rectF2 = this.rectF;
            float f5 = this.x;
            rectF2.set(f5, fDp2, f4 + f5 + AndroidUtilities.dp(11.0f), AndroidUtilities.dp(23.0f) + fDp2);
        }
    }

    public CounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setVisibility(8);
        CounterDrawable counterDrawable = new CounterDrawable(this, true, resourcesProvider);
        this.counterDrawable = counterDrawable;
        counterDrawable.updateVisibility = true;
    }

    public float getEnterProgress() {
        int i;
        CounterDrawable counterDrawable = this.counterDrawable;
        float f = counterDrawable.countChangeProgress;
        if (f != 1.0f && ((i = counterDrawable.animationType) == 0 || i == 1)) {
            return i == 0 ? f : 1.0f - f;
        }
        if (counterDrawable.currentCount == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return 1.0f;
    }

    public boolean isInOutAnimation() {
        int i = this.counterDrawable.animationType;
        return i == 0 || i == 1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.counterDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.counterDrawable.setSize(getMeasuredHeight(), getMeasuredWidth());
    }

    public void setColors(int i, int i2) {
        this.counterDrawable.textColorKey = i;
        this.counterDrawable.circleColorKey = i2;
    }

    public void setCount(int i, boolean z) {
        this.counterDrawable.setCount(i, z);
    }

    public void setGravity(int i) {
        this.counterDrawable.gravity = i;
    }

    public void setReverse(boolean z) {
        this.counterDrawable.reverseAnimation = z;
    }
}
