package org.telegram.ui.Components;

import android.graphics.CornerPathEffect;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class LinkPath extends CornerPath {
    private static CornerPathEffect roundedEffect;
    private static int roundedEffectRadius;
    private int baselineShift;
    public float centerX;
    public float centerY;
    private Layout currentLayout;
    private int currentLine;
    private float insetHoriz;
    private float insetVert;
    private int lineHeight;
    private float maxX;
    private float maxY;
    private boolean useRoundRect;
    private float xOffset;
    private float yOffset;
    private float lastTop = -1.0f;
    private boolean allowReset = true;
    private float minX = Float.MAX_VALUE;
    private float minY = Float.MAX_VALUE;

    public LinkPath() {
        this.useCornerPathImplementation = false;
    }

    public LinkPath(boolean z) {
        this.useRoundRect = z;
        this.useCornerPathImplementation = false;
    }

    public static int getRadius() {
        return AndroidUtilities.dp(5.0f);
    }

    public static CornerPathEffect getRoundedEffect() {
        if (roundedEffect == null || roundedEffectRadius != getRadius()) {
            int radius = getRadius();
            roundedEffectRadius = radius;
            roundedEffect = new CornerPathEffect(radius);
        }
        return roundedEffect;
    }

    private void superAddRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        float f5 = this.insetHoriz;
        float f6 = f - f5;
        float f7 = this.insetVert;
        float f8 = f2 - f7;
        float f9 = f3 + f5;
        float f10 = f4 + f7;
        this.minX = Math.min(this.minX, Math.min(f6, f9));
        this.minY = Math.min(this.minY, Math.min(f8, f10));
        this.maxX = Math.max(this.maxX, Math.max(f6, f9));
        this.maxY = Math.max(this.maxY, Math.max(f8, f10));
        super.addRect(f6, f8, f9, f10, direction);
    }

    @Override // org.telegram.ui.Components.CornerPath, android.graphics.Path
    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        Layout layout = this.currentLayout;
        if (layout == null) {
            superAddRect(f, f2, f3, f4, direction);
            return;
        }
        try {
            float f5 = this.yOffset;
            float f6 = f2 + f5;
            float f7 = f5 + f4;
            float f8 = this.lastTop;
            if (f8 == -1.0f) {
                this.lastTop = f6;
            } else if (f8 != f6) {
                this.lastTop = f6;
                this.currentLine++;
            }
            float lineRight = layout.getLineRight(this.currentLine);
            float lineLeft = this.currentLayout.getLineLeft(this.currentLine);
            if (f < lineRight) {
                if (f > lineLeft || f3 > lineLeft) {
                    if (f3 <= lineRight) {
                        lineRight = f3;
                    }
                    if (f >= lineLeft) {
                        lineLeft = f;
                    }
                    float f9 = this.xOffset;
                    float radius = lineLeft + f9;
                    float radius2 = f9 + lineRight;
                    int i = Build.VERSION.SDK_INT;
                    float spacingAdd = BitmapDescriptorFactory.HUE_RED;
                    if (i < 28) {
                        if (f7 != this.currentLayout.getHeight()) {
                            spacingAdd = this.currentLayout.getSpacingAdd();
                        }
                        f7 -= spacingAdd;
                    } else if (f7 - f6 > this.lineHeight) {
                        float f10 = this.yOffset;
                        if (f7 != this.currentLayout.getHeight()) {
                            spacingAdd = this.currentLayout.getLineBottom(this.currentLine) - this.currentLayout.getSpacingAdd();
                        }
                        f7 = f10 + spacingAdd;
                    }
                    int i2 = this.baselineShift;
                    if (i2 < 0) {
                        f7 += i2;
                    } else if (i2 > 0) {
                        f6 += i2;
                    }
                    float f11 = f7;
                    this.centerX = (radius2 + radius) / 2.0f;
                    this.centerY = (f11 + f6) / 2.0f;
                    if (this.useRoundRect) {
                        radius -= getRadius() / 2.0f;
                        radius2 += getRadius() / 2.0f;
                    }
                    superAddRect(radius, f6, radius2, f11, direction);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void getBounds(RectF rectF) {
        rectF.set(this.minX, this.minY, this.maxX, this.maxY);
    }

    @Override // org.telegram.ui.Components.CornerPath, android.graphics.Path
    public void reset() {
        if (this.allowReset) {
            super.reset();
        }
    }

    public void setAllowReset(boolean z) {
        this.allowReset = z;
    }

    public void setBaselineShift(int i) {
        this.baselineShift = i;
    }

    public void setCurrentLayout(Layout layout, int i, float f) {
        setCurrentLayout(layout, i, BitmapDescriptorFactory.HUE_RED, f);
    }

    public void setCurrentLayout(Layout layout, int i, float f, float f2) {
        int lineCount;
        if (layout == null) {
            this.currentLayout = null;
            this.currentLine = 0;
            this.lastTop = -1.0f;
            this.xOffset = f;
            this.yOffset = f2;
            return;
        }
        this.currentLayout = layout;
        this.currentLine = layout.getLineForOffset(i);
        this.lastTop = -1.0f;
        this.xOffset = f;
        this.yOffset = f2;
        if (Build.VERSION.SDK_INT < 28 || (lineCount = layout.getLineCount()) <= 0) {
            return;
        }
        int i2 = lineCount - 1;
        this.lineHeight = layout.getLineBottom(i2) - layout.getLineTop(i2);
    }

    public void setInset(float f, float f2) {
        this.insetVert = f;
        this.insetHoriz = f2;
    }
}
