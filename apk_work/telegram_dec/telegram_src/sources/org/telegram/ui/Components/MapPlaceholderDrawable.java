package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class MapPlaceholderDrawable extends Drawable {
    private Paint linePaint;
    private Paint paint;

    public MapPlaceholderDrawable() {
        this(Theme.getCurrentTheme().isDark());
    }

    public MapPlaceholderDrawable(boolean z) {
        Paint paint;
        int i;
        this.paint = new Paint();
        Paint paint2 = new Paint();
        this.linePaint = paint2;
        paint2.setStrokeWidth(AndroidUtilities.dp(1.0f));
        if (z) {
            this.paint.setColor(-14865331);
            paint = this.linePaint;
            i = -15854042;
        } else {
            this.paint.setColor(-2172970);
            paint = this.linePaint;
            i = -3752002;
        }
        paint.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.paint);
        int iDp = AndroidUtilities.dp(9.0f);
        int iWidth = getBounds().width() / iDp;
        int iHeight = getBounds().height() / iDp;
        int i = getBounds().left;
        int i2 = getBounds().top;
        int i3 = 0;
        int i4 = 0;
        while (i4 < iWidth) {
            i4++;
            float f = (iDp * i4) + i;
            canvas.drawLine(f, i2, f, getBounds().height() + i2, this.linePaint);
        }
        while (i3 < iHeight) {
            i3++;
            float f2 = (iDp * i3) + i2;
            canvas.drawLine(i, f2, getBounds().width() + i, f2, this.linePaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
