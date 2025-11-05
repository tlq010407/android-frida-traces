package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Region;
import android.text.TextPaint;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.SimpleFloatPropertyCompat;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class OutlineTextContainerView extends FrameLayout {
    private EditText attachedEditText;
    private float errorProgress;
    private final SpringAnimation errorSpring;
    private boolean forceForceUseCenter;
    private boolean forceUseCenter;
    private boolean forceUseCenter2;
    private float leftPadding;
    private String mText;
    private final Paint outlinePaint;
    private final RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private float selectionProgress;
    private final SpringAnimation selectionSpring;
    private float strokeWidthRegular;
    private float strokeWidthSelected;
    private final TextPaint textPaint;
    private float titleProgress;
    private final SpringAnimation titleSpring;
    private static final SimpleFloatPropertyCompat SELECTION_PROGRESS_PROPERTY = new SimpleFloatPropertyCompat("selectionProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda0
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            return ((OutlineTextContainerView) obj).selectionProgress;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda1
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            OutlineTextContainerView.lambda$static$1((OutlineTextContainerView) obj, f);
        }
    }).setMultiplier(100.0f);
    private static final SimpleFloatPropertyCompat TITLE_PROGRESS_PROPERTY = new SimpleFloatPropertyCompat("titleProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda2
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            return ((OutlineTextContainerView) obj).titleProgress;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda3
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            OutlineTextContainerView.lambda$static$3((OutlineTextContainerView) obj, f);
        }
    }).setMultiplier(100.0f);
    private static final SimpleFloatPropertyCompat ERROR_PROGRESS_PROPERTY = new SimpleFloatPropertyCompat("errorProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda4
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            return ((OutlineTextContainerView) obj).errorProgress;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.OutlineTextContainerView$$ExternalSyntheticLambda5
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            OutlineTextContainerView.lambda$static$5((OutlineTextContainerView) obj, f);
        }
    }).setMultiplier(100.0f);

    public OutlineTextContainerView(Context context) {
        this(context, null);
    }

    public OutlineTextContainerView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.rect = new RectF();
        this.mText = "";
        Paint paint = new Paint(1);
        this.outlinePaint = paint;
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.selectionSpring = new SpringAnimation(this, SELECTION_PROGRESS_PROPERTY);
        this.titleSpring = new SpringAnimation(this, TITLE_PROGRESS_PROPERTY);
        this.errorSpring = new SpringAnimation(this, ERROR_PROGRESS_PROPERTY);
        this.strokeWidthRegular = Math.max(2, AndroidUtilities.dp(0.5f));
        this.strokeWidthSelected = AndroidUtilities.dp(1.6667f);
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        textPaint.setTextSize(AndroidUtilities.dp(16.0f));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(this.strokeWidthRegular);
        updateColor();
        setPadding(0, AndroidUtilities.dp(6.0f), 0, 0);
    }

    private void animateSpring(SpringAnimation springAnimation, float f) {
        float f2 = f * 100.0f;
        if (springAnimation.getSpring() == null || f2 != springAnimation.getSpring().getFinalPosition()) {
            springAnimation.cancel();
            springAnimation.setSpring(new SpringForce(f2).setStiffness(500.0f).setDampingRatio(1.0f).setFinalPosition(f2)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$1(OutlineTextContainerView outlineTextContainerView, float f) {
        outlineTextContainerView.selectionProgress = f;
        if (!outlineTextContainerView.forceUseCenter || outlineTextContainerView.forceForceUseCenter) {
            outlineTextContainerView.outlinePaint.setStrokeWidth(AndroidUtilities.lerp(outlineTextContainerView.strokeWidthRegular, outlineTextContainerView.strokeWidthSelected, f));
            outlineTextContainerView.updateColor();
        }
        outlineTextContainerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$3(OutlineTextContainerView outlineTextContainerView, float f) {
        outlineTextContainerView.titleProgress = f;
        if (!outlineTextContainerView.forceUseCenter || outlineTextContainerView.forceForceUseCenter) {
            outlineTextContainerView.updateColor();
        }
        outlineTextContainerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$5(OutlineTextContainerView outlineTextContainerView, float f) {
        outlineTextContainerView.errorProgress = f;
        outlineTextContainerView.updateColor();
    }

    private void setColor(int i) {
        this.outlinePaint.setColor(i);
        invalidate();
    }

    public void animateError(float f) {
        animateSpring(this.errorSpring, f);
    }

    public void animateSelection(float f) {
        animateSelection(f, f, true);
    }

    public void animateSelection(float f, float f2, boolean z) {
        if (z) {
            animateSpring(this.selectionSpring, f);
            animateSpring(this.titleSpring, f2);
            return;
        }
        this.selectionProgress = f;
        this.titleProgress = f2;
        if (!this.forceUseCenter) {
            Paint paint = this.outlinePaint;
            float f3 = this.strokeWidthRegular;
            paint.setStrokeWidth(f3 + ((this.strokeWidthSelected - f3) * f));
        }
        updateColor();
    }

    public void animateSelection(float f, boolean z) {
        animateSelection(f, f, z);
    }

    public void animateSelection(boolean z, boolean z2) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            f = 1.0f;
        }
        animateSelection(f2, f, true);
    }

    public void animateSelection(boolean z, boolean z2, boolean z3) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            f = 1.0f;
        }
        animateSelection(f2, f, z3);
    }

    public void attachEditText(EditText editText) {
        this.attachedEditText = editText;
        invalidate();
    }

    public EditText getAttachedEditText() {
        return this.attachedEditText;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float paddingTop = getPaddingTop() + ((this.textPaint.getTextSize() / 2.0f) - AndroidUtilities.dp(1.75f));
        float height = (getHeight() / 2.0f) + (this.textPaint.getTextSize() / 2.0f);
        EditText editText = this.attachedEditText;
        boolean z = (editText != null && editText.length() == 0 && TextUtils.isEmpty(this.attachedEditText.getHint())) || this.forceUseCenter || this.forceUseCenter2;
        if (z) {
            paddingTop += (height - paddingTop) * (1.0f - this.titleProgress);
        }
        float f = paddingTop;
        float f2 = z ? this.leftPadding * (1.0f - this.titleProgress) : BitmapDescriptorFactory.HUE_RED;
        float strokeWidth = this.outlinePaint.getStrokeWidth();
        float f3 = z ? 0.75f + ((1.0f - this.titleProgress) * 0.25f) : 0.75f;
        float fMeasureText = this.textPaint.measureText(this.mText) * f3;
        canvas.save();
        this.rect.set(getPaddingLeft() + AndroidUtilities.dp(10.0f), getPaddingTop(), (getWidth() - AndroidUtilities.dp(18.0f)) - getPaddingRight(), getPaddingTop() + (strokeWidth * 2.0f));
        canvas.clipRect(this.rect, Region.Op.DIFFERENCE);
        this.rect.set(getPaddingLeft() + strokeWidth, getPaddingTop() + strokeWidth, (getWidth() - strokeWidth) - getPaddingRight(), (getHeight() - strokeWidth) - getPaddingBottom());
        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.outlinePaint);
        canvas.restore();
        float paddingLeft = getPaddingLeft() + AndroidUtilities.dp(10.0f);
        float paddingTop2 = getPaddingTop() + strokeWidth;
        float f4 = paddingLeft + (fMeasureText / 2.0f);
        canvas.drawLine(f4 + ((((paddingLeft + fMeasureText) + AndroidUtilities.dp(10.0f)) - f4) * (z ? this.titleProgress : 1.0f)), paddingTop2, ((getWidth() - strokeWidth) - getPaddingRight()) - AndroidUtilities.dp(6.0f), paddingTop2, this.outlinePaint);
        float fDp = f4 + AndroidUtilities.dp(4.0f);
        canvas.drawLine(paddingLeft, paddingTop2, fDp + ((paddingLeft - fDp) * (z ? this.titleProgress : 1.0f)), paddingTop2, this.outlinePaint);
        canvas.save();
        canvas.scale(f3, f3, getPaddingLeft() + AndroidUtilities.dp(18.0f), f);
        canvas.drawText(this.mText, getPaddingLeft() + AndroidUtilities.dp(14.0f) + f2, f, this.textPaint);
        canvas.restore();
    }

    public void setForceForceUseCenter(boolean z) {
        this.forceUseCenter = z;
        this.forceForceUseCenter = z;
        invalidate();
    }

    public void setForceUseCenter(boolean z) {
        this.forceUseCenter = z;
        invalidate();
    }

    public void setForceUseCenter2(boolean z) {
        this.forceUseCenter2 = z;
    }

    public void setLeftPadding(float f) {
        this.leftPadding = f;
        invalidate();
    }

    public void setText(String str) {
        this.mText = str;
        invalidate();
    }

    public void updateColor() {
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteHintText, this.resourcesProvider);
        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteValueText, this.resourcesProvider);
        boolean z = this.forceUseCenter;
        float f = BitmapDescriptorFactory.HUE_RED;
        int iBlendARGB = ColorUtils.blendARGB(color, color2, (!z || this.forceForceUseCenter) ? this.titleProgress : BitmapDescriptorFactory.HUE_RED);
        TextPaint textPaint = this.textPaint;
        int i = Theme.key_text_RedBold;
        textPaint.setColor(ColorUtils.blendARGB(iBlendARGB, Theme.getColor(i, this.resourcesProvider), this.errorProgress));
        int color3 = Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourcesProvider);
        int color4 = Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, this.resourcesProvider);
        if (!this.forceUseCenter || this.forceForceUseCenter) {
            f = this.selectionProgress;
        }
        setColor(ColorUtils.blendARGB(ColorUtils.blendARGB(color3, color4, f), Theme.getColor(i, this.resourcesProvider), this.errorProgress));
    }
}
