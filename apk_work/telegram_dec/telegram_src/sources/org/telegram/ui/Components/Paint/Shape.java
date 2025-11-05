package org.telegram.ui.Components.Paint;

import android.graphics.RectF;
import org.telegram.ui.Components.Paint.Brush;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class Shape {
    public float arrowTriangleLength;
    public final Brush.Shape brush;
    public float centerX;
    public float centerY;
    public boolean fill;
    public float middleX;
    public float middleY;
    public float radiusX;
    public float radiusY;
    public float rotation;
    public float rounding;
    public float thickness;

    public Shape(Brush.Shape shape) {
        this.brush = shape;
    }

    public void getBounds(RectF rectF) {
        if (getType() != 4) {
            float fMax = Math.max(Math.abs(this.radiusX), Math.abs(this.radiusY));
            float f = this.centerX;
            float f2 = fMax * 1.42f;
            float f3 = this.centerY;
            rectF.set(f - f2, f3 - f2, f + f2, f3 + f2);
            if (getType() == 3) {
            }
            float f4 = (-this.thickness) - 3.0f;
            rectF.inset(f4, f4);
        }
        float f5 = this.centerX;
        float f6 = this.arrowTriangleLength;
        float f7 = this.centerY;
        rectF.set(f5 - f6, f7 - f6, f5 + f6, f7 + f6);
        rectF.union(this.radiusX, this.radiusY);
        rectF.union(this.middleX, this.middleY);
        float f42 = (-this.thickness) - 3.0f;
        rectF.inset(f42, f42);
    }

    public int getType() {
        return this.brush.getShapeShaderType();
    }
}
