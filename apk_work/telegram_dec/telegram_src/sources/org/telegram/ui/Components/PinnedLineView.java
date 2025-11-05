package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PinnedLineView extends View {
    float animateFromPosition;
    int animateFromTotal;
    int animateToPosition;
    int animateToTotal;
    boolean animationInProgress;
    float animationProgress;
    ValueAnimator animator;
    private int color;
    Paint fadePaint;
    Paint fadePaint2;
    private int lineHFrom;
    private int lineHTo;
    private int nextPosition;
    Paint paint;
    RectF rectF;
    boolean replaceInProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    Paint selectedPaint;
    int selectedPosition;
    private float startOffsetFrom;
    private float startOffsetTo;
    int totalCount;

    public PinnedLineView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.selectedPosition = -1;
        this.totalCount = 0;
        this.rectF = new RectF();
        this.paint = new Paint(1);
        this.selectedPaint = new Paint(1);
        this.nextPosition = -1;
        this.resourcesProvider = resourcesProvider;
        Paint paint = this.paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        Paint paint2 = this.paint;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint2.setStrokeCap(cap);
        this.selectedPaint.setStyle(style);
        this.selectedPaint.setStrokeCap(cap);
        this.fadePaint = new Paint();
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f};
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.fadePaint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(6.0f), new int[]{-1, 0}, fArr, tileMode));
        Paint paint3 = this.fadePaint;
        PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
        paint3.setXfermode(new PorterDuffXfermode(mode));
        this.fadePaint2 = new Paint();
        this.fadePaint2.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(6.0f), new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, tileMode));
        this.fadePaint2.setXfermode(new PorterDuffXfermode(mode));
        updateColors();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectPosition$0(ValueAnimator valueAnimator) {
        this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$1(ValueAnimator valueAnimator) {
        this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectPosition(int i) {
        float f;
        if (this.replaceInProgress) {
            this.nextPosition = i;
            return;
        }
        if (!this.animationInProgress) {
            f = this.selectedPosition;
        } else {
            if (this.animateToPosition == i) {
                return;
            }
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float f2 = this.animateFromPosition;
            float f3 = this.animationProgress;
            f = (f2 * (1.0f - f3)) + (this.animateToPosition * f3);
        }
        this.animateFromPosition = f;
        if (i != this.selectedPosition) {
            this.animateToPosition = i;
            this.animationInProgress = true;
            this.animationProgress = BitmapDescriptorFactory.HUE_RED;
            invalidate();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PinnedLineView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$selectPosition$0(valueAnimator2);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PinnedLineView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PinnedLineView pinnedLineView = PinnedLineView.this;
                    pinnedLineView.animationInProgress = false;
                    pinnedLineView.selectedPosition = pinnedLineView.animateToPosition;
                    pinnedLineView.invalidate();
                    if (PinnedLineView.this.nextPosition >= 0) {
                        PinnedLineView pinnedLineView2 = PinnedLineView.this;
                        pinnedLineView2.selectPosition(pinnedLineView2.nextPosition);
                        PinnedLineView.this.nextPosition = -1;
                    }
                }
            });
            this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animator.setDuration(220L);
            this.animator.start();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iMax;
        float measuredHeight;
        float measuredHeight2;
        float f;
        super.onDraw(canvas);
        if (this.selectedPosition < 0 || (iMax = this.totalCount) == 0) {
            return;
        }
        if (this.replaceInProgress) {
            iMax = Math.max(this.animateFromTotal, this.animateToTotal);
        }
        boolean z = iMax > 3;
        if (z) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
        }
        int iDp = AndroidUtilities.dp(8.0f);
        if (this.replaceInProgress) {
            float f2 = this.lineHFrom;
            float f3 = this.animationProgress;
            measuredHeight = (f2 * (1.0f - f3)) + (this.lineHTo * f3);
        } else if (this.totalCount == 0) {
            return;
        } else {
            measuredHeight = (getMeasuredHeight() - (iDp * 2)) / Math.min(this.totalCount, 3);
        }
        float f4 = BitmapDescriptorFactory.HUE_RED;
        if (measuredHeight == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float fDpf2 = AndroidUtilities.dpf2(0.7f);
        if (this.replaceInProgress) {
            float f5 = this.startOffsetFrom;
            float f6 = this.animationProgress;
            measuredHeight2 = (f5 * (1.0f - f6)) + (this.startOffsetTo * f6);
        } else {
            if (this.animationInProgress) {
                float f7 = this.animationProgress;
                measuredHeight2 = ((this.animateFromPosition - 1.0f) * measuredHeight * (1.0f - f7)) + ((this.animateToPosition - 1) * measuredHeight * f7);
            } else {
                measuredHeight2 = (this.selectedPosition - 1) * measuredHeight;
            }
            if (measuredHeight2 < BitmapDescriptorFactory.HUE_RED) {
                measuredHeight2 = BitmapDescriptorFactory.HUE_RED;
            } else {
                float f8 = iDp;
                if ((((this.totalCount - 1) * measuredHeight) + f8) - measuredHeight2 < (getMeasuredHeight() - iDp) - measuredHeight) {
                    measuredHeight2 = (f8 + ((this.totalCount - 1) * measuredHeight)) - ((getMeasuredHeight() - iDp) - measuredHeight);
                }
            }
        }
        float measuredWidth = getMeasuredWidth() / 2.0f;
        float f9 = iDp;
        int iMax2 = Math.max(0, (int) (((f9 + measuredHeight2) / measuredHeight) - 1.0f));
        int iMin = Math.min(iMax2 + 6, this.replaceInProgress ? Math.max(this.animateFromTotal, this.animateToTotal) : this.totalCount);
        while (iMax2 < iMin) {
            float f10 = ((iMax2 * measuredHeight) + f9) - measuredHeight2;
            float f11 = f10 + measuredHeight;
            if (f11 >= f4 && f10 <= getMeasuredHeight()) {
                this.rectF.set(f4, f10 + fDpf2, getMeasuredWidth(), f11 - fDpf2);
                boolean z2 = this.replaceInProgress;
                if (z2 && iMax2 >= this.animateToTotal) {
                    this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r15) / 255.0f) * 76.0f * (1.0f - this.animationProgress))));
                } else if (!z2 || iMax2 < this.animateFromTotal) {
                    canvas.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.paint);
                } else {
                    this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r11) / 255.0f) * 76.0f * this.animationProgress)));
                }
                canvas.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.paint);
                this.paint.setColor(ColorUtils.setAlphaComponent(this.color, (int) ((Color.alpha(r11) / 255.0f) * 76.0f)));
            }
            iMax2++;
            f4 = BitmapDescriptorFactory.HUE_RED;
        }
        if (this.animationInProgress) {
            float f12 = this.animateFromPosition;
            float f13 = this.animationProgress;
            f = (f12 * (1.0f - f13)) + (this.animateToPosition * f13);
        } else {
            f = this.selectedPosition;
        }
        float f14 = (f9 + (f * measuredHeight)) - measuredHeight2;
        this.rectF.set(BitmapDescriptorFactory.HUE_RED, f14 + fDpf2, getMeasuredWidth(), (f14 + measuredHeight) - fDpf2);
        canvas.drawRoundRect(this.rectF, measuredWidth, measuredWidth, this.selectedPaint);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.dp(6.0f), this.fadePaint);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - AndroidUtilities.dp(6.0f), getMeasuredWidth(), getMeasuredHeight(), this.fadePaint);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - AndroidUtilities.dp(6.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.dp(6.0f), this.fadePaint2);
        }
    }

    public void set(int i, int i2, boolean z) {
        int i3 = this.selectedPosition;
        if (i3 < 0 || i2 == 0 || this.totalCount == 0) {
            z = false;
        }
        if (!z) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.selectedPosition = i;
            this.totalCount = i2;
            invalidate();
            return;
        }
        if (this.totalCount == i2 && (Math.abs(i3 - i) <= 2 || this.animationInProgress || this.replaceInProgress)) {
            selectPosition(i);
            return;
        }
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            this.nextPosition = 0;
            valueAnimator2.cancel();
        }
        int iDp = AndroidUtilities.dp(8.0f);
        int i4 = iDp * 2;
        this.lineHFrom = (getMeasuredHeight() - i4) / Math.min(this.totalCount, 3);
        this.lineHTo = (getMeasuredHeight() - i4) / Math.min(i2, 3);
        float f = (this.selectedPosition - 1) * this.lineHFrom;
        this.startOffsetFrom = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            this.startOffsetFrom = BitmapDescriptorFactory.HUE_RED;
        } else {
            float f2 = (((this.totalCount - 1) * r3) + iDp) - f;
            int measuredHeight = getMeasuredHeight() - iDp;
            int i5 = this.lineHFrom;
            if (f2 < measuredHeight - i5) {
                this.startOffsetFrom = (((this.totalCount - 1) * i5) + iDp) - ((getMeasuredHeight() - iDp) - this.lineHFrom);
            }
        }
        float f3 = (i - 1) * this.lineHTo;
        this.startOffsetTo = f3;
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            this.startOffsetTo = BitmapDescriptorFactory.HUE_RED;
        } else {
            int i6 = i2 - 1;
            float f4 = ((r3 * i6) + iDp) - f3;
            int measuredHeight2 = getMeasuredHeight() - iDp;
            int i7 = this.lineHTo;
            if (f4 < measuredHeight2 - i7) {
                this.startOffsetTo = ((i6 * i7) + iDp) - ((getMeasuredHeight() - iDp) - this.lineHTo);
            }
        }
        this.animateFromPosition = this.selectedPosition;
        this.animateToPosition = i;
        this.selectedPosition = i;
        this.animateFromTotal = this.totalCount;
        this.animateToTotal = i2;
        this.totalCount = i2;
        this.replaceInProgress = true;
        this.animationInProgress = true;
        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PinnedLineView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$set$1(valueAnimator3);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PinnedLineView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PinnedLineView pinnedLineView = PinnedLineView.this;
                pinnedLineView.replaceInProgress = false;
                pinnedLineView.animationInProgress = false;
                pinnedLineView.invalidate();
                if (PinnedLineView.this.nextPosition >= 0) {
                    PinnedLineView pinnedLineView2 = PinnedLineView.this;
                    pinnedLineView2.selectPosition(pinnedLineView2.nextPosition);
                    PinnedLineView.this.nextPosition = -1;
                }
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animator.setDuration(220L);
        this.animator.start();
    }

    public void updateColors() {
        int themedColor = getThemedColor(Theme.key_chat_topPanelLine);
        this.color = themedColor;
        this.paint.setColor(ColorUtils.setAlphaComponent(themedColor, (int) ((Color.alpha(themedColor) / 255.0f) * 112.0f)));
        this.selectedPaint.setColor(this.color);
    }
}
