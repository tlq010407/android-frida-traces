package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class VideoForwardDrawable extends Drawable {
    private static final int[] playPath = {10, 7, 26, 16, 10, 25};
    private boolean animating;
    private float animationProgress;
    private Path clippingPath;
    private VideoForwardDrawableDelegate delegate;
    private float enterAnimationProgress;
    private boolean isOneShootAnimation;
    private boolean isRound;
    private long lastAnimationTime;
    private int lastClippingPath;
    private boolean leftSide;
    private boolean showing;
    private long time;
    private String timeStr;
    private Paint paint = new Paint(1);
    private TextPaint textPaint = new TextPaint(1);
    private Path path1 = new Path();
    private float playScaleFactor = 1.0f;

    public interface VideoForwardDrawableDelegate {
        void invalidate();

        void onAnimationEnd();
    }

    public VideoForwardDrawable(boolean z) {
        this.isRound = z;
        this.paint.setColor(-1);
        this.textPaint.setColor(-1);
        this.textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.path1.reset();
        int i = 0;
        while (true) {
            if (i >= playPath.length / 2) {
                this.path1.close();
                return;
            }
            Path path = this.path1;
            int i2 = i * 2;
            if (i == 0) {
                path.moveTo(AndroidUtilities.dp(r0[i2]), AndroidUtilities.dp(r0[i2 + 1]));
            } else {
                path.lineTo(AndroidUtilities.dp(r0[i2]), AndroidUtilities.dp(r0[i2 + 1]));
            }
            i++;
        }
    }

    private void invalidate() {
        VideoForwardDrawableDelegate videoForwardDrawableDelegate = this.delegate;
        if (videoForwardDrawableDelegate != null) {
            videoForwardDrawableDelegate.invalidate();
        } else {
            invalidateSelf();
        }
    }

    public void addTime(long j) {
        long j2 = this.time + j;
        this.time = j2;
        this.timeStr = LocaleController.formatPluralString("Seconds", (int) (j2 / 1000), new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x0285  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas) {
        TextPaint textPaint;
        float fMin;
        android.graphics.Rect bounds = getBounds();
        int iWidth = bounds.left + ((bounds.width() - getIntrinsicWidth()) / 2);
        int iHeight = bounds.top + ((bounds.height() - getIntrinsicHeight()) / 2);
        int iWidth2 = this.leftSide ? iWidth - ((bounds.width() / 4) - AndroidUtilities.dp(16.0f)) : iWidth + (bounds.width() / 4) + AndroidUtilities.dp(16.0f);
        canvas.save();
        if (this.isRound) {
            if (this.clippingPath == null) {
                this.clippingPath = new Path();
            }
            int i = bounds.left + (bounds.top << 8) + (bounds.bottom << 16) + (bounds.right << 24);
            if (this.lastClippingPath != i) {
                this.clippingPath.reset();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(bounds);
                this.clippingPath.addOval(rectF, Path.Direction.CCW);
                this.lastClippingPath = i;
            }
            canvas.clipPath(this.clippingPath);
        } else {
            canvas.clipRect(bounds.left, bounds.top, bounds.right, bounds.bottom);
        }
        if (this.isOneShootAnimation) {
            float f = this.animationProgress;
            if (f <= 0.7f) {
                this.paint.setAlpha((int) (Math.min(1.0f, f / 0.3f) * 80.0f));
                textPaint = this.textPaint;
                fMin = Math.min(1.0f, this.animationProgress / 0.3f);
            } else {
                this.paint.setAlpha((int) ((1.0f - ((f - 0.7f) / 0.3f)) * 80.0f));
                textPaint = this.textPaint;
                fMin = 1.0f - ((this.animationProgress - 0.7f) / 0.3f);
            }
        } else {
            this.paint.setAlpha((int) (this.enterAnimationProgress * 80.0f));
            textPaint = this.textPaint;
            fMin = this.enterAnimationProgress;
        }
        textPaint.setAlpha((int) (fMin * 255.0f));
        canvas.drawCircle(((Math.max(bounds.width(), bounds.height()) / 4) * (this.leftSide ? -1 : 1)) + iWidth2, AndroidUtilities.dp(16.0f) + iHeight, Math.max(bounds.width(), bounds.height()) / 2, this.paint);
        canvas.restore();
        String str = this.timeStr;
        if (str != null) {
            canvas.drawText(str, (getIntrinsicWidth() * (this.leftSide ? -1 : 1)) + iWidth2, getIntrinsicHeight() + iHeight + AndroidUtilities.dp(15.0f), this.textPaint);
        }
        canvas.save();
        float f2 = this.playScaleFactor;
        float f3 = iWidth2;
        float f4 = iHeight;
        canvas.scale(f2, f2, f3, (getIntrinsicHeight() / 2.0f) + f4);
        if (this.leftSide) {
            canvas.rotate(180.0f, f3, iHeight + (getIntrinsicHeight() / 2));
        }
        canvas.translate(f3, f4);
        float f5 = this.animationProgress;
        if (f5 <= 0.6f) {
            int iMin = f5 < 0.4f ? Math.min(255, (int) ((f5 * 255.0f) / 0.2f)) : (int) ((1.0f - ((f5 - 0.4f) / 0.2f)) * 255.0f);
            if (!this.isOneShootAnimation) {
                iMin = (int) (iMin * this.enterAnimationProgress);
            }
            this.paint.setAlpha(iMin);
            canvas.drawPath(this.path1, this.paint);
        }
        canvas.translate(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED);
        float f6 = this.animationProgress;
        if (f6 >= 0.2f && f6 <= 0.8f) {
            float f7 = f6 - 0.2f;
            int iMin2 = f7 < 0.4f ? Math.min(255, (int) ((f7 * 255.0f) / 0.2f)) : (int) ((1.0f - ((f7 - 0.4f) / 0.2f)) * 255.0f);
            if (!this.isOneShootAnimation) {
                iMin2 = (int) (iMin2 * this.enterAnimationProgress);
            }
            this.paint.setAlpha(iMin2);
            canvas.drawPath(this.path1, this.paint);
        }
        canvas.translate(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED);
        float f8 = this.animationProgress;
        if (f8 >= 0.4f && f8 <= 1.0f) {
            float f9 = f8 - 0.4f;
            int iMin3 = f9 < 0.4f ? Math.min(255, (int) ((f9 * 255.0f) / 0.2f)) : (int) ((1.0f - ((f9 - 0.4f) / 0.2f)) * 255.0f);
            if (!this.isOneShootAnimation) {
                iMin3 = (int) (iMin3 * this.enterAnimationProgress);
            }
            this.paint.setAlpha(iMin3);
            canvas.drawPath(this.path1, this.paint);
        }
        canvas.restore();
        if (this.animating) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.lastAnimationTime;
            if (j > 17) {
                j = 17;
            }
            this.lastAnimationTime = jCurrentTimeMillis;
            float f10 = this.animationProgress;
            if (f10 < 1.0f) {
                float f11 = f10 + (j / 800.0f);
                this.animationProgress = f11;
                if (this.isOneShootAnimation) {
                    if (f11 >= 1.0f) {
                        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
                        this.animating = false;
                        this.time = 0L;
                        this.timeStr = null;
                        VideoForwardDrawableDelegate videoForwardDrawableDelegate = this.delegate;
                        if (videoForwardDrawableDelegate != null) {
                            videoForwardDrawableDelegate.onAnimationEnd();
                        }
                    }
                } else if (f11 >= 1.0f) {
                    if (this.showing) {
                        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        this.animationProgress = 1.0f;
                    }
                }
                invalidate();
            }
            if (this.isOneShootAnimation) {
                return;
            }
            boolean z = this.showing;
            if (z) {
                float f12 = this.enterAnimationProgress;
                if (f12 != 1.0f) {
                    this.enterAnimationProgress = f12 + 0.10666667f;
                } else if (!z) {
                    float f13 = this.enterAnimationProgress;
                    if (f13 != BitmapDescriptorFactory.HUE_RED) {
                        this.enterAnimationProgress = f13 - 0.10666667f;
                    }
                }
                invalidate();
            }
            float f14 = this.enterAnimationProgress;
            if (f14 < BitmapDescriptorFactory.HUE_RED) {
                this.enterAnimationProgress = BitmapDescriptorFactory.HUE_RED;
            } else if (f14 > 1.0f) {
                this.enterAnimationProgress = 1.0f;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(32.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(32.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return AndroidUtilities.dp(32.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return AndroidUtilities.dp(32.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public boolean isAnimating() {
        return this.animating;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
        this.textPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setDelegate(VideoForwardDrawableDelegate videoForwardDrawableDelegate) {
        this.delegate = videoForwardDrawableDelegate;
    }

    public void setLeftSide(boolean z) {
        boolean z2 = this.leftSide;
        if (z2 == z && this.animationProgress >= 1.0f && this.isOneShootAnimation) {
            return;
        }
        if (z2 != z) {
            this.time = 0L;
            this.timeStr = null;
        }
        this.leftSide = z;
        startAnimation();
    }

    public void setOneShootAnimation(boolean z) {
        if (this.isOneShootAnimation != z) {
            this.isOneShootAnimation = z;
            this.timeStr = null;
            this.time = 0L;
            this.animationProgress = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public void setPlayScaleFactor(float f) {
        this.playScaleFactor = f;
        invalidate();
    }

    public void setShowing(boolean z) {
        this.showing = z;
        invalidate();
    }

    public void setTime(long j) {
        this.time = j;
        this.timeStr = j >= 1000 ? LocaleController.formatPluralString("Seconds", (int) (j / 1000), new Object[0]) : null;
    }

    public void startAnimation() {
        this.animating = true;
        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
        invalidateSelf();
    }
}
