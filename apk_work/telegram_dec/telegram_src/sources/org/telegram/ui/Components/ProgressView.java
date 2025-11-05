package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ProgressView {
    public int height;
    public int width;
    public float currentProgress = BitmapDescriptorFactory.HUE_RED;
    public float progressHeight = AndroidUtilities.dp(2.0f);
    private Paint innerPaint = new Paint();
    private Paint outerPaint = new Paint();

    public void draw(Canvas canvas) {
        float f = this.height / 2;
        float f2 = this.progressHeight / 2.0f;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f - f2, this.width, f + f2, this.innerPaint);
        float f3 = this.height / 2;
        float f4 = this.progressHeight / 2.0f;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3 - f4, this.width * this.currentProgress, f3 + f4, this.outerPaint);
    }

    public void setProgress(float f) {
        this.currentProgress = f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            f2 = 1.0f;
            if (f <= 1.0f) {
                return;
            }
        }
        this.currentProgress = f2;
    }

    public void setProgressColors(int i, int i2) {
        this.innerPaint.setColor(i);
        this.outerPaint.setColor(i2);
    }
}
