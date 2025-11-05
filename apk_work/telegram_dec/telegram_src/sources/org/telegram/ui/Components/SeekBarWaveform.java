package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.SeekBar;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SeekBarWaveform {
    private static Paint paintInner;
    private static Paint paintOuter;
    private Path alphaPath;
    private ArrayList animatedValues;
    private SeekBar.SeekBarDelegate delegate;
    public float explodeProgress;
    public float explosionRate;
    private float[] fromHeights;
    private int fromWidth;
    private int height;
    private float[] heights;
    private int innerColor;
    private boolean isUnread;
    private boolean loading;
    private Paint loadingPaint;
    private int loadingPaintColor1;
    private int loadingPaintColor2;
    private float loadingPaintWidth;
    private long loadingStart;
    private MessageObject messageObject;
    private int outerColor;
    private View parentView;
    private Particles particles;
    private Path path;
    private float progress;
    private boolean selected;
    private int selectedColor;
    private float startX;
    private float[] toHeights;
    private int toWidth;
    private byte[] waveformBytes;
    private int width;
    private int thumbX = 0;
    private int thumbDX = 0;
    private boolean startDraging = false;
    private boolean pressed = false;
    private float alpha = 1.0f;
    private float clearProgress = 1.0f;
    private AnimatedFloat appearFloat = new AnimatedFloat(125, 600, CubicBezierInterpolator.EASE_OUT_QUINT);
    private float waveScaling = 1.0f;
    private AnimatedFloat loadingFloat = new AnimatedFloat(150, CubicBezierInterpolator.DEFAULT);
    private boolean exploding = false;

    public static class Particles {
        private final int count;
        private RectF emitArea;
        private Runnable invalidate;
        private long lastTime;
        private final Paint paint;
        private final ArrayList particles = new ArrayList(50);
        private final ArrayList deadParticles = new ArrayList(50);

        private class Particle {
            float d;
            float t;
            float v;
            float vx;
            float vy;
            float x;
            float y;

            private Particle() {
            }
        }

        public Particles(int i, Runnable runnable) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.count = i;
            this.invalidate = runnable;
            paint.setStrokeWidth(AndroidUtilities.dp(1.33f));
        }

        public void draw(Canvas canvas, float f) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jMin = Math.min(20L, jCurrentTimeMillis - this.lastTime);
            this.lastTime = jCurrentTimeMillis;
            int i = 0;
            while (i < this.particles.size()) {
                Particle particle = (Particle) this.particles.get(i);
                float f2 = jMin;
                float f3 = particle.t - (f2 / particle.d);
                particle.t = f3;
                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                    this.deadParticles.add(particle);
                    this.particles.remove(i);
                    i--;
                } else {
                    float f4 = particle.x;
                    float f5 = particle.vx;
                    float f6 = particle.v;
                    particle.x = f4 + (((f5 * f6) * f2) / 500.0f);
                    float f7 = particle.y;
                    float f8 = particle.vy;
                    particle.y = f7 + (((f6 * f8) * f2) / 500.0f);
                    particle.vy = f8 - ((AndroidUtilities.dp(0.33f) * jMin) / 500.0f);
                }
                i++;
            }
            if (this.emitArea != null) {
                int iMin = Math.min(4, this.count - this.particles.size());
                for (int i2 = 0; i2 < iMin; i2++) {
                    Particle particle2 = this.deadParticles.isEmpty() ? new Particle() : (Particle) this.deadParticles.remove(0);
                    RectF rectF = this.emitArea;
                    particle2.x = rectF.left + (rectF.width() * Utilities.random.nextFloat());
                    RectF rectF2 = this.emitArea;
                    particle2.y = rectF2.top + (rectF2.height() * Utilities.random.nextFloat());
                    double dNextInt = Utilities.random.nextInt(200) - 125;
                    Double.isNaN(dNextInt);
                    double d = dNextInt * 0.017453292519943295d;
                    particle2.vx = ((float) (Math.cos(d) - Math.sin(d))) * 0.8f;
                    particle2.vy = ((float) (Math.sin(d) + Math.cos(d))) - 0.2f;
                    particle2.t = 1.0f;
                    particle2.v = AndroidUtilities.dp((Utilities.random.nextFloat() * 7.0f) + 10.0f);
                    particle2.d = AndroidUtilities.lerp(420, 550, Utilities.random.nextFloat());
                    this.particles.add(particle2);
                }
            }
            for (int i3 = 0; i3 < this.particles.size(); i3++) {
                Particle particle3 = (Particle) this.particles.get(i3);
                this.paint.setAlpha((int) (255.0f * f * particle3.t));
                canvas.drawPoint(particle3.x, particle3.y, this.paint);
            }
            Runnable runnable = this.invalidate;
            if (runnable != null) {
                runnable.run();
            }
        }

        public Particles setColor(int i) {
            this.paint.setColor(i);
            return this;
        }

        public Particles setEmitArea(RectF rectF) {
            this.emitArea = rectF;
            return this;
        }
    }

    public SeekBarWaveform(Context context) {
        if (paintInner == null) {
            paintInner = new Paint(1);
            paintOuter = new Paint(1);
            Paint paint = paintInner;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            paintOuter.setStyle(style);
        }
    }

    private void addBar(Path path, float f, float f2) {
        float fDpf2 = AndroidUtilities.dpf2(2.0f);
        int iDp = (this.height - AndroidUtilities.dp(14.0f)) / 2;
        float f3 = f2 * this.waveScaling;
        RectF rectF = AndroidUtilities.rectTmp;
        float f4 = fDpf2 / 2.0f;
        rectF.set((AndroidUtilities.dpf2(1.0f) + f) - f4, AndroidUtilities.dp(7.0f) + iDp + ((-f3) - f4), f + AndroidUtilities.dpf2(1.0f) + f4, iDp + AndroidUtilities.dp(7.0f) + f3 + f4);
        path.addRoundRect(rectF, fDpf2, fDpf2, Path.Direction.CW);
    }

    private float[] calculateHeights(int i) {
        byte[] bArr = this.waveformBytes;
        if (bArr == null || i <= 0) {
            return null;
        }
        float[] fArr = new float[i];
        int i2 = 5;
        int length = (bArr.length * 8) / 5;
        float f = length / i;
        int i3 = 0;
        int i4 = 0;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        int i5 = 0;
        while (i3 < length) {
            if (i3 == i4) {
                int i6 = i4;
                int i7 = 0;
                while (i4 == i6) {
                    f2 += f;
                    i6 = (int) f2;
                    i7++;
                }
                int i8 = i3 * 5;
                int i9 = i8 / 8;
                int i10 = i8 - (i9 * 8);
                int i11 = 5 - (8 - i10);
                byte bMin = (byte) ((this.waveformBytes[i9] >> i10) & ((2 << (Math.min(i2, r15) - 1)) - 1));
                if (i11 > 0) {
                    int i12 = i9 + 1;
                    byte[] bArr2 = this.waveformBytes;
                    if (i12 < bArr2.length) {
                        bMin = (byte) (((byte) (bMin << i11)) | (bArr2[i12] & ((2 << (4 - r15)) - 1)));
                    }
                }
                int i13 = 0;
                while (i13 < i7) {
                    if (i5 >= i) {
                        return fArr;
                    }
                    fArr[i5] = Math.max(BitmapDescriptorFactory.HUE_RED, (bMin * 7) / 31.0f);
                    i13++;
                    i5++;
                }
                i4 = i6;
            }
            i3++;
            i2 = 5;
        }
        return fArr;
    }

    private void drawFill(Canvas canvas, float f) {
        float fDpf2 = AndroidUtilities.dpf2(2.0f);
        MessageObject messageObject = this.messageObject;
        boolean z = messageObject != null && messageObject.isContentUnread() && !this.messageObject.isOut() && this.progress <= BitmapDescriptorFactory.HUE_RED;
        this.isUnread = z;
        paintInner.setColor(z ? this.outerColor : this.selected ? this.selectedColor : this.innerColor);
        paintOuter.setColor(this.outerColor);
        this.loadingFloat.setParent(this.parentView);
        float f2 = this.loadingFloat.set((!this.loading || MediaController.getInstance().isPlayingMessage(this.messageObject)) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        Paint paint = paintInner;
        paint.setColor(ColorUtils.blendARGB(paint.getColor(), this.innerColor, f2));
        float f3 = 1.0f - f2;
        paintOuter.setAlpha((int) (r5.getAlpha() * f3 * f));
        paintInner.setAlpha((int) (r5.getAlpha() * f));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.width + fDpf2, this.height, paintInner);
        if (f2 < 1.0f) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.progress * (this.width + fDpf2) * f3, this.height, paintOuter);
        }
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            if (this.loadingPaint == null || Math.abs(this.loadingPaintWidth - this.width) > AndroidUtilities.dp(8.0f) || this.loadingPaintColor1 != this.innerColor || this.loadingPaintColor2 != this.outerColor) {
                if (this.loadingPaint == null) {
                    this.loadingPaint = new Paint(1);
                }
                this.loadingPaintColor1 = this.innerColor;
                this.loadingPaintColor2 = this.outerColor;
                Paint paint2 = this.loadingPaint;
                float f4 = this.width;
                this.loadingPaintWidth = f4;
                int i = this.loadingPaintColor1;
                paint2.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, BitmapDescriptorFactory.HUE_RED, new int[]{i, this.loadingPaintColor2, i}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.2f, 0.4f}, Shader.TileMode.CLAMP));
            }
            this.loadingPaint.setAlpha((int) (f2 * 255.0f * f));
            canvas.save();
            float fPow = ((((float) Math.pow((SystemClock.elapsedRealtime() - this.loadingStart) / 270.0f, 0.75d)) % 1.6f) - 0.6f) * this.loadingPaintWidth;
            canvas.translate(fPow, BitmapDescriptorFactory.HUE_RED);
            canvas.drawRect(-fPow, BitmapDescriptorFactory.HUE_RED, (this.width + 5) - fPow, this.height, this.loadingPaint);
            canvas.restore();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(Canvas canvas, View view) {
        int i;
        float f;
        float f2;
        RectF rectF;
        float[] fArr;
        float[] fArr2;
        int i2;
        int i3;
        int length;
        if (this.waveformBytes == null || (i = this.width) == 0 || this.alpha <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float fDpf2 = i / AndroidUtilities.dpf2(3.0f);
        if (fDpf2 <= 0.1f) {
            return;
        }
        float f3 = this.clearProgress;
        if (f3 != 1.0f) {
            float f4 = f3 + 0.10666667f;
            this.clearProgress = f4;
            if (f4 > 1.0f) {
                this.clearProgress = 1.0f;
            } else {
                view.invalidate();
            }
        }
        float f5 = this.appearFloat.set(1.0f);
        Path path = this.path;
        if (path == null) {
            this.path = new Path();
        } else {
            path.reset();
        }
        Path path2 = this.alphaPath;
        if (path2 == null) {
            this.alphaPath = new Path();
        } else {
            path2.reset();
        }
        SeekBar.SeekBarDelegate seekBarDelegate = this.delegate;
        boolean z = seekBarDelegate != null && seekBarDelegate.reverseWaveform();
        float[] fArr3 = this.fromHeights;
        if (fArr3 == null || (fArr2 = this.toHeights) == null) {
            if (this.heights != null) {
                int i4 = 0;
                while (true) {
                    float f6 = i4;
                    if (f6 >= fDpf2 || i4 >= this.heights.length) {
                        break;
                    }
                    float fDpf22 = AndroidUtilities.dpf2(3.0f) * f6;
                    float fClamp = MathUtils.clamp((f5 * fDpf2) - f6, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    float[] fArr4 = this.heights;
                    addBar(this.path, fDpf22, (AndroidUtilities.dpf2(fArr4[z ? (fArr4.length - 1) - i4 : i4]) * fClamp) - (AndroidUtilities.dpf2(1.0f) * (1.0f - fClamp)));
                    i4++;
                }
            }
            f = BitmapDescriptorFactory.HUE_RED;
        } else {
            int i5 = this.width;
            int i6 = this.fromWidth;
            float f7 = (i5 - i6) / (this.toWidth - i6);
            int iMax = Math.max(fArr3.length, fArr2.length);
            int iMin = Math.min(this.fromHeights.length, this.toHeights.length);
            float[] fArr5 = this.fromHeights;
            int length2 = fArr5.length;
            float[] fArr6 = this.toHeights;
            float[] fArr7 = length2 < fArr6.length ? fArr5 : fArr6;
            float[] fArr8 = fArr5.length < fArr6.length ? fArr6 : fArr5;
            if (fArr5.length >= fArr6.length) {
                f7 = 1.0f - f7;
            }
            int i7 = -1;
            f = BitmapDescriptorFactory.HUE_RED;
            int i8 = 0;
            while (i8 < iMax) {
                float f8 = i8;
                int i9 = iMax;
                int iClamp = MathUtils.clamp((int) Math.floor((f8 / iMax) * iMin), 0, iMin - 1);
                if (i7 < iClamp) {
                    float fLerp = AndroidUtilities.lerp(iClamp, f8, f7) * AndroidUtilities.dpf2(3.0f);
                    if (z) {
                        i3 = 1;
                        length = (fArr7.length - 1) - iClamp;
                    } else {
                        i3 = 1;
                        length = iClamp;
                    }
                    addBar(this.path, fLerp, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr7[length], fArr8[z ? (fArr8.length - i3) - i8 : i8], f7)));
                    i7 = iClamp;
                } else {
                    float fLerp2 = AndroidUtilities.lerp(iClamp, f8, f7) * AndroidUtilities.dpf2(3.0f);
                    if (z) {
                        i2 = 1;
                        iClamp = (fArr7.length - 1) - iClamp;
                    } else {
                        i2 = 1;
                    }
                    addBar(this.alphaPath, fLerp2, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr7[iClamp], fArr8[z ? (fArr8.length - i2) - i8 : i8], f7)));
                    f = f7;
                }
                i8++;
                iMax = i9;
            }
        }
        if (this.exploding || this.explosionRate > BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            float fDpf23 = AndroidUtilities.dpf2(3.0f) * fDpf2 * (1.0f - (this.explodeProgress * this.explosionRate));
            float f9 = this.height;
            f2 = BitmapDescriptorFactory.HUE_RED;
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDpf23, f9);
        } else {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f > f2) {
            canvas.save();
            canvas.clipPath(this.alphaPath);
            drawFill(canvas, f * this.alpha);
            canvas.restore();
        }
        canvas.save();
        canvas.clipPath(this.path);
        drawFill(canvas, this.alpha);
        canvas.restore();
        if (this.exploding || this.explosionRate > BitmapDescriptorFactory.HUE_RED) {
            canvas.restore();
            if (this.particles == null) {
                this.particles = new Particles(MediaDataController.MAX_LINKS_COUNT, new Runnable() { // from class: org.telegram.ui.Components.SeekBarWaveform$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                });
            }
            float f10 = this.explodeProgress;
            if (f10 >= 0.99f || (fArr = this.heights) == null) {
                rectF = null;
            } else {
                int i10 = (int) ((1.0f - f10) * fDpf2);
                if (z) {
                    i10 = (int) ((fDpf2 - 1.0f) - i10);
                }
                if (i10 >= 0 && i10 < fArr.length) {
                    float fDpf24 = AndroidUtilities.dpf2(this.heights[i10]) * MathUtils.clamp((f5 * fDpf2) - i10, BitmapDescriptorFactory.HUE_RED, 1.0f);
                    rectF = AndroidUtilities.rectTmp;
                    float fDpf25 = fDpf2 * (1.0f - this.explodeProgress) * AndroidUtilities.dpf2(3.0f);
                    float fDpf26 = AndroidUtilities.dpf2(2.0f);
                    int iDp = (this.height - AndroidUtilities.dp(14.0f)) / 2;
                    float f11 = fDpf24 * this.waveScaling;
                    float f12 = fDpf26 / 2.0f;
                    rectF.set((AndroidUtilities.dpf2(1.0f) + fDpf25) - f12, AndroidUtilities.dp(7.0f) + iDp + ((-f11) - f12), fDpf25 + AndroidUtilities.dpf2(1.0f) + f12, iDp + AndroidUtilities.dp(7.0f) + f11 + f12);
                }
            }
            this.particles.setColor(this.outerColor).setEmitArea(rectF).draw(canvas, this.explosionRate);
        }
    }

    public void explodeAt(float f) {
        this.exploding = true;
        this.explodeProgress = f;
        invalidate();
    }

    public float getProgress() {
        return this.thumbX / this.width;
    }

    public void invalidate() {
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public boolean isDragging() {
        return this.pressed;
    }

    public boolean isStartDraging() {
        return this.startDraging;
    }

    public boolean onTouch(int i, float f, float f2) {
        SeekBar.SeekBarDelegate seekBarDelegate;
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return false;
        }
        if (i == 0) {
            if (BitmapDescriptorFactory.HUE_RED <= f && f <= this.width && f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= this.height) {
                this.startX = f;
                this.pressed = true;
                this.thumbDX = (int) (f - this.thumbX);
                this.startDraging = false;
                this.delegate.onSeekBarPressed();
                return true;
            }
        } else if (i == 1 || i == 3) {
            if (this.pressed) {
                if (i == 1 && (seekBarDelegate = this.delegate) != null) {
                    seekBarDelegate.onSeekBarDrag(this.thumbX / this.width);
                }
                this.pressed = false;
                this.delegate.onSeekBarReleased();
                return true;
            }
        } else if (i == 2 && this.pressed) {
            if (this.startDraging) {
                int i2 = (int) (f - this.thumbDX);
                this.thumbX = i2;
                if (i2 < 0) {
                    this.thumbX = 0;
                } else {
                    int i3 = this.width;
                    if (i2 > i3) {
                        this.thumbX = i3;
                    }
                }
                this.progress = this.thumbX / this.width;
            }
            float f3 = this.startX;
            if (f3 != -1.0f && Math.abs(f - f3) > AndroidUtilities.getPixelsInCM(0.2f, true)) {
                View view = this.parentView;
                if (view != null && view.getParent() != null) {
                    this.parentView.getParent().requestDisallowInterceptTouchEvent(true);
                }
                this.startDraging = true;
                this.startX = -1.0f;
            }
            return true;
        }
        return false;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setColors(int i, int i2, int i3) {
        this.innerColor = i;
        this.outerColor = i2;
        this.selectedColor = i3;
    }

    public void setDelegate(SeekBar.SeekBarDelegate seekBarDelegate) {
        this.delegate = seekBarDelegate;
    }

    public void setExplosionRate(float f) {
        this.explosionRate = f;
        invalidate();
    }

    public void setLoading(boolean z) {
        if (!this.loading && z && this.loadingFloat.get() <= BitmapDescriptorFactory.HUE_RED) {
            this.loadingStart = SystemClock.elapsedRealtime();
        }
        this.loading = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public void setMessageObject(MessageObject messageObject) {
        MessageObject messageObject2;
        if (this.animatedValues != null && (messageObject2 = this.messageObject) != null && messageObject != null && messageObject2.getId() != messageObject.getId()) {
            this.animatedValues.clear();
        }
        this.messageObject = messageObject;
    }

    public void setParentView(View view) {
        this.parentView = view;
        this.loadingFloat.setParent(view);
        this.appearFloat.setParent(view);
    }

    public void setProgress(float f) {
        setProgress(f, false);
    }

    public void setProgress(float f, boolean z) {
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return;
        }
        boolean z2 = this.isUnread;
        this.progress = z2 ? 1.0f : f;
        int i = z2 ? this.width : this.thumbX;
        if (z && i != 0 && f == BitmapDescriptorFactory.HUE_RED) {
            this.clearProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (!z) {
            this.clearProgress = 1.0f;
        }
        int iCeil = (int) Math.ceil(this.width * f);
        this.thumbX = iCeil;
        if (iCeil < 0) {
            this.thumbX = 0;
            return;
        }
        int i2 = this.width;
        if (iCeil > i2) {
            this.thumbX = i2;
        }
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setSent() {
        this.appearFloat.set(BitmapDescriptorFactory.HUE_RED, true);
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public void setSize(int i, int i2) {
        setSize(i, i2, i, i);
    }

    public void setSize(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        float[] fArr = this.heights;
        if (fArr == null || fArr.length != ((int) (i / AndroidUtilities.dpf2(3.0f)))) {
            this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        }
        if (i3 == i4 || (this.fromWidth == i3 && this.toWidth == i4)) {
            if (i3 == i4) {
                this.toHeights = null;
                this.fromHeights = null;
                return;
            }
            return;
        }
        this.fromWidth = i3;
        this.toWidth = i4;
        this.fromHeights = calculateHeights((int) (i3 / AndroidUtilities.dpf2(3.0f)));
        this.toHeights = calculateHeights((int) (this.toWidth / AndroidUtilities.dpf2(3.0f)));
    }

    public void setWaveform(byte[] bArr) {
        this.waveformBytes = bArr;
        this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        if (this.delegate.isSeekBarDragAllowed()) {
            return;
        }
        this.progress = 1.0f;
    }
}
