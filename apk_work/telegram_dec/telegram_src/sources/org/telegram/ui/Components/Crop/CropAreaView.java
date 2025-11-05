package org.telegram.ui.Components.Crop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.R;
import org.telegram.ui.BubbleActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class CropAreaView extends ViewGroup {
    private Control activeControl;
    private RectF actualRect;
    private Animator animator;
    private Paint bitmapPaint;
    private RectF bottomEdge;
    private RectF bottomLeftCorner;
    private float bottomPadding;
    private RectF bottomRightCorner;
    private Bitmap circleBitmap;
    private Paint dimPaint;
    private boolean dimVisibile;
    private Paint eraserPaint;
    private float frameAlpha;
    private Paint framePaint;
    private boolean frameVisible;
    private boolean freeform;
    private Animator gridAnimator;
    private float gridProgress;
    private GridType gridType;
    private Paint handlePaint;
    private boolean inBubbleMode;
    private AccelerateDecelerateInterpolator interpolator;
    private boolean isDragging;
    private long lastUpdateTime;
    public float left;
    private RectF leftEdge;
    private Paint linePaint;
    private AreaViewListener listener;
    private float lockAspectRatio;
    private float minWidth;
    private float overrideDimAlpha;
    private float overrideFrameAlpha;
    private GridType previousGridType;
    private int previousX;
    private int previousY;
    private RectF rightEdge;
    public float rotate;
    public float scale;
    private Paint shadowPaint;
    private float sidePadding;
    public int size;
    private String subtitle;
    private StaticLayout subtitleLayout;
    TextPaint subtitlePaint;
    private RectF targetRect;
    private RectF tempRect;
    public float top;
    private RectF topEdge;
    private RectF topLeftCorner;
    private float topPadding;
    private RectF topRightCorner;
    public float tx;
    public float ty;

    /* renamed from: org.telegram.ui.Components.Crop.CropAreaView$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control;

        static {
            int[] iArr = new int[Control.values().length];
            $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control = iArr;
            try {
                iArr[Control.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[Control.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    interface AreaViewListener {
        void onAreaChange();

        void onAreaChangeBegan();

        void onAreaChangeEnded();
    }

    private enum Control {
        NONE,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        LEFT,
        BOTTOM,
        RIGHT
    }

    enum GridType {
        NONE,
        MINOR,
        MAJOR
    }

    public CropAreaView(Context context) {
        super(context);
        this.topLeftCorner = new RectF();
        this.topRightCorner = new RectF();
        this.bottomLeftCorner = new RectF();
        this.bottomRightCorner = new RectF();
        this.topEdge = new RectF();
        this.leftEdge = new RectF();
        this.bottomEdge = new RectF();
        this.rightEdge = new RectF();
        this.actualRect = new RectF();
        this.tempRect = new RectF();
        this.overrideDimAlpha = -1.0f;
        this.frameAlpha = 1.0f;
        this.overrideFrameAlpha = -1.0f;
        this.interpolator = new AccelerateDecelerateInterpolator();
        this.freeform = true;
        this.targetRect = new RectF();
        this.rotate = BitmapDescriptorFactory.HUE_RED;
        this.scale = 1.0f;
        this.tx = BitmapDescriptorFactory.HUE_RED;
        this.ty = BitmapDescriptorFactory.HUE_RED;
        this.inBubbleMode = context instanceof BubbleActivity;
        this.frameVisible = true;
        this.dimVisibile = true;
        this.sidePadding = AndroidUtilities.dp(16.0f);
        this.minWidth = AndroidUtilities.dp(32.0f);
        this.gridType = GridType.NONE;
        Paint paint = new Paint();
        this.dimPaint = paint;
        paint.setColor(2130706432);
        Paint paint2 = new Paint();
        this.shadowPaint = paint2;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        this.shadowPaint.setColor(436207616);
        this.shadowPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        Paint paint3 = new Paint();
        this.linePaint = paint3;
        paint3.setStyle(style);
        this.linePaint.setColor(-1);
        this.linePaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        Paint paint4 = new Paint();
        this.handlePaint = paint4;
        paint4.setStyle(style);
        this.handlePaint.setColor(-1);
        Paint paint5 = new Paint();
        this.framePaint = paint5;
        paint5.setStyle(style);
        this.framePaint.setColor(-1291845633);
        Paint paint6 = new Paint(1);
        this.eraserPaint = paint6;
        paint6.setColor(0);
        this.eraserPaint.setStyle(style);
        this.eraserPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint7 = new Paint(2);
        this.bitmapPaint = paint7;
        paint7.setColor(-1);
        setWillNotDraw(false);
    }

    private void constrainRectByHeight(RectF rectF, float f) {
        float fHeight = rectF.height();
        rectF.right = rectF.left + (f * fHeight);
        rectF.bottom = rectF.top + fHeight;
    }

    private void constrainRectByWidth(RectF rectF, float f) {
        float fWidth = rectF.width();
        rectF.right = rectF.left + fWidth;
        rectF.bottom = rectF.top + (fWidth / f);
    }

    private float getGridProgress() {
        return this.gridProgress;
    }

    private void setCropBottom(float f) {
        this.actualRect.bottom = f;
        invalidate();
    }

    private void setCropLeft(float f) {
        this.actualRect.left = f;
        invalidate();
    }

    private void setCropRight(float f) {
        this.actualRect.right = f;
        invalidate();
    }

    private void setCropTop(float f) {
        this.actualRect.top = f;
        invalidate();
    }

    private void setGridProgress(float f) {
        this.gridProgress = f;
        invalidate();
    }

    private void updateSubtitle() {
        StaticLayout staticLayout;
        if (this.subtitle != null) {
            if (this.subtitlePaint == null) {
                TextPaint textPaint = new TextPaint();
                this.subtitlePaint = textPaint;
                textPaint.setColor(ColorUtils.setAlphaComponent(-1, R.styleable.AppCompatTheme_windowFixedHeightMajor));
                this.subtitlePaint.setTextSize(AndroidUtilities.dp(13.0f));
                this.subtitlePaint.setTextAlign(Paint.Align.CENTER);
            }
            staticLayout = new StaticLayout(this.subtitle, this.subtitlePaint, getMeasuredWidth() - AndroidUtilities.dp(120.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            staticLayout = null;
        }
        this.subtitleLayout = staticLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void calculateRect(RectF rectF, float f) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6 = (Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
        float measuredHeight = ((getMeasuredHeight() - this.bottomPadding) - this.topPadding) - f6;
        float measuredWidth = getMeasuredWidth() / measuredHeight;
        float fMin = Math.min(getMeasuredWidth(), measuredHeight) - (this.sidePadding * 2.0f);
        float measuredWidth2 = getMeasuredWidth();
        float f7 = this.sidePadding * 2.0f;
        float f8 = measuredWidth2 - f7;
        float f9 = measuredHeight - f7;
        float measuredWidth3 = getMeasuredWidth() / 2.0f;
        float f10 = f6 + this.topPadding + (measuredHeight / 2.0f);
        if (Math.abs(1.0f - f) < 1.0E-4d) {
            float f11 = fMin / 2.0f;
            f5 = measuredWidth3 - f11;
            f4 = f10 - f11;
            f2 = measuredWidth3 + f11;
            f3 = f10 + f11;
        } else if (f - measuredWidth <= 1.0E-4d) {
            float f12 = f9 * f;
            if (f12 > f8) {
                float f13 = f8 / 2.0f;
                float f14 = measuredWidth3 - f13;
                float f15 = (f8 / f) / 2.0f;
                float f16 = f10 - f15;
                f2 = measuredWidth3 + f13;
                f3 = f10 + f15;
                f4 = f16;
                f5 = f14;
            } else {
                float f17 = f12 / 2.0f;
                f5 = measuredWidth3 - f17;
                float f18 = f9 / 2.0f;
                float f19 = f10 - f18;
                f2 = measuredWidth3 + f17;
                f3 = f10 + f18;
                f4 = f19;
            }
        }
        rectF.set(f5, f4, f2, f3);
    }

    public void fill(final RectF rectF, Animator animator, boolean z) {
        if (!z) {
            setActualRect(rectF);
            return;
        }
        Animator animator2 = this.animator;
        if (animator2 != null) {
            animator2.cancel();
            this.animator = null;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        this.animator = animatorSet;
        animatorSet.setDuration(300L);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "cropLeft", rectF.left);
        objectAnimatorOfFloat.setInterpolator(this.interpolator);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "cropTop", rectF.top);
        objectAnimatorOfFloat2.setInterpolator(this.interpolator);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, "cropRight", rectF.right);
        objectAnimatorOfFloat3.setInterpolator(this.interpolator);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this, "cropBottom", rectF.bottom);
        objectAnimatorOfFloat4.setInterpolator(this.interpolator);
        animator.setInterpolator(this.interpolator);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, animator);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Crop.CropAreaView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                CropAreaView.this.setActualRect(rectF);
                CropAreaView.this.animator = null;
            }
        });
        animatorSet.start();
    }

    public float getAspectRatio() {
        RectF rectF = this.actualRect;
        return (rectF.right - rectF.left) / (rectF.bottom - rectF.top);
    }

    public float getCropBottom() {
        return this.actualRect.bottom;
    }

    public float getCropCenterX() {
        RectF rectF = this.actualRect;
        return (rectF.left + rectF.right) / 2.0f;
    }

    public float getCropCenterY() {
        RectF rectF = this.actualRect;
        return (rectF.top + rectF.bottom) / 2.0f;
    }

    public float getCropHeight() {
        RectF rectF = this.actualRect;
        return rectF.bottom - rectF.top;
    }

    public float getCropLeft() {
        return this.actualRect.left;
    }

    public void getCropRect(RectF rectF) {
        rectF.set(this.actualRect);
    }

    public float getCropRight() {
        return this.actualRect.right;
    }

    public float getCropTop() {
        return this.actualRect.top;
    }

    public float getCropWidth() {
        RectF rectF = this.actualRect;
        return rectF.right - rectF.left;
    }

    public Interpolator getInterpolator() {
        return this.interpolator;
    }

    public float getLockAspectRatio() {
        return this.lockAspectRatio;
    }

    public RectF getTargetRectToFill() {
        return getTargetRectToFill(getAspectRatio());
    }

    public RectF getTargetRectToFill(float f) {
        calculateRect(this.targetRect, f);
        return this.targetRect;
    }

    public boolean isDragging() {
        return this.isDragging;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        float f;
        Paint paint;
        float f2;
        if (this.freeform) {
            int iDp = AndroidUtilities.dp(2.0f / this.scale);
            int iDp2 = AndroidUtilities.dp(16.0f / this.scale);
            int iDp3 = AndroidUtilities.dp(3.0f / this.scale);
            RectF rectF = this.actualRect;
            float f3 = rectF.left;
            int i3 = ((int) f3) - iDp;
            float f4 = rectF.top;
            int i4 = ((int) f4) - iDp;
            int i5 = iDp * 2;
            int i6 = ((int) (rectF.right - f3)) + i5;
            int i7 = i5 + ((int) (rectF.bottom - f4));
            canvas.save();
            canvas.translate(this.tx, this.ty);
            float f5 = this.scale;
            float f6 = (i6 / 2) + i3;
            float f7 = (i7 / 2) + i4;
            canvas.scale(f5, f5, f6, f7);
            canvas.rotate(this.rotate, f6, f7);
            if (this.dimVisibile) {
                int i8 = (-getWidth()) * 4;
                int i9 = (-getHeight()) * 4;
                int width = getWidth() * 4;
                int height = getHeight() * 4;
                float f8 = this.overrideDimAlpha;
                if (f8 >= BitmapDescriptorFactory.HUE_RED) {
                    this.dimPaint.setAlpha((int) (f8 * 255.0f));
                } else {
                    this.dimPaint.setAlpha((int) (255.0f - (this.frameAlpha * 127.0f)));
                }
                float f9 = i8;
                float f10 = width;
                i = i4;
                i2 = i3;
                canvas.drawRect(f9, i9, f10, BitmapDescriptorFactory.HUE_RED, this.dimPaint);
                canvas.drawRect(f9, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getHeight(), this.dimPaint);
                canvas.drawRect(getWidth(), BitmapDescriptorFactory.HUE_RED, f10, getHeight(), this.dimPaint);
                canvas.drawRect(f9, getHeight(), f10, height, this.dimPaint);
                float f11 = i + iDp;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), f11, this.dimPaint);
                float f12 = (i + i7) - iDp;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f11, i2 + iDp, f12, this.dimPaint);
                canvas.drawRect((i2 + i6) - iDp, f11, getWidth(), f12, this.dimPaint);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f12, getWidth(), getHeight(), this.dimPaint);
            } else {
                i = i4;
                i2 = i3;
            }
            if (!this.frameVisible) {
                return;
            }
            int i10 = iDp3 - iDp;
            int i11 = iDp3 * 2;
            int i12 = i6 - i11;
            int i13 = i7 - i11;
            GridType gridType = this.gridType;
            if (gridType == GridType.NONE) {
                float f13 = this.gridProgress;
                f = BitmapDescriptorFactory.HUE_RED;
                if (f13 > BitmapDescriptorFactory.HUE_RED) {
                    gridType = this.previousGridType;
                }
            } else {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            GridType gridType2 = gridType;
            float f14 = this.overrideFrameAlpha;
            if (f14 >= f) {
                this.shadowPaint.setAlpha((int) (this.gridProgress * 26.0f * f14));
                this.linePaint.setAlpha((int) (this.gridProgress * 178.0f * this.overrideFrameAlpha));
                this.framePaint.setAlpha((int) (this.overrideFrameAlpha * 178.0f));
                paint = this.handlePaint;
                f2 = this.overrideFrameAlpha;
            } else {
                this.shadowPaint.setAlpha((int) (this.gridProgress * 26.0f * this.frameAlpha));
                this.linePaint.setAlpha((int) (this.gridProgress * 178.0f * this.frameAlpha));
                this.framePaint.setAlpha((int) (this.frameAlpha * 178.0f));
                paint = this.handlePaint;
                f2 = this.frameAlpha;
            }
            paint.setAlpha((int) (f2 * 255.0f));
            float f15 = i2 + i10;
            float f16 = i + i10;
            int i14 = i2 + i6;
            float f17 = i14 - i10;
            canvas.drawRect(f15, f16, f17, r1 + iDp, this.framePaint);
            int i15 = i7 + i;
            float f18 = i15 - i10;
            canvas.drawRect(f15, f16, r5 + iDp, f18, this.framePaint);
            canvas.drawRect(f15, r10 - iDp, f17, f18, this.framePaint);
            canvas.drawRect(r8 - iDp, f16, f17, f18, this.framePaint);
            int i16 = 0;
            while (true) {
                int i17 = 3;
                if (i16 >= 3) {
                    break;
                }
                if (gridType2 == GridType.MINOR) {
                    int i18 = 1;
                    while (i18 < 4) {
                        if (i16 != 2 || i18 != i17) {
                            int i19 = i2 + iDp3;
                            int i20 = i12 / 3;
                            float f19 = ((i20 / 3) * i18) + i19 + (i20 * i16);
                            int i21 = i + iDp3;
                            float f20 = i21;
                            float f21 = i21 + i13;
                            canvas.drawLine(f19, f20, f19, f21, this.shadowPaint);
                            canvas.drawLine(f19, f20, f19, f21, this.linePaint);
                            int i22 = i13 / 3;
                            float f22 = i19;
                            float f23 = i21 + ((i22 / 3) * i18) + (i22 * i16);
                            float f24 = i19 + i12;
                            canvas.drawLine(f22, f23, f24, f23, this.shadowPaint);
                            canvas.drawLine(f22, f23, f24, f23, this.linePaint);
                        }
                        i18++;
                        i17 = 3;
                    }
                } else if (gridType2 == GridType.MAJOR && i16 > 0) {
                    int i23 = i2 + iDp3;
                    float f25 = ((i12 / 3) * i16) + i23;
                    int i24 = i + iDp3;
                    float f26 = i24;
                    float f27 = i24 + i13;
                    canvas.drawLine(f25, f26, f25, f27, this.shadowPaint);
                    canvas.drawLine(f25, f26, f25, f27, this.linePaint);
                    int i25 = i24 + ((i13 / 3) * i16);
                    float f28 = i23;
                    float f29 = i25;
                    float f30 = i23 + i12;
                    canvas.drawLine(f28, f29, f30, f29, this.shadowPaint);
                    canvas.drawLine(f28, f29, f30, f29, this.linePaint);
                }
                i16++;
            }
            float f31 = i2;
            float f32 = i;
            float f33 = i2 + iDp2;
            float f34 = i + iDp3;
            canvas.drawRect(f31, f32, f33, f34, this.handlePaint);
            float f35 = i2 + iDp3;
            float f36 = i + iDp2;
            canvas.drawRect(f31, f32, f35, f36, this.handlePaint);
            float f37 = i14 - iDp2;
            float f38 = i14;
            canvas.drawRect(f37, f32, f38, f34, this.handlePaint);
            float f39 = i14 - iDp3;
            canvas.drawRect(f39, f32, f38, f36, this.handlePaint);
            float f40 = i15 - iDp3;
            float f41 = i15;
            canvas.drawRect(f31, f40, f33, f41, this.handlePaint);
            float f42 = i15 - iDp2;
            canvas.drawRect(f31, f42, f35, f41, this.handlePaint);
            canvas.drawRect(f37, f40, f38, f41, this.handlePaint);
            canvas.drawRect(f39, f42, f38, f41, this.handlePaint);
            canvas.restore();
        } else {
            float measuredWidth = getMeasuredWidth() - (this.sidePadding * 2.0f);
            float measuredHeight = (((getMeasuredHeight() - this.bottomPadding) - ((Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight)) - this.topPadding) - (this.sidePadding * 2.0f);
            this.size = (int) Math.min(measuredWidth, measuredHeight);
            Bitmap bitmap = this.circleBitmap;
            if (bitmap == null || bitmap.getWidth() != this.size) {
                Bitmap bitmap2 = this.circleBitmap;
                boolean z = bitmap2 != null;
                if (bitmap2 != null) {
                    bitmap2.recycle();
                    this.circleBitmap = null;
                }
                try {
                    int i26 = this.size;
                    this.circleBitmap = Bitmap.createBitmap(i26, i26, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(this.circleBitmap);
                    float f43 = this.size;
                    canvas2.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f43, f43, this.dimPaint);
                    int i27 = this.size;
                    canvas2.drawCircle(i27 / 2, i27 / 2, i27 / 2, this.eraserPaint);
                    canvas2.setBitmap(null);
                    if (!z) {
                        this.frameAlpha = BitmapDescriptorFactory.HUE_RED;
                        this.lastUpdateTime = SystemClock.elapsedRealtime();
                    }
                } catch (Throwable unused) {
                }
            }
            if (this.circleBitmap != null) {
                this.bitmapPaint.setAlpha((int) (this.frameAlpha * 255.0f));
                this.dimPaint.setAlpha((int) (this.frameAlpha * 127.0f));
                float f44 = this.sidePadding;
                float f45 = this.size;
                this.left = ((measuredWidth - f45) / 2.0f) + f44;
                float f46 = f44 + ((measuredHeight - f45) / 2.0f) + ((Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight);
                this.top = f46;
                float f47 = f46 + f45;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), (int) this.top, this.dimPaint);
                float f48 = (int) f47;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (int) this.top, (int) this.left, f48, this.dimPaint);
                canvas.drawRect((int) (r1 + f45), (int) this.top, getWidth(), f48, this.dimPaint);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f48, getWidth(), getHeight(), this.dimPaint);
                canvas.drawBitmap(this.circleBitmap, (int) this.left, (int) this.top, this.bitmapPaint);
                if (getMeasuredHeight() > getMeasuredWidth() && this.subtitleLayout != null) {
                    canvas.save();
                    canvas.translate(getMeasuredWidth() / 2.0f, f47 + AndroidUtilities.dp(16.0f));
                    this.subtitleLayout.draw(canvas);
                    canvas.restore();
                }
            }
        }
        if (this.frameAlpha < 1.0f) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.lastUpdateTime;
            if (j > 17) {
                j = 17;
            }
            this.lastUpdateTime = jElapsedRealtime;
            float f49 = this.frameAlpha + (j / 180.0f);
            this.frameAlpha = f49;
            if (f49 > 1.0f) {
                this.frameAlpha = 1.0f;
            }
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.isDragging) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updateSubtitle();
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x011e A[PHI: r0 r8
      0x011e: PHI (r0v48 android.graphics.RectF) = (r0v43 android.graphics.RectF), (r0v47 android.graphics.RectF), (r0v49 android.graphics.RectF) binds: [B:72:0x0147, B:65:0x011c, B:62:0x010e] A[DONT_GENERATE, DONT_INLINE]
      0x011e: PHI (r8v66 float) = (r8v63 float), (r8v65 float), (r8v67 float) binds: [B:72:0x0147, B:65:0x011c, B:62:0x010e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0130 A[PHI: r0 r8
      0x0130: PHI (r0v50 float) = (r0v46 float), (r0v53 float) binds: [B:68:0x012e, B:59:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0130: PHI (r8v68 android.graphics.RectF) = (r8v64 android.graphics.RectF), (r8v69 android.graphics.RectF) binds: [B:68:0x012e, B:59:0x0100] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        RectF rectF;
        float f;
        RectF rectF2;
        float f2;
        Control control;
        int x = (int) (motionEvent.getX() - ((ViewGroup) getParent()).getX());
        int y = (int) (motionEvent.getY() - ((ViewGroup) getParent()).getY());
        float f3 = (Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.freeform) {
                float f4 = x;
                float f5 = y;
                if (this.topLeftCorner.contains(f4, f5)) {
                    control = Control.TOP_LEFT;
                } else if (this.topRightCorner.contains(f4, f5)) {
                    control = Control.TOP_RIGHT;
                } else if (this.bottomLeftCorner.contains(f4, f5)) {
                    control = Control.BOTTOM_LEFT;
                } else if (this.bottomRightCorner.contains(f4, f5)) {
                    control = Control.BOTTOM_RIGHT;
                } else if (this.leftEdge.contains(f4, f5)) {
                    control = Control.LEFT;
                } else if (this.topEdge.contains(f4, f5)) {
                    control = Control.TOP;
                } else if (this.rightEdge.contains(f4, f5)) {
                    control = Control.RIGHT;
                } else if (this.bottomEdge.contains(f4, f5)) {
                    control = Control.BOTTOM;
                }
                this.activeControl = control;
                this.previousX = x;
                this.previousY = y;
                setGridType(GridType.MAJOR, false);
                this.isDragging = true;
                updateStatusShow(true);
                AreaViewListener areaViewListener = this.listener;
                if (areaViewListener != null) {
                    areaViewListener.onAreaChangeBegan();
                }
                return true;
            }
            this.activeControl = Control.NONE;
            return false;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.isDragging = false;
            updateStatusShow(false);
            Control control2 = this.activeControl;
            Control control3 = Control.NONE;
            if (control2 == control3) {
                return false;
            }
            this.activeControl = control3;
            AreaViewListener areaViewListener2 = this.listener;
            if (areaViewListener2 != null) {
                areaViewListener2.onAreaChangeEnded();
            }
            return true;
        }
        if (actionMasked != 2 || this.activeControl == Control.NONE) {
            return false;
        }
        this.tempRect.set(this.actualRect);
        float f6 = x - this.previousX;
        float f7 = y - this.previousY;
        this.previousX = x;
        this.previousY = y;
        boolean z = Math.abs(f6) > Math.abs(f7);
        switch (AnonymousClass3.$SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control[this.activeControl.ordinal()]) {
            case 1:
                RectF rectF3 = this.tempRect;
                rectF3.left += f6;
                rectF3.top += f7;
                if (this.lockAspectRatio > BitmapDescriptorFactory.HUE_RED) {
                    float fWidth = rectF3.width();
                    float fHeight = this.tempRect.height();
                    if (z) {
                        constrainRectByWidth(this.tempRect, this.lockAspectRatio);
                    } else {
                        constrainRectByHeight(this.tempRect, this.lockAspectRatio);
                    }
                    RectF rectF4 = this.tempRect;
                    rectF4.left -= rectF4.width() - fWidth;
                    RectF rectF5 = this.tempRect;
                    rectF5.top -= rectF5.width() - fHeight;
                    break;
                }
                break;
            case 2:
                RectF rectF6 = this.tempRect;
                rectF6.right += f6;
                rectF6.top += f7;
                if (this.lockAspectRatio > BitmapDescriptorFactory.HUE_RED) {
                    float fHeight2 = rectF6.height();
                    RectF rectF7 = this.tempRect;
                    if (z) {
                        constrainRectByWidth(rectF7, this.lockAspectRatio);
                    } else {
                        constrainRectByHeight(rectF7, this.lockAspectRatio);
                    }
                    RectF rectF8 = this.tempRect;
                    rectF8.top -= rectF8.width() - fHeight2;
                    break;
                }
                break;
            case 3:
                RectF rectF9 = this.tempRect;
                rectF9.left += f6;
                rectF9.bottom += f7;
                if (this.lockAspectRatio > BitmapDescriptorFactory.HUE_RED) {
                    float fWidth2 = rectF9.width();
                    RectF rectF10 = this.tempRect;
                    if (z) {
                        constrainRectByWidth(rectF10, this.lockAspectRatio);
                    } else {
                        constrainRectByHeight(rectF10, this.lockAspectRatio);
                    }
                    RectF rectF11 = this.tempRect;
                    rectF11.left -= rectF11.width() - fWidth2;
                    break;
                }
                break;
            case 4:
                rectF = this.tempRect;
                rectF.right += f6;
                rectF.bottom += f7;
                f = this.lockAspectRatio;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    if (!z) {
                        constrainRectByHeight(rectF, f);
                        break;
                    } else {
                        constrainRectByWidth(rectF, f);
                        break;
                    }
                }
                break;
            case 5:
                rectF2 = this.tempRect;
                rectF2.top += f7;
                f2 = this.lockAspectRatio;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    constrainRectByHeight(rectF2, f2);
                    break;
                }
                break;
            case 6:
                rectF = this.tempRect;
                rectF.left += f6;
                f = this.lockAspectRatio;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                }
                break;
            case 7:
                rectF = this.tempRect;
                rectF.right += f6;
                f = this.lockAspectRatio;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                }
                break;
            case 8:
                rectF2 = this.tempRect;
                rectF2.bottom += f7;
                f2 = this.lockAspectRatio;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                }
                break;
        }
        RectF rectF12 = this.tempRect;
        float f8 = rectF12.left;
        float f9 = this.sidePadding;
        if (f8 < f9) {
            float f10 = this.lockAspectRatio;
            if (f10 > BitmapDescriptorFactory.HUE_RED) {
                rectF12.bottom = rectF12.top + ((rectF12.right - f9) / f10);
            }
            rectF12.left = f9;
        } else if (rectF12.right > getWidth() - this.sidePadding) {
            this.tempRect.right = getWidth() - this.sidePadding;
            if (this.lockAspectRatio > BitmapDescriptorFactory.HUE_RED) {
                RectF rectF13 = this.tempRect;
                rectF13.bottom = rectF13.top + (rectF13.width() / this.lockAspectRatio);
            }
        }
        float f11 = f3 + this.topPadding;
        float f12 = this.sidePadding;
        float f13 = f11 + f12;
        float f14 = this.bottomPadding + f12;
        RectF rectF14 = this.tempRect;
        if (rectF14.top < f13) {
            float f15 = this.lockAspectRatio;
            if (f15 > BitmapDescriptorFactory.HUE_RED) {
                rectF14.right = rectF14.left + ((rectF14.bottom - f13) * f15);
            }
            rectF14.top = f13;
        } else if (rectF14.bottom > getHeight() - f14) {
            this.tempRect.bottom = getHeight() - f14;
            if (this.lockAspectRatio > BitmapDescriptorFactory.HUE_RED) {
                RectF rectF15 = this.tempRect;
                rectF15.right = rectF15.left + (rectF15.height() * this.lockAspectRatio);
            }
        }
        float fWidth3 = this.tempRect.width();
        float f16 = this.minWidth;
        if (fWidth3 < f16) {
            RectF rectF16 = this.tempRect;
            rectF16.right = rectF16.left + f16;
        }
        float fHeight3 = this.tempRect.height();
        float f17 = this.minWidth;
        if (fHeight3 < f17) {
            RectF rectF17 = this.tempRect;
            rectF17.bottom = rectF17.top + f17;
        }
        float f18 = this.lockAspectRatio;
        if (f18 > BitmapDescriptorFactory.HUE_RED) {
            if (f18 < 1.0f) {
                float fWidth4 = this.tempRect.width();
                float f19 = this.minWidth;
                if (fWidth4 <= f19) {
                    RectF rectF18 = this.tempRect;
                    rectF18.right = rectF18.left + f19;
                    rectF18.bottom = rectF18.top + (rectF18.width() / this.lockAspectRatio);
                }
            } else {
                float fHeight4 = this.tempRect.height();
                float f20 = this.minWidth;
                if (fHeight4 <= f20) {
                    RectF rectF19 = this.tempRect;
                    rectF19.bottom = rectF19.top + f20;
                    rectF19.right = rectF19.left + (rectF19.height() * this.lockAspectRatio);
                }
            }
        }
        setActualRect(this.tempRect);
        AreaViewListener areaViewListener3 = this.listener;
        if (areaViewListener3 != null) {
            areaViewListener3.onAreaChange();
        }
        return true;
    }

    public void resetAnimator() {
        Animator animator = this.animator;
        if (animator != null) {
            animator.cancel();
            this.animator = null;
        }
    }

    public void setActualRect(float f) {
        calculateRect(this.actualRect, f);
        updateTouchAreas();
        invalidate();
    }

    public void setActualRect(RectF rectF) {
        this.actualRect.set(rectF);
        updateTouchAreas();
        invalidate();
    }

    public void setBitmap(int i, int i2, boolean z, boolean z2) {
        this.freeform = z2;
        float f = z ? i2 / i : i / i2;
        if (!z2) {
            f = 1.0f;
            this.lockAspectRatio = 1.0f;
        }
        setActualRect(f);
    }

    public void setBottomPadding(float f) {
        this.bottomPadding = f;
    }

    public void setDimAlpha(float f) {
        this.overrideDimAlpha = f;
    }

    public void setDimVisibility(boolean z) {
        this.dimVisibile = z;
    }

    public void setFrameAlpha(float f) {
        this.overrideFrameAlpha = f;
    }

    public void setFrameVisibility(boolean z, boolean z2) {
        this.frameVisible = z;
        if (!z) {
            this.frameAlpha = 1.0f;
            return;
        }
        this.frameAlpha = z2 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        this.lastUpdateTime = SystemClock.elapsedRealtime();
        invalidate();
    }

    public void setFreeform(boolean z) {
        this.freeform = z;
    }

    public void setGridType(GridType gridType, boolean z) {
        Animator animator = this.gridAnimator;
        if (animator != null && (!z || this.gridType != gridType)) {
            animator.cancel();
            this.gridAnimator = null;
        }
        GridType gridType2 = this.gridType;
        if (gridType2 == gridType) {
            return;
        }
        this.previousGridType = gridType2;
        this.gridType = gridType;
        GridType gridType3 = GridType.NONE;
        float f = gridType == gridType3 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        if (!z) {
            this.gridProgress = f;
            invalidate();
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "gridProgress", this.gridProgress, f);
        this.gridAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(200L);
        this.gridAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Crop.CropAreaView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                CropAreaView.this.gridAnimator = null;
            }
        });
        if (gridType == gridType3) {
            this.gridAnimator.setStartDelay(200L);
        }
        this.gridAnimator.start();
    }

    public void setIsVideo(boolean z) {
        this.minWidth = AndroidUtilities.dp(z ? 64.0f : 32.0f);
    }

    public void setListener(AreaViewListener areaViewListener) {
        this.listener = areaViewListener;
    }

    public void setLockedAspectRatio(float f) {
        this.lockAspectRatio = f;
    }

    public void setRotationScaleTranslation(float f, float f2, float f3, float f4) {
        this.rotate = f;
        this.scale = f2;
        this.tx = f3;
        this.ty = f4;
        invalidate();
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
        if (getMeasuredWidth() > 0) {
            updateSubtitle();
        }
    }

    public void setTopPadding(float f) {
        this.topPadding = f;
    }

    public void updateStatusShow(boolean z) {
        try {
            View decorView = ((Activity) getContext()).getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility | 4 : systemUiVisibility & (-5));
        } catch (Exception unused) {
        }
    }

    public void updateTouchAreas() {
        int iDp = AndroidUtilities.dp(16.0f);
        RectF rectF = this.topLeftCorner;
        RectF rectF2 = this.actualRect;
        float f = rectF2.left;
        float f2 = iDp;
        float f3 = rectF2.top;
        rectF.set(f - f2, f3 - f2, f + f2, f3 + f2);
        RectF rectF3 = this.topRightCorner;
        RectF rectF4 = this.actualRect;
        float f4 = rectF4.right;
        float f5 = rectF4.top;
        rectF3.set(f4 - f2, f5 - f2, f4 + f2, f5 + f2);
        RectF rectF5 = this.bottomLeftCorner;
        RectF rectF6 = this.actualRect;
        float f6 = rectF6.left;
        float f7 = rectF6.bottom;
        rectF5.set(f6 - f2, f7 - f2, f6 + f2, f7 + f2);
        RectF rectF7 = this.bottomRightCorner;
        RectF rectF8 = this.actualRect;
        float f8 = rectF8.right;
        float f9 = rectF8.bottom;
        rectF7.set(f8 - f2, f9 - f2, f8 + f2, f9 + f2);
        RectF rectF9 = this.topEdge;
        RectF rectF10 = this.actualRect;
        float f10 = rectF10.left + f2;
        float f11 = rectF10.top;
        rectF9.set(f10, f11 - f2, rectF10.right - f2, f11 + f2);
        RectF rectF11 = this.leftEdge;
        RectF rectF12 = this.actualRect;
        float f12 = rectF12.left;
        rectF11.set(f12 - f2, rectF12.top + f2, f12 + f2, rectF12.bottom - f2);
        RectF rectF13 = this.rightEdge;
        RectF rectF14 = this.actualRect;
        float f13 = rectF14.right;
        rectF13.set(f13 - f2, rectF14.top + f2, f13 + f2, rectF14.bottom - f2);
        RectF rectF15 = this.bottomEdge;
        RectF rectF16 = this.actualRect;
        float f14 = rectF16.left + f2;
        float f15 = rectF16.bottom;
        rectF15.set(f14, f15 - f2, rectF16.right - f2, f15 + f2);
    }
}
