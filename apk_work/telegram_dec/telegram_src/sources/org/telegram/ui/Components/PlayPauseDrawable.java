package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PlayPauseDrawable extends Drawable {
    private int alpha = 255;
    float duration = 300.0f;
    private long lastUpdateTime;
    private final Paint paint;
    private View parent;
    private boolean pause;
    private float progress;
    private final int size;

    public PlayPauseDrawable(int i) {
        this.size = AndroidUtilities.dp(i);
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c A[PHI: r0
      0x004c: PHI (r0v7 android.view.View) = (r0v6 android.view.View), (r0v16 android.view.View) binds: [B:22:0x004a, B:13:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        View view;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j = jCurrentAnimationTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentAnimationTimeMillis;
        if (j > 18) {
            j = 16;
        }
        boolean z = this.pause;
        if (z) {
            float f = this.progress;
            if (f < 1.0f) {
                float f2 = f + (j / this.duration);
                this.progress = f2;
                if (f2 >= 1.0f) {
                    this.progress = 1.0f;
                } else {
                    view = this.parent;
                    if (view != null) {
                        view.invalidate();
                    }
                    invalidateSelf();
                }
            } else if (!z) {
                float f3 = this.progress;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    float f4 = f3 - (j / this.duration);
                    this.progress = f4;
                    if (f4 <= BitmapDescriptorFactory.HUE_RED) {
                        this.progress = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        view = this.parent;
                        if (view != null) {
                        }
                        invalidateSelf();
                    }
                }
            }
        }
        android.graphics.Rect bounds = getBounds();
        int i = this.alpha;
        if (i == 255) {
            canvas.save();
        } else {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i, 31);
        }
        canvas.translate(bounds.centerX() + (AndroidUtilities.dp(1.0f) * (1.0f - this.progress)), bounds.centerY());
        float f5 = this.progress * 500.0f;
        float interpolation = f5 < 100.0f ? CubicBezierInterpolator.EASE_BOTH.getInterpolation(f5 / 100.0f) * (-5.0f) : f5 < 484.0f ? (CubicBezierInterpolator.EASE_BOTH.getInterpolation((f5 - 100.0f) / 384.0f) * 95.0f) - 5.0f : 90.0f;
        canvas.scale((this.size * 1.45f) / AndroidUtilities.dp(28.0f), (this.size * 1.5f) / AndroidUtilities.dp(28.0f));
        canvas.rotate(interpolation);
        PathAnimator pathAnimator = Theme.playPauseAnimator;
        if (pathAnimator != null) {
            pathAnimator.draw(canvas, this.paint, f5);
            canvas.scale(1.0f, -1.0f);
            Theme.playPauseAnimator.draw(canvas, this.paint, f5);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.size;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.size;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    public void setColor(int i) {
        this.paint.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setParent(View view) {
        this.parent = view;
    }

    public void setPause(boolean z) {
        setPause(z, true);
    }

    public void setPause(boolean z, boolean z2) {
        if (this.pause != z) {
            this.pause = z;
            if (!z2) {
                this.progress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.lastUpdateTime = AnimationUtils.currentAnimationTimeMillis();
            invalidateSelf();
        }
    }
}
