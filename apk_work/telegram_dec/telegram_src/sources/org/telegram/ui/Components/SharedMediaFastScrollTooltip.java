package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SharedMediaFastScrollTooltip extends FrameLayout {

    private class TooltipDrawableView extends View {
        Paint fadePaint;
        Paint fadePaintBack;
        float fromProgress;
        Paint paint;
        Paint paint2;
        float progress;
        Random random;
        float toProgress;

        public TooltipDrawableView(Context context) {
            super(context);
            this.random = new Random();
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.progress = 1.0f;
            this.fromProgress = BitmapDescriptorFactory.HUE_RED;
            Paint paint = this.paint;
            int i = Theme.key_chat_gifSaveHintText;
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i), 76));
            this.paint2.setColor(Theme.getColor(i));
            this.fadePaint = new Paint();
            float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f};
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.fadePaint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(4.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, fArr, tileMode));
            Paint paint2 = this.fadePaint;
            PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
            paint2.setXfermode(new PorterDuffXfermode(mode));
            this.fadePaintBack = new Paint();
            this.fadePaintBack.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(4.0f), new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, tileMode));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(mode));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
            int measuredWidth = (getMeasuredWidth() / 2) - AndroidUtilities.dp(3.0f);
            int iDp = ((AndroidUtilities.dp(1.0f) + measuredWidth) * 7) + AndroidUtilities.dp(1.0f);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            float f = this.progress;
            float interpolation = cubicBezierInterpolator.getInterpolation(f > 0.4f ? (f - 0.4f) / 0.6f : BitmapDescriptorFactory.HUE_RED);
            float f2 = (this.fromProgress * (1.0f - interpolation)) + (this.toProgress * interpolation);
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-(iDp - (getMeasuredHeight() - AndroidUtilities.dp(4.0f)))) * f2);
            int i = 0;
            for (int i2 = 7; i < i2; i2 = 7) {
                int iDp2 = AndroidUtilities.dp(3.0f) + ((AndroidUtilities.dp(1.0f) + measuredWidth) * i);
                RectF rectF = AndroidUtilities.rectTmp;
                float f3 = iDp2;
                float f4 = iDp2 + measuredWidth;
                rectF.set(BitmapDescriptorFactory.HUE_RED, f3, measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint);
                rectF.set(AndroidUtilities.dp(1.0f) + measuredWidth, f3, AndroidUtilities.dp(1.0f) + measuredWidth + measuredWidth, f4);
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), this.paint);
                i++;
            }
            canvas.restore();
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.dp(4.0f), this.fadePaint);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - AndroidUtilities.dp(4.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.dp(4.0f), this.fadePaintBack);
            canvas.restore();
            float fDp = AndroidUtilities.dp(3.0f) + ((getMeasuredHeight() - AndroidUtilities.dp(21.0f)) * f2);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(getMeasuredWidth() - AndroidUtilities.dp(3.0f), fDp, getMeasuredWidth(), AndroidUtilities.dp(15.0f) + fDp);
            canvas.drawRoundRect(rectF2, AndroidUtilities.dp(1.5f), AndroidUtilities.dp(1.5f), this.paint2);
            float fCenterY = rectF2.centerY();
            float fDp2 = measuredWidth + AndroidUtilities.dp(0.5f);
            rectF2.set(fDp2 - AndroidUtilities.dp(8.0f), fCenterY - AndroidUtilities.dp(3.0f), fDp2 + AndroidUtilities.dp(8.0f), fCenterY + AndroidUtilities.dp(3.0f));
            canvas.drawRoundRect(rectF2, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.paint2);
            float f5 = this.progress + 0.016f;
            this.progress = f5;
            if (f5 > 1.0f) {
                this.fromProgress = this.toProgress;
                float fAbs = Math.abs(this.random.nextInt() % 1001) / 1000.0f;
                this.toProgress = fAbs;
                this.toProgress = fAbs > this.fromProgress ? fAbs + 0.3f : fAbs - 0.3f;
                this.toProgress = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, this.toProgress));
                this.progress = BitmapDescriptorFactory.HUE_RED;
            }
            invalidate();
        }
    }

    public SharedMediaFastScrollTooltip(Context context) {
        super(context);
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(R.string.SharedMediaFastScrollHint));
        textView.setTextSize(1, 14.0f);
        textView.setMaxLines(3);
        textView.setTextColor(Theme.getColor(Theme.key_chat_gifSaveHintText));
        setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(6.0f), Theme.getColor(Theme.key_chat_gifSaveHintBackground)));
        addView(textView, LayoutHelper.createFrame(-2, -2.0f, 16, 46.0f, 8.0f, 8.0f, 8.0f));
        addView(new TooltipDrawableView(context), LayoutHelper.createFrame(29, 32.0f, 0, 8.0f, 8.0f, 8.0f, 8.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(300.0f), View.MeasureSpec.getSize(i) - AndroidUtilities.dp(32.0f)), Integer.MIN_VALUE), i2);
    }
}
