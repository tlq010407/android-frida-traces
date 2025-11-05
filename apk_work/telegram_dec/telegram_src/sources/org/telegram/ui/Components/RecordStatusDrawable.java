package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class RecordStatusDrawable extends StatusDrawable {
    Paint currentPaint;
    private float progress;
    private boolean isChat = false;
    private long lastUpdateTime = 0;
    private boolean started = false;
    private RectF rect = new RectF();
    int alpha = 255;

    public RecordStatusDrawable(boolean z) {
        if (z) {
            Paint paint = new Paint(1);
            this.currentPaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.currentPaint.setStrokeCap(Paint.Cap.ROUND);
            this.currentPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        }
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 50) {
            j = 50;
        }
        float f = this.progress + (j / 800.0f);
        while (true) {
            this.progress = f;
            float f2 = this.progress;
            if (f2 <= 1.0f) {
                invalidateSelf();
                return;
            }
            f = f2 - 1.0f;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        float f;
        float f2;
        Paint paint = this.currentPaint;
        if (paint == null) {
            paint = Theme.chat_statusRecordPaint;
        }
        if (paint.getStrokeWidth() != AndroidUtilities.dp(2.0f)) {
            paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        }
        canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (getIntrinsicHeight() / 2) + AndroidUtilities.dp(this.isChat ? 1.0f : 2.0f));
        for (int i2 = 0; i2 < 4; i2++) {
            if (i2 == 0) {
                f = this.alpha;
                f2 = this.progress;
            } else if (i2 == 3) {
                f = this.alpha;
                f2 = 1.0f - this.progress;
            } else {
                i = this.alpha;
                paint.setAlpha(i);
                float fDp = (AndroidUtilities.dp(4.0f) * i2) + (AndroidUtilities.dp(4.0f) * this.progress);
                float f3 = -fDp;
                this.rect.set(f3, f3, fDp, fDp);
                canvas.drawArc(this.rect, -15.0f, 30.0f, false, paint);
            }
            i = (int) (f * f2);
            paint.setAlpha(i);
            float fDp2 = (AndroidUtilities.dp(4.0f) * i2) + (AndroidUtilities.dp(4.0f) * this.progress);
            float f32 = -fDp2;
            this.rect.set(f32, f32, fDp2, fDp2);
            canvas.drawArc(this.rect, -15.0f, 30.0f, false, paint);
        }
        canvas.restore();
        if (this.started) {
            update();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(14.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(18.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // org.telegram.ui.Components.StatusDrawable
    public void setColor(int i) {
        Paint paint = this.currentPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // org.telegram.ui.Components.StatusDrawable
    public void setIsChat(boolean z) {
        this.isChat = z;
    }

    @Override // org.telegram.ui.Components.StatusDrawable
    public void start() {
        this.lastUpdateTime = System.currentTimeMillis();
        this.started = true;
        invalidateSelf();
    }

    @Override // org.telegram.ui.Components.StatusDrawable
    public void stop() {
        this.started = false;
    }
}
