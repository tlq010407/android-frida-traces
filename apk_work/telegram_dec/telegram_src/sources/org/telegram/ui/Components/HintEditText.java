package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.TypedValue;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class HintEditText extends EditTextBoldCursor {
    protected TextPaint hintPaint;
    private String hintText;
    private android.graphics.Rect rect;

    public HintEditText(Context context) {
        super(context);
        this.hintPaint = new TextPaint(1);
        this.rect = new android.graphics.Rect();
        this.hintPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
    }

    public String getHintText() {
        return this.hintText;
    }

    @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) throws IllegalAccessException, IllegalArgumentException {
        if (this.hintText != null && length() < this.hintText.length()) {
            float f = BitmapDescriptorFactory.HUE_RED;
            int i = 0;
            while (i < this.hintText.length()) {
                float fMeasureText = i < length() ? getPaint().measureText(getText(), i, i + 1) : this.hintPaint.measureText(this.hintText, i, i + 1);
                if (shouldDrawBehindText(i) || i >= length()) {
                    int color = this.hintPaint.getColor();
                    canvas.save();
                    TextPaint textPaint = this.hintPaint;
                    String str = this.hintText;
                    textPaint.getTextBounds(str, 0, str.length(), this.rect);
                    float height = (getHeight() + this.rect.height()) / 2.0f;
                    onPreDrawHintCharacter(i, canvas, f, height);
                    canvas.drawText(this.hintText, i, i + 1, f, height, (Paint) this.hintPaint);
                    f += fMeasureText;
                    canvas.restore();
                    this.hintPaint.setColor(color);
                } else {
                    f += fMeasureText;
                }
                i++;
            }
        }
        super.onDraw(canvas);
    }

    @Override // org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        onTextChange();
    }

    protected void onPreDrawHintCharacter(int i, Canvas canvas, float f, float f2) {
    }

    public void onTextChange() {
        invalidate();
    }

    public void setHintText(String str) {
        this.hintText = str;
        onTextChange();
        setText(getText());
    }

    @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        this.hintPaint.setTextSize(TypedValue.applyDimension(i, f, getResources().getDisplayMetrics()));
    }

    protected boolean shouldDrawBehindText(int i) {
        return false;
    }
}
