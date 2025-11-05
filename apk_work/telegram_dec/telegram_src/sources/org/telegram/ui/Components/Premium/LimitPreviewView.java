package org.telegram.ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.math.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.tl.TL_stories$TL_premium_boostsStatus;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumGradient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class LimitPreviewView extends LinearLayout {
    private boolean animateIncrease;
    private int animateIncreaseWidth;
    private boolean animatingRotation;
    boolean animationCanPlay;
    private ValueAnimator arrowAnimator;
    private int currentValue;
    private DarkGradientProvider darkGradientProvider;
    TextView defaultCount;
    private final TextView defaultText;
    public int gradientTotalHeight;
    int gradientYOffset;
    int icon;
    boolean inc;
    public boolean invalidationEnabled;
    private boolean isBoostsStyle;
    private boolean isSimpleStyle;
    public boolean isStatistic;
    CounterView limitIcon;
    float limitIconRotation;
    FrameLayout limitsContainer;
    private View parentVideForGradient;
    private float percent;
    private float position;
    TextView premiumCount;
    private final int premiumLimit;
    private boolean premiumLocked;
    private final TextView premiumText;
    float progress;
    Theme.ResourcesProvider resourcesProvider;
    PremiumGradient.PremiumGradientTools staticGradient;
    boolean wasAnimation;
    boolean wasHaptic;
    int width1;

    /* JADX INFO: Access modifiers changed from: private */
    class CounterView extends View {
        ArrayList animatedLayouts;
        StaticLayout animatedStableLayout;
        boolean animationInProgress;
        float arrowCenter;
        Paint dstOutPaint;
        boolean invalidatePath;
        Paint overlayPaint;
        Path path;
        PathEffect pathEffect;
        CharSequence text;
        StaticLayout textLayout;
        TextPaint textPaint;
        float textWidth;

        /* JADX INFO: Access modifiers changed from: private */
        class AnimatedLayout {
            public boolean direction;
            float progress;
            public boolean replace;
            ArrayList staticLayouts;
            ValueAnimator valueAnimator;
            float x;

            private AnimatedLayout() {
                this.staticLayouts = new ArrayList();
            }
        }

        public CounterView(Context context) {
            super(context);
            this.path = new Path();
            this.pathEffect = new CornerPathEffect(AndroidUtilities.dp(6.0f));
            this.textPaint = new TextPaint(1);
            this.animatedLayouts = new ArrayList();
            this.dstOutPaint = new Paint();
            this.overlayPaint = new Paint();
            this.textPaint.setTypeface(AndroidUtilities.bold());
            this.textPaint.setTextSize(AndroidUtilities.dp(22.0f));
            this.textPaint.setColor(-1);
            this.dstOutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.overlayPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.OVERLAY));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkAnimationComplete() {
            for (int i = 0; i < this.animatedLayouts.size(); i++) {
                if (((AnimatedLayout) this.animatedLayouts.get(i)).valueAnimator != null) {
                    return;
                }
            }
            this.animatedLayouts.clear();
            this.animationInProgress = false;
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimationLayouts$0(AnimatedLayout animatedLayout, ValueAnimator valueAnimator) {
            animatedLayout.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimationLayoutsDiff$1(AnimatedLayout animatedLayout, ValueAnimator valueAnimator) {
            animatedLayout.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        private void updatePath() {
            int measuredHeight = getMeasuredHeight() - AndroidUtilities.dp(8.0f);
            float measuredWidth = getMeasuredWidth() * this.arrowCenter;
            float fClamp = Utilities.clamp(AndroidUtilities.dp(8.0f) + measuredWidth, getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
            float fClamp2 = Utilities.clamp(AndroidUtilities.dp(10.0f) + measuredWidth, getMeasuredWidth(), AndroidUtilities.dp(24.0f));
            float fClamp3 = Utilities.clamp(measuredWidth - AndroidUtilities.dp(this.arrowCenter >= 0.7f ? 24.0f : 10.0f), getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
            float fClamp4 = Utilities.clamp(measuredWidth - AndroidUtilities.dp(8.0f), getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
            this.path.rewind();
            float f = measuredHeight;
            float f2 = f - (f / 2.0f);
            this.path.moveTo(fClamp3, f2 - AndroidUtilities.dp(2.0f));
            this.path.lineTo(fClamp3, f);
            this.path.lineTo(fClamp4, f);
            this.path.lineTo(measuredWidth, measuredHeight + AndroidUtilities.dp(8.0f));
            if (this.arrowCenter < 0.7f) {
                this.path.lineTo(fClamp, f);
            }
            this.path.lineTo(fClamp2, f);
            this.path.lineTo(fClamp2, f2 - AndroidUtilities.dp(2.0f));
            this.path.close();
        }

        void createAnimationLayouts() {
            this.animatedLayouts.clear();
            if (LimitPreviewView.this.isBoostsStyle && LimitPreviewView.this.currentValue == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.text);
            int i = 0;
            boolean z = true;
            for (int i2 = 0; i2 < this.text.length(); i2++) {
                if (Character.isDigit(this.text.charAt(i2))) {
                    AnimatedLayout animatedLayout = new AnimatedLayout();
                    this.animatedLayouts.add(animatedLayout);
                    animatedLayout.x = this.textLayout.getSecondaryHorizontal(i2);
                    animatedLayout.direction = z;
                    if (i >= 1) {
                        z = !z;
                        i = 0;
                    }
                    i++;
                    int iCharAt = this.text.charAt(i2) - '0';
                    if (iCharAt == 0) {
                        iCharAt = 10;
                    }
                    int i3 = 1;
                    while (i3 <= iCharAt) {
                        animatedLayout.staticLayouts.add(new StaticLayout("" + (i3 == 10 ? 0 : i3), this.textPaint, (int) this.textWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                        i3++;
                    }
                    spannableStringBuilder.setSpan(new EmptyStubSpan(), i2, i2 + 1, 0);
                }
            }
            this.animatedStableLayout = new StaticLayout(spannableStringBuilder, this.textPaint, AndroidUtilities.dp(12.0f) + ((int) this.textWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            for (int i4 = 0; i4 < this.animatedLayouts.size(); i4++) {
                this.animationInProgress = true;
                final AnimatedLayout animatedLayout2 = (AnimatedLayout) this.animatedLayouts.get(i4);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                animatedLayout2.valueAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$createAnimationLayouts$0(animatedLayout2, valueAnimator);
                    }
                });
                animatedLayout2.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.CounterView.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animatedLayout2.valueAnimator = null;
                        CounterView.this.checkAnimationComplete();
                    }
                });
                animatedLayout2.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                animatedLayout2.valueAnimator.setDuration(750L);
                animatedLayout2.valueAnimator.setStartDelay(((this.animatedLayouts.size() - 1) - i4) * 60);
                animatedLayout2.valueAnimator.start();
            }
        }

        void createAnimationLayoutsDiff(CharSequence charSequence) {
            if (this.textLayout == null) {
                return;
            }
            this.animatedLayouts.clear();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.text);
            int length = this.text.length() - 1;
            int i = 0;
            while (length >= 0) {
                char cCharAt = length < charSequence.length() ? charSequence.charAt(length) : ' ';
                if (cCharAt != this.text.charAt(length) && Character.isDigit(this.text.charAt(length))) {
                    AnimatedLayout animatedLayout = new AnimatedLayout();
                    this.animatedLayouts.add(animatedLayout);
                    animatedLayout.x = this.textLayout.getSecondaryHorizontal(length);
                    animatedLayout.replace = true;
                    if (i >= 1) {
                        i = 0;
                    }
                    i++;
                    TextPaint textPaint = this.textPaint;
                    int i2 = (int) this.textWidth;
                    Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                    animatedLayout.staticLayouts.add(new StaticLayout("" + cCharAt, textPaint, i2, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                    animatedLayout.staticLayouts.add(new StaticLayout("" + this.text.charAt(length), this.textPaint, (int) this.textWidth, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                    spannableStringBuilder.setSpan(new EmptyStubSpan(), length, length + 1, 0);
                }
                length--;
            }
            this.animatedStableLayout = new StaticLayout(spannableStringBuilder, this.textPaint, AndroidUtilities.dp(12.0f) + ((int) this.textWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            for (int i3 = 0; i3 < this.animatedLayouts.size(); i3++) {
                this.animationInProgress = true;
                final AnimatedLayout animatedLayout2 = (AnimatedLayout) this.animatedLayouts.get(i3);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                animatedLayout2.valueAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$createAnimationLayoutsDiff$1(animatedLayout2, valueAnimator);
                    }
                });
                animatedLayout2.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.CounterView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animatedLayout2.valueAnimator = null;
                        CounterView.this.checkAnimationComplete();
                    }
                });
                animatedLayout2.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                animatedLayout2.valueAnimator.setDuration(250L);
                animatedLayout2.valueAnimator.setStartDelay(((this.animatedLayouts.size() - 1) - i3) * 60);
                animatedLayout2.valueAnimator.start();
            }
        }

        public float getArrowCenter() {
            return this.arrowCenter;
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x024c  */
        /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            int measuredHeight = getMeasuredHeight() - AndroidUtilities.dp(8.0f);
            if (LimitPreviewView.this.premiumLocked) {
                measuredHeight = getMeasuredHeight();
                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getX(), -getTop());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(3.0f), getMeasuredWidth(), measuredHeight - AndroidUtilities.dp(3.0f));
                float f = measuredHeight / 2.0f;
                canvas.drawRoundRect(rectF, f, f, PremiumGradient.getInstance().getPremiumLocakedPaint());
            } else {
                if (this.invalidatePath) {
                    this.invalidatePath = false;
                    updatePath();
                }
                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getX(), -getTop());
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f2 = measuredHeight;
                rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), f2);
                float f3 = f2 / 2.0f;
                canvas.drawRoundRect(rectF2, f3, f3, LimitPreviewView.this.hasDarkGradientProvider() ? this.textPaint : PremiumGradient.getInstance().getMainGradientPaint());
                PremiumGradient.getInstance().getMainGradientPaint().setPathEffect(this.pathEffect);
                if (LimitPreviewView.this.hasDarkGradientProvider()) {
                    this.textPaint.setPathEffect(this.pathEffect);
                }
                canvas.drawPath(this.path, LimitPreviewView.this.hasDarkGradientProvider() ? this.textPaint : PremiumGradient.getInstance().getMainGradientPaint());
                PremiumGradient.getInstance().getMainGradientPaint().setPathEffect(null);
                if (LimitPreviewView.this.hasDarkGradientProvider()) {
                    this.textPaint.setPathEffect(null);
                }
                if (LimitPreviewView.this.invalidationEnabled) {
                    invalidate();
                }
            }
            if (LimitPreviewView.this.hasDarkGradientProvider()) {
                canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.dstOutPaint, 31);
            }
            float measuredWidth = (getMeasuredWidth() - this.textLayout.getWidth()) / 2.0f;
            float height = (measuredHeight - this.textLayout.getHeight()) / 2.0f;
            if (!this.animationInProgress) {
                if (this.textLayout != null) {
                    canvas.save();
                    canvas.translate(measuredWidth, height);
                    this.textLayout.draw(canvas);
                }
                if (LimitPreviewView.this.hasDarkGradientProvider()) {
                    return;
                }
                canvas.restore();
                canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.overlayPaint, 31);
                canvas.drawRect(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(10.0f), getMeasuredWidth() - AndroidUtilities.dp(12.0f), getMeasuredHeight() - AndroidUtilities.dp(10.0f), LimitPreviewView.this.darkGradientProvider.setDarkGradientLocation(getX(), getY()));
                canvas.restore();
                return;
            }
            canvas.save();
            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.dp(8.0f));
            if (this.animatedStableLayout != null) {
                canvas.save();
                canvas.translate(measuredWidth, height);
                this.animatedStableLayout.draw(canvas);
                canvas.restore();
            }
            for (int i = 0; i < this.animatedLayouts.size(); i++) {
                AnimatedLayout animatedLayout = (AnimatedLayout) this.animatedLayouts.get(i);
                canvas.save();
                if (animatedLayout.replace) {
                    canvas.translate(animatedLayout.x + measuredWidth, ((measuredHeight * animatedLayout.progress) + height) - ((1 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i2 = 0; i2 < animatedLayout.staticLayouts.size(); i2++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, -measuredHeight);
                        ((StaticLayout) animatedLayout.staticLayouts.get(i2)).draw(canvas);
                    }
                } else if (animatedLayout.direction) {
                    canvas.translate(animatedLayout.x + measuredWidth, (height - ((measuredHeight * 10) * animatedLayout.progress)) + ((10 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i3 = 0; i3 < animatedLayout.staticLayouts.size(); i3++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight);
                        ((StaticLayout) animatedLayout.staticLayouts.get(i3)).draw(canvas);
                    }
                } else {
                    canvas.translate(animatedLayout.x + measuredWidth, (((measuredHeight * 10) * animatedLayout.progress) + height) - ((10 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i4 = 0; i4 < animatedLayout.staticLayouts.size(); i4++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, -measuredHeight);
                        ((StaticLayout) animatedLayout.staticLayouts.get(i4)).draw(canvas);
                    }
                }
                canvas.restore();
            }
            canvas.restore();
            if (LimitPreviewView.this.hasDarkGradientProvider()) {
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            TextPaint textPaint = this.textPaint;
            CharSequence charSequence = this.text;
            this.textWidth = textPaint.measureText(charSequence, 0, charSequence.length());
            this.textLayout = new StaticLayout(this.text, this.textPaint, ((int) this.textWidth) + AndroidUtilities.dp(12.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            setMeasuredDimension((int) (this.textWidth + getPaddingRight() + getPaddingLeft()), AndroidUtilities.dp(44.0f) + AndroidUtilities.dp(8.0f));
            updatePath();
        }

        public void setArrowCenter(float f) {
            if (this.arrowCenter != f) {
                this.arrowCenter = f;
                this.invalidatePath = true;
                invalidate();
            }
        }

        public void setText(CharSequence charSequence, boolean z) {
            if (!z) {
                this.text = charSequence;
                return;
            }
            CharSequence charSequence2 = this.text;
            this.text = charSequence;
            createAnimationLayoutsDiff(charSequence2);
        }

        @Override // android.view.View
        public void setTranslationX(float f) {
            if (f != getTranslationX()) {
                super.setTranslationX(f);
                invalidate();
            }
        }
    }

    public interface DarkGradientProvider {
        Paint setDarkGradientLocation(float f, float f2);
    }

    private class TextViewHolder extends FrameLayout {
        private final boolean isLeft;
        private final Paint paint;

        public TextViewHolder(Context context, boolean z) {
            super(context);
            Paint paint = new Paint();
            this.paint = paint;
            setLayerType(2, null);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            this.isLeft = z;
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (!(view instanceof TextView)) {
                return super.drawChild(canvas, view, j);
            }
            boolean zDrawChild = super.drawChild(canvas, view, j);
            boolean z = false;
            boolean z2 = LimitPreviewView.this.percent != BitmapDescriptorFactory.HUE_RED && LimitPreviewView.this.percent <= 1.0f && this.isLeft;
            if (LimitPreviewView.this.percent == 1.0f && !this.isLeft) {
                z = true;
            }
            if ((z2 || z) && LimitPreviewView.this.hasDarkGradientProvider()) {
                canvas.saveLayer(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), this.paint, 31);
                canvas.drawRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), LimitPreviewView.this.darkGradientProvider.setDarkGradientLocation(((ViewGroup) getParent()).getX() + getX(), ((ViewGroup) getParent()).getY() + getY()));
                canvas.restore();
                invalidate();
            }
            return zDrawChild;
        }
    }

    public LimitPreviewView(Context context, int i, int i2, int i3, float f, final Theme.ResourcesProvider resourcesProvider) {
        float f2;
        float f3;
        TextView textView;
        int i4;
        int i5;
        float f4;
        float f5;
        TextView textView2;
        int i6;
        int i7;
        super(context);
        this.animationCanPlay = true;
        this.invalidationEnabled = true;
        this.resourcesProvider = resourcesProvider;
        this.percent = MathUtils.clamp(f, 0.1f, 0.9f);
        this.icon = i;
        this.currentValue = i2;
        this.premiumLimit = i3;
        setOrientation(1);
        setClipChildren(false);
        setClipToPadding(false);
        if (i != 0) {
            setPadding(0, AndroidUtilities.dp(16.0f), 0, 0);
            this.limitIcon = new CounterView(context);
            setIconValue(i2, false);
            this.limitIcon.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(19.0f), AndroidUtilities.dp(14.0f));
            addView(this.limitIcon, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 3));
        }
        final TextViewHolder textViewHolder = new TextViewHolder(context, true);
        TextView textView3 = new TextView(context);
        this.defaultText = textView3;
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setText(LocaleController.getString(R.string.LimitFree));
        textView3.setGravity(16);
        int i8 = Theme.key_windowBackgroundWhiteBlackText;
        textView3.setTextColor(Theme.getColor(i8, resourcesProvider));
        TextView textView4 = new TextView(context);
        this.defaultCount = textView4;
        textView4.setTypeface(AndroidUtilities.bold());
        this.defaultCount.setText(String.format("%d", Integer.valueOf(i3)));
        this.defaultCount.setGravity(16);
        this.defaultCount.setTextColor(Theme.getColor(i8, resourcesProvider));
        if (LocaleController.isRTL) {
            f2 = 12.0f;
            f3 = BitmapDescriptorFactory.HUE_RED;
            textViewHolder.addView(textView3, LayoutHelper.createFrame(-1, 30.0f, 5, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView = this.defaultCount;
            i4 = -2;
            i5 = 3;
        } else {
            f2 = 12.0f;
            f3 = BitmapDescriptorFactory.HUE_RED;
            textViewHolder.addView(textView3, LayoutHelper.createFrame(-1, 30.0f, 3, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView = this.defaultCount;
            i4 = -2;
            i5 = 5;
        }
        textViewHolder.addView(textView, LayoutHelper.createFrame(i4, 30.0f, i5, f2, f3, 12.0f, BitmapDescriptorFactory.HUE_RED));
        final TextViewHolder textViewHolder2 = new TextViewHolder(context, false);
        TextView textView5 = new TextView(context);
        this.premiumText = textView5;
        textView5.setTypeface(AndroidUtilities.bold());
        textView5.setText(LocaleController.getString(R.string.LimitPremium));
        textView5.setGravity(16);
        textView5.setTextColor(-1);
        TextView textView6 = new TextView(context) { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.1
            @Override // android.view.View
            public void setAlpha(float f6) {
                super.setAlpha(f6);
            }

            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(charSequence, bufferType);
            }

            @Override // android.widget.TextView
            public void setTextColor(int i9) {
                super.setTextColor(i9);
            }
        };
        this.premiumCount = textView6;
        textView6.setTypeface(AndroidUtilities.bold());
        this.premiumCount.setText(String.format("%d", Integer.valueOf(i3)));
        this.premiumCount.setGravity(16);
        this.premiumCount.setTextColor(-1);
        if (LocaleController.isRTL) {
            f4 = 12.0f;
            f5 = BitmapDescriptorFactory.HUE_RED;
            textViewHolder2.addView(textView5, LayoutHelper.createFrame(-1, 30.0f, 5, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView2 = this.premiumCount;
            i6 = -2;
            i7 = 3;
        } else {
            f4 = 12.0f;
            f5 = BitmapDescriptorFactory.HUE_RED;
            textViewHolder2.addView(textView5, LayoutHelper.createFrame(-1, 30.0f, 3, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView2 = this.premiumCount;
            i6 = -2;
            i7 = 5;
        }
        textViewHolder2.addView(textView2, LayoutHelper.createFrame(i6, 30.0f, i7, f4, f5, 12.0f, BitmapDescriptorFactory.HUE_RED));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.2
            Paint grayPaint = new Paint();
            Paint whitePaint;

            {
                Paint paint = new Paint();
                this.whitePaint = paint;
                paint.setColor(-1);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Paint paint;
                int i9;
                if (!LimitPreviewView.this.isBoostsStyle) {
                    paint = this.grayPaint;
                    i9 = Theme.key_windowBackgroundGray;
                } else if (LimitPreviewView.this.isStatistic) {
                    paint = this.grayPaint;
                    i9 = Theme.key_listSelector;
                } else {
                    paint = this.grayPaint;
                    i9 = Theme.key_graySection;
                }
                paint.setColor(Theme.getColor(i9, resourcesProvider));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                if (LimitPreviewView.this.hasDarkGradientProvider()) {
                    canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), LimitPreviewView.this.darkGradientProvider.setDarkGradientLocation(((ViewGroup) getParent()).getX() + getX(), ((ViewGroup) getParent()).getY() + getY()));
                } else {
                    canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.grayPaint);
                }
                canvas.save();
                if (!LimitPreviewView.this.isBoostsStyle) {
                    canvas.clipRect(LimitPreviewView.this.width1, 0, getMeasuredWidth(), getMeasuredHeight());
                }
                Paint mainGradientPaint = LimitPreviewView.this.hasDarkGradientProvider() ? this.whitePaint : PremiumGradient.getInstance().getMainGradientPaint();
                if (LimitPreviewView.this.parentVideForGradient != null) {
                    View view = LimitPreviewView.this.parentVideForGradient;
                    PremiumGradient.PremiumGradientTools premiumGradientTools = LimitPreviewView.this.staticGradient;
                    if (premiumGradientTools != null) {
                        mainGradientPaint = premiumGradientTools.paint;
                        premiumGradientTools.gradientMatrixLinear(r6.gradientTotalHeight, -r6.gradientYOffset);
                    } else {
                        float y = BitmapDescriptorFactory.HUE_RED;
                        for (View view2 = this; view2 != view; view2 = (View) view2.getParent()) {
                            y += view2.getY();
                        }
                        PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getLeft(), -y);
                    }
                } else {
                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getLeft(), -getTop());
                }
                if (LimitPreviewView.this.isBoostsStyle) {
                    AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, LimitPreviewView.this.width1, getMeasuredHeight());
                }
                canvas.drawRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), mainGradientPaint);
                canvas.restore();
                LimitPreviewView limitPreviewView = LimitPreviewView.this;
                if (limitPreviewView.staticGradient == null && limitPreviewView.invalidationEnabled) {
                    invalidate();
                }
                super.dispatchDraw(canvas);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i9, int i10, int i11, int i12) {
                if (getChildCount() != 2) {
                    super.onLayout(z, i9, i10, i11, i12);
                    return;
                }
                View childAt = getChildAt(0);
                View childAt2 = getChildAt(1);
                int measuredWidth = childAt.getMeasuredWidth();
                int i13 = i12 - i10;
                childAt.layout(0, 0, measuredWidth, i13);
                childAt2.layout(measuredWidth, 0, i11 - i9, i13);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i9, int i10) {
                TextView textView7;
                if (getChildCount() != 2) {
                    super.onMeasure(i9, i10);
                    return;
                }
                int size = View.MeasureSpec.getSize(i9);
                int size2 = View.MeasureSpec.getSize(i10);
                textViewHolder.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                int iMax = Math.max(textViewHolder.getMeasuredWidth(), AndroidUtilities.dp(24.0f) + LimitPreviewView.this.defaultText.getMeasuredWidth() + (LimitPreviewView.this.defaultCount.getVisibility() == 0 ? AndroidUtilities.dp(24.0f) + LimitPreviewView.this.defaultCount.getMeasuredWidth() : 0));
                textViewHolder2.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                if (LimitPreviewView.this.isBoostsStyle) {
                    int color = -1;
                    if (LimitPreviewView.this.percent == BitmapDescriptorFactory.HUE_RED) {
                        LimitPreviewView limitPreviewView = LimitPreviewView.this;
                        limitPreviewView.width1 = 0;
                        limitPreviewView.premiumCount.setTextColor(limitPreviewView.hasDarkGradientProvider() ? -1 : Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                        textView7 = LimitPreviewView.this.defaultText;
                        if (!LimitPreviewView.this.hasDarkGradientProvider()) {
                            color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider);
                        }
                    } else {
                        if (LimitPreviewView.this.percent < 1.0f) {
                            float measuredWidth = textViewHolder.getMeasuredWidth() - AndroidUtilities.dp(8.0f);
                            LimitPreviewView limitPreviewView2 = LimitPreviewView.this;
                            limitPreviewView2.width1 = (int) (measuredWidth + (((size - measuredWidth) - (textViewHolder2.getMeasuredWidth() - AndroidUtilities.dp(8.0f))) * limitPreviewView2.percent));
                            LimitPreviewView limitPreviewView3 = LimitPreviewView.this;
                            limitPreviewView3.premiumCount.setTextColor(limitPreviewView3.hasDarkGradientProvider() ? -1 : Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                        } else {
                            LimitPreviewView limitPreviewView4 = LimitPreviewView.this;
                            limitPreviewView4.width1 = size;
                            limitPreviewView4.premiumCount.setTextColor(-1);
                        }
                        textView7 = LimitPreviewView.this.defaultText;
                    }
                    textView7.setTextColor(color);
                } else {
                    int iMax2 = Math.max(textViewHolder2.getMeasuredWidth(), AndroidUtilities.dp(24.0f) + LimitPreviewView.this.premiumText.getMeasuredWidth() + (LimitPreviewView.this.premiumCount.getVisibility() == 0 ? AndroidUtilities.dp(24.0f) + LimitPreviewView.this.premiumCount.getMeasuredWidth() : 0));
                    LimitPreviewView limitPreviewView5 = LimitPreviewView.this;
                    limitPreviewView5.width1 = (int) Utilities.clamp(size * limitPreviewView5.percent, size - iMax2, iMax);
                    textViewHolder.measure(View.MeasureSpec.makeMeasureSpec(LimitPreviewView.this.width1, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                    textViewHolder2.measure(View.MeasureSpec.makeMeasureSpec(size - LimitPreviewView.this.width1, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                }
                setMeasuredDimension(size, size2);
            }
        };
        this.limitsContainer = frameLayout;
        frameLayout.addView(textViewHolder, LayoutHelper.createFrame(-1, 30.0f));
        this.limitsContainer.addView(textViewHolder2, LayoutHelper.createFrame(-1, 30.0f));
        addView(this.limitsContainer, LayoutHelper.createLinear(-1, 30, BitmapDescriptorFactory.HUE_RED, 0, 14, i == 0 ? 0 : 12, 14, 0));
    }

    public LimitPreviewView(Context context, int i, int i2, int i3, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, i3, 0.5f, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getGlobalXOffset() {
        return (((-getMeasuredWidth()) * 0.1f) * this.progress) - (getMeasuredWidth() * 0.2f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasDarkGradientProvider() {
        return this.darkGradientProvider != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$0(boolean z, float f, float f2, float f3, float f4, boolean z2, float f5, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fMin = Math.min(1.0f, fFloatValue);
        if (fFloatValue > 1.0f && z) {
            if (!this.wasHaptic) {
                this.wasHaptic = true;
                try {
                    this.limitIcon.performHapticFeedback(3);
                } catch (Exception unused) {
                }
            }
            this.limitIcon.setRotation(this.limitIconRotation + ((fFloatValue - 1.0f) * 60.0f));
        } else if (!this.animatingRotation) {
            this.limitIcon.setRotation(this.limitIconRotation);
        }
        if (valueAnimator == this.arrowAnimator) {
            float f6 = 1.0f - fMin;
            this.limitIcon.setTranslationX((f * f6) + (f2 * fMin));
            float f7 = (f3 * f6) + (f4 * fMin);
            this.limitIcon.setArrowCenter(f7);
            this.limitIcon.setPivotX(r6.getMeasuredWidth() * f7);
        }
        float fMin2 = Math.min(1.0f, 2.0f * fMin);
        if (z2) {
            this.width1 = (int) AndroidUtilities.lerp(this.animateIncreaseWidth, f5, fMin);
            this.limitsContainer.invalidate();
        } else {
            this.limitIcon.setScaleX(fMin2);
            this.limitIcon.setScaleY(fMin2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$1(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.limitIconRotation = fFloatValue < 0.5f ? (fFloatValue / 0.5f) * (-7.0f) : (1.0f - ((fFloatValue - 0.5f) / 0.5f)) * (-7.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z;
        if (this.staticGradient == null) {
            if (this.inc) {
                float f = this.progress + 0.016f;
                this.progress = f;
                if (f > 3.0f) {
                    z = false;
                    this.inc = z;
                }
                invalidate();
            } else {
                float f2 = this.progress - 0.016f;
                this.progress = f2;
                if (f2 < 1.0f) {
                    z = true;
                    this.inc = z;
                }
                invalidate();
            }
        }
        super.dispatchDraw(canvas);
    }

    public void increaseCurrentValue(int i, int i2, int i3) {
        this.currentValue++;
        this.percent = MathUtils.clamp(i2 / i3, BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animateIncrease = true;
        this.animateIncreaseWidth = this.width1;
        setIconValue(i, true);
        this.limitsContainer.requestLayout();
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01f3  */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float arrowCenter;
        float fClamp;
        float f2;
        float f3;
        float measuredWidth;
        super.onLayout(z, i, i2, i3, i4);
        if (!this.animateIncrease && (this.wasAnimation || this.limitIcon == null || !this.animationCanPlay || this.premiumLocked)) {
            if (this.isBoostsStyle) {
                this.limitIcon.setAlpha(1.0f);
                this.limitIcon.setScaleX(1.0f);
                this.limitIcon.setScaleY(1.0f);
                return;
            }
            if (!this.premiumLocked) {
                CounterView counterView = this.limitIcon;
                if (counterView != null) {
                    counterView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
                return;
            }
            float fDp = (AndroidUtilities.dp(14.0f) + ((getMeasuredWidth() - (r0 * 2)) * 0.5f)) - (this.limitIcon.getMeasuredWidth() / 2.0f);
            boolean z2 = this.wasAnimation;
            if (!z2 && this.animationCanPlay) {
                this.wasAnimation = true;
                this.limitIcon.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new OvershootInterpolator()).start();
            } else if (z2) {
                this.limitIcon.setAlpha(1.0f);
                this.limitIcon.setScaleX(1.0f);
                this.limitIcon.setScaleY(1.0f);
            } else {
                this.limitIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleY(BitmapDescriptorFactory.HUE_RED);
            }
            this.limitIcon.setTranslationX(fDp);
            return;
        }
        int iDp = AndroidUtilities.dp(14.0f);
        final boolean z3 = this.animateIncrease;
        this.animateIncrease = false;
        float translationX = z3 ? this.limitIcon.getTranslationX() : BitmapDescriptorFactory.HUE_RED;
        float f4 = iDp;
        int i5 = iDp * 2;
        float fMax = (Math.max(this.width1, (getMeasuredWidth() - i5) * this.position) + f4) - (this.limitIcon.getMeasuredWidth() / 2.0f);
        if (this.isSimpleStyle) {
            arrowCenter = this.limitIcon.getArrowCenter();
            measuredWidth = Utilities.clamp(fMax, (getMeasuredWidth() - iDp) - this.limitIcon.getMeasuredWidth(), f4);
            int i6 = this.width1;
            if (i6 <= 0) {
                f2 = arrowCenter;
                fClamp = BitmapDescriptorFactory.HUE_RED;
            } else if (i6 < getMeasuredWidth() - i5) {
                fClamp = Utilities.clamp((this.width1 - (measuredWidth - f4)) / this.limitIcon.getMeasuredWidth(), 1.0f, BitmapDescriptorFactory.HUE_RED);
                f2 = arrowCenter;
            }
            f3 = measuredWidth;
            this.limitIcon.setAlpha(1.0f);
            this.limitIcon.setTranslationX(translationX);
            this.limitIcon.setPivotX(r0.getMeasuredWidth() / 2.0f);
            this.limitIcon.setPivotY(r0.getMeasuredHeight());
            if (!z3) {
                this.limitIcon.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.createAnimationLayouts();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.arrowAnimator = valueAnimatorOfFloat;
            final float f5 = this.width1;
            if (z3) {
                this.width1 = this.animateIncreaseWidth;
            }
            final boolean z4 = !this.animatingRotation;
            this.animatingRotation = true;
            final float f6 = translationX;
            final float f7 = f3;
            final float f8 = f2;
            final float f9 = fClamp;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onLayout$0(z4, f6, f7, f8, f9, z3, f5, valueAnimator);
                }
            });
            this.arrowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z4) {
                        LimitPreviewView.this.animatingRotation = false;
                    }
                }
            });
            this.arrowAnimator.setInterpolator(new OvershootInterpolator());
            if (z3) {
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$onLayout$1(valueAnimator);
                    }
                });
                valueAnimatorOfFloat2.setDuration(500L);
                valueAnimatorOfFloat2.start();
                this.arrowAnimator.setDuration(600L);
            } else {
                this.arrowAnimator.setDuration(1000L);
                this.arrowAnimator.setStartDelay(200L);
            }
            this.arrowAnimator.start();
            this.wasAnimation = true;
        }
        if (fMax < f4) {
            f = BitmapDescriptorFactory.HUE_RED;
            arrowCenter = BitmapDescriptorFactory.HUE_RED;
        } else {
            f4 = fMax;
            f = 0.5f;
            arrowCenter = 0.5f;
        }
        if (f4 <= (getMeasuredWidth() - iDp) - this.limitIcon.getMeasuredWidth()) {
            fClamp = f;
            f2 = arrowCenter;
            f3 = f4;
            this.limitIcon.setAlpha(1.0f);
            this.limitIcon.setTranslationX(translationX);
            this.limitIcon.setPivotX(r0.getMeasuredWidth() / 2.0f);
            this.limitIcon.setPivotY(r0.getMeasuredHeight());
            if (!z3) {
            }
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.arrowAnimator = valueAnimatorOfFloat3;
            final float f52 = this.width1;
            if (z3) {
            }
            final boolean z42 = !this.animatingRotation;
            this.animatingRotation = true;
            final float f62 = translationX;
            final float f72 = f3;
            final float f82 = f2;
            final float f92 = fClamp;
            valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onLayout$0(z42, f62, f72, f82, f92, z3, f52, valueAnimator);
                }
            });
            this.arrowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z42) {
                        LimitPreviewView.this.animatingRotation = false;
                    }
                }
            });
            this.arrowAnimator.setInterpolator(new OvershootInterpolator());
            if (z3) {
            }
            this.arrowAnimator.start();
            this.wasAnimation = true;
        }
        measuredWidth = (getMeasuredWidth() - iDp) - this.limitIcon.getMeasuredWidth();
        f2 = arrowCenter;
        fClamp = 1.0f;
        f3 = measuredWidth;
        this.limitIcon.setAlpha(1.0f);
        this.limitIcon.setTranslationX(translationX);
        this.limitIcon.setPivotX(r0.getMeasuredWidth() / 2.0f);
        this.limitIcon.setPivotY(r0.getMeasuredHeight());
        if (!z3) {
        }
        ValueAnimator valueAnimatorOfFloat32 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.arrowAnimator = valueAnimatorOfFloat32;
        final float f522 = this.width1;
        if (z3) {
        }
        final boolean z422 = !this.animatingRotation;
        this.animatingRotation = true;
        final float f622 = translationX;
        final float f722 = f3;
        final float f822 = f2;
        final float f922 = fClamp;
        valueAnimatorOfFloat32.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$onLayout$0(z422, f622, f722, f822, f922, z3, f522, valueAnimator);
            }
        });
        this.arrowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z422) {
                    LimitPreviewView.this.animatingRotation = false;
                }
            }
        });
        this.arrowAnimator.setInterpolator(new OvershootInterpolator());
        if (z3) {
        }
        this.arrowAnimator.start();
        this.wasAnimation = true;
    }

    public void setBagePosition(float f) {
        this.position = MathUtils.clamp(f, 0.1f, 0.9f);
    }

    public void setBoosts(TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus, boolean z) {
        int i;
        TextView textView;
        String string;
        if ((tL_stories$TL_premium_boostsStatus.current_level_boosts == tL_stories$TL_premium_boostsStatus.boosts && z) || (i = tL_stories$TL_premium_boostsStatus.next_level_boosts) == 0) {
            this.percent = 1.0f;
            TextView textView2 = this.defaultText;
            int i2 = R.string.BoostsLevel;
            textView2.setText(LocaleController.formatString("BoostsLevel", i2, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level - 1)));
            textView = this.premiumCount;
            string = LocaleController.formatString("BoostsLevel", i2, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level));
        } else {
            this.percent = MathUtils.clamp((r2 - r1) / (i - r1), BitmapDescriptorFactory.HUE_RED, 1.0f);
            TextView textView3 = this.defaultText;
            int i3 = R.string.BoostsLevel;
            textView3.setText(LocaleController.formatString("BoostsLevel", i3, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level)));
            textView = this.premiumCount;
            string = LocaleController.formatString("BoostsLevel", i3, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level + 1));
        }
        textView.setText(string);
        ((FrameLayout.LayoutParams) this.premiumCount.getLayoutParams()).gravity = 5;
        setType(17);
        this.defaultCount.setVisibility(8);
        this.premiumText.setVisibility(8);
        this.premiumCount.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.defaultText.setTextColor(-1);
        setIconValue(tL_stories$TL_premium_boostsStatus.boosts, false);
        this.isBoostsStyle = true;
    }

    public void setDarkGradientProvider(DarkGradientProvider darkGradientProvider) {
        this.darkGradientProvider = darkGradientProvider;
    }

    public void setDelayedAnimation() {
        this.animationCanPlay = false;
    }

    public void setIconValue(int i, boolean z) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
        spannableStringBuilder.append((CharSequence) " ").setSpan(new RelativeSizeSpan(0.8f), 1, 2, 0);
        spannableStringBuilder.append((CharSequence) Integer.toString(i));
        this.limitIcon.setText(spannableStringBuilder, z);
        this.limitIcon.requestLayout();
    }

    public void setParentViewForGradien(ViewGroup viewGroup) {
        this.parentVideForGradient = viewGroup;
    }

    public void setPremiumLocked() {
        this.limitsContainer.setVisibility(8);
        CounterView counterView = this.limitIcon;
        if (counterView != null) {
            counterView.setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(3.0f));
        }
        this.premiumLocked = true;
    }

    public void setStaticGradinet(PremiumGradient.PremiumGradientTools premiumGradientTools) {
        this.staticGradient = premiumGradientTools;
    }

    public void setType(int i) {
        TextView textView;
        String str;
        if (i == 6) {
            str = "4 GB";
            if (this.limitIcon != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) "d ").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
                spannableStringBuilder.append((CharSequence) (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() ? "4 GB" : "2 GB"));
                this.limitIcon.setText(spannableStringBuilder, false);
            }
            textView = this.premiumCount;
        } else {
            if (i != 11) {
                return;
            }
            if (this.limitIcon != null) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                spannableStringBuilder2.append((CharSequence) "d").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
                this.limitIcon.setText(spannableStringBuilder2, false);
            }
            textView = this.premiumCount;
            str = "";
        }
        textView.setText(str);
    }

    public void startDelayedAnimation() {
        this.animationCanPlay = true;
        requestLayout();
    }
}
