package org.telegram.ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class StickerMakerBackgroundView extends View {
    private final Paint backgroundPaint;
    private final Path path;

    public StickerMakerBackgroundView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.backgroundPaint = paint;
        this.path = new Path();
        paint.setColor(-1);
        paint.setAlpha(40);
        setLayerType(2, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fDp = AndroidUtilities.dp(10.0f);
        float f = fDp * 2.0f;
        float measuredWidth = getMeasuredWidth() - f;
        float measuredHeight = getMeasuredHeight() - f;
        canvas.save();
        RectF rectF = AndroidUtilities.rectTmp;
        float f2 = fDp + measuredWidth;
        rectF.set(fDp, fDp, f2, f2);
        rectF.offset(BitmapDescriptorFactory.HUE_RED, (measuredHeight - rectF.height()) / 2.0f);
        float f3 = measuredWidth / 7.0f;
        this.path.rewind();
        this.path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        canvas.clipPath(this.path);
        int iDp = AndroidUtilities.dp(10.0f);
        canvas.save();
        canvas.translate(rectF.left, rectF.top);
        float f4 = iDp;
        int iWidth = ((int) (rectF.width() / f4)) + 1;
        int iHeight = ((int) (rectF.height() / f4)) + 1;
        for (int i = 0; i < iHeight; i++) {
            canvas.save();
            for (int i2 = 0; i2 < iWidth; i2++) {
                int i3 = i2 % 2;
                if ((i3 == 0 && i % 2 == 0) || (i3 != 0 && i % 2 != 0)) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f4, this.backgroundPaint);
                }
                canvas.translate(f4, BitmapDescriptorFactory.HUE_RED);
            }
            canvas.restore();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, f4);
        }
        canvas.restore();
        canvas.restore();
    }
}
