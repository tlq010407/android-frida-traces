package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.widget.Button;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ProgressButton extends Button {
    private int angle;
    private boolean drawProgress;
    private long lastUpdateTime;
    private float progressAlpha;
    private final Paint progressPaint;
    private final RectF progressRect;

    public ProgressButton(Context context) {
        super(context);
        setAllCaps(false);
        setTextSize(1, 14.0f);
        setTypeface(AndroidUtilities.bold());
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(null);
        }
        ViewHelper.setPadding(this, 8.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED);
        int iDp = AndroidUtilities.dp(60.0f);
        setMinWidth(iDp);
        setMinimumWidth(iDp);
        this.progressRect = new RectF();
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0097 A[PHI: r1
      0x0097: PHI (r1v1 float) = (r1v0 float), (r1v2 float) binds: [B:18:0x00a7, B:13:0x0095] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean z = this.drawProgress;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z || this.progressAlpha != BitmapDescriptorFactory.HUE_RED) {
            this.progressRect.set(getMeasuredWidth() - AndroidUtilities.dp(11.0f), AndroidUtilities.dp(3.0f), r0 + AndroidUtilities.dp(8.0f), AndroidUtilities.dp(11.0f));
            this.progressPaint.setAlpha(Math.min(255, (int) (this.progressAlpha * 255.0f)));
            canvas.drawArc(this.progressRect, this.angle, 220.0f, false, this.progressPaint);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(this.lastUpdateTime - System.currentTimeMillis()) < 1000) {
                long j = jCurrentTimeMillis - this.lastUpdateTime;
                int i = (int) (this.angle + ((360 * j) / 2000.0f));
                this.angle = i - ((i / 360) * 360);
                if (this.drawProgress) {
                    float f2 = this.progressAlpha;
                    f = 1.0f;
                    if (f2 < 1.0f) {
                        float f3 = f2 + (j / 200.0f);
                        this.progressAlpha = f3;
                        if (f3 > 1.0f) {
                            this.progressAlpha = f;
                        }
                    }
                } else {
                    float f4 = this.progressAlpha;
                    if (f4 > BitmapDescriptorFactory.HUE_RED) {
                        float f5 = f4 - (j / 200.0f);
                        this.progressAlpha = f5;
                        if (f5 < BitmapDescriptorFactory.HUE_RED) {
                        }
                    }
                }
            }
            this.lastUpdateTime = jCurrentTimeMillis;
            postInvalidateOnAnimation();
        }
    }

    public void setBackgroundRoundRect(int i, int i2) {
        setBackgroundRoundRect(i, i2, 4.0f);
    }

    public void setBackgroundRoundRect(int i, int i2, float f) {
        setBackground(Theme.AdaptiveRipple.filledRect(i, f));
    }

    public void setDrawProgress(boolean z, boolean z2) {
        if (this.drawProgress != z) {
            this.drawProgress = z;
            if (!z2) {
                this.progressAlpha = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.lastUpdateTime = System.currentTimeMillis();
            invalidate();
        }
    }

    public void setProgressColor(int i) {
        this.progressPaint.setColor(i);
    }
}
