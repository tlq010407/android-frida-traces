package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.R;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ProxyDrawable extends Drawable {
    private boolean connected;
    private float connectedAnimationProgress;
    private Drawable emptyDrawable;
    private Drawable fullDrawable;
    private boolean isEnabled;
    private long lastUpdateTime;
    private Paint outerPaint = new Paint(1);
    private RectF cicleRect = new RectF();
    private int radOffset = 0;
    private int colorKey = -1;

    public ProxyDrawable(Context context) {
        this.emptyDrawable = context.getResources().getDrawable(R.drawable.msg2_proxy_off).mutate();
        this.fullDrawable = context.getResources().getDrawable(R.drawable.msg2_proxy_on).mutate();
        this.outerPaint.setStyle(Paint.Style.STROKE);
        this.outerPaint.setStrokeWidth(AndroidUtilities.dp(1.66f));
        this.outerPaint.setStrokeCap(Paint.Cap.ROUND);
        this.lastUpdateTime = SystemClock.elapsedRealtime();
    }

    private void setBounds(Drawable drawable) {
        android.graphics.Rect bounds = getBounds();
        drawable.setBounds(bounds.centerX() - (drawable.getIntrinsicWidth() / 2), bounds.centerY() - (drawable.getIntrinsicHeight() / 2), bounds.centerX() + (drawable.getIntrinsicWidth() / 2), bounds.centerY() + (drawable.getIntrinsicHeight() / 2));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d3  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.lastUpdateTime;
        this.lastUpdateTime = jElapsedRealtime;
        if (!this.isEnabled) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
        } else if (!this.connected || this.connectedAnimationProgress != 1.0f) {
            setBounds(this.emptyDrawable);
            this.emptyDrawable.draw(canvas);
            Paint paint = this.outerPaint;
            int i = this.colorKey;
            if (i < 0) {
                i = Theme.key_contextProgressOuter2;
            }
            paint.setColor(Theme.getColor(i));
            this.outerPaint.setAlpha((int) ((1.0f - this.connectedAnimationProgress) * 255.0f));
            this.radOffset = (int) (this.radOffset + ((360 * j) / 1000.0f));
            int iWidth = getBounds().width();
            int iHeight = getBounds().height();
            int iDp = AndroidUtilities.dp(4.0f);
            this.cicleRect.set((iWidth / 2) - iDp, (iHeight / 2) - iDp, r0 + iDp + iDp, r1 + iDp + iDp);
            canvas.drawArc(this.cicleRect, this.radOffset - 90, 90.0f, false, this.outerPaint);
            invalidateSelf();
        }
        if (this.isEnabled && (this.connected || this.connectedAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
            this.fullDrawable.setAlpha((int) (this.connectedAnimationProgress * 255.0f));
            setBounds(this.fullDrawable);
            this.fullDrawable.draw(canvas);
        }
        boolean z = this.connected;
        if (z) {
            float f = this.connectedAnimationProgress;
            if (f != 1.0f) {
                float f2 = f + (j / 300.0f);
                this.connectedAnimationProgress = f2;
                if (f2 > 1.0f) {
                    this.connectedAnimationProgress = 1.0f;
                }
            } else {
                if (z) {
                    return;
                }
                float f3 = this.connectedAnimationProgress;
                if (f3 == BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                float f4 = f3 - (j / 300.0f);
                this.connectedAnimationProgress = f4;
                if (f4 < BitmapDescriptorFactory.HUE_RED) {
                    this.connectedAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                }
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.emptyDrawable.setColorFilter(colorFilter);
        this.fullDrawable.setColorFilter(colorFilter);
    }

    public void setColorKey(int i) {
        this.colorKey = i;
    }

    public void setConnected(boolean z, boolean z2, boolean z3) {
        this.isEnabled = z;
        this.connected = z2;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        if (!z3) {
            this.connectedAnimationProgress = this.connected ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidateSelf();
    }
}
