package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.BubbleActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PhotoFilterBlurControl extends FrameLayout {
    private static final float BlurInsetProximity = AndroidUtilities.dp(20.0f);
    private static final float BlurViewCenterInset = AndroidUtilities.dp(30.0f);
    private static final float BlurViewRadiusInset = AndroidUtilities.dp(30.0f);
    private final int GestureStateBegan;
    private final int GestureStateCancelled;
    private final int GestureStateChanged;
    private final int GestureStateEnded;
    private final int GestureStateFailed;
    private BlurViewActiveControl activeControl;
    private Size actualAreaSize;
    private float angle;
    private Paint arcPaint;
    private RectF arcRect;
    private Point centerPoint;
    private boolean checkForMoving;
    private boolean checkForZooming;
    private PhotoFilterLinearBlurControlDelegate delegate;
    private float falloff;
    private boolean inBubbleMode;
    private boolean isMoving;
    private boolean isZooming;
    private Paint paint;
    private float pointerScale;
    private float pointerStartX;
    private float pointerStartY;
    private float size;
    private Point startCenterPoint;
    private float startDistance;
    private float startPointerDistance;
    private float startRadius;
    private int type;

    /* renamed from: org.telegram.ui.Components.PhotoFilterBlurControl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl;

        static {
            int[] iArr = new int[BlurViewActiveControl.values().length];
            $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl = iArr;
            try {
                iArr[BlurViewActiveControl.BlurViewActiveControlCenter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl[BlurViewActiveControl.BlurViewActiveControlInnerRadius.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl[BlurViewActiveControl.BlurViewActiveControlOuterRadius.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl[BlurViewActiveControl.BlurViewActiveControlRotation.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum BlurViewActiveControl {
        BlurViewActiveControlNone,
        BlurViewActiveControlCenter,
        BlurViewActiveControlInnerRadius,
        BlurViewActiveControlOuterRadius,
        BlurViewActiveControlWholeArea,
        BlurViewActiveControlRotation
    }

    public interface PhotoFilterLinearBlurControlDelegate {
        void valueChanged(Point point, float f, float f2, float f3);
    }

    public PhotoFilterBlurControl(Context context) {
        super(context);
        this.GestureStateBegan = 1;
        this.GestureStateChanged = 2;
        this.GestureStateEnded = 3;
        this.GestureStateCancelled = 4;
        this.GestureStateFailed = 5;
        this.startCenterPoint = new Point();
        this.actualAreaSize = new Size();
        this.centerPoint = new Point(0.5f, 0.5f);
        this.falloff = 0.15f;
        this.size = 0.35f;
        this.arcRect = new RectF();
        this.pointerScale = 1.0f;
        this.checkForMoving = true;
        this.paint = new Paint(1);
        this.arcPaint = new Paint(1);
        setWillNotDraw(false);
        this.paint.setColor(-1);
        this.arcPaint.setColor(-1);
        this.arcPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.arcPaint.setStyle(Paint.Style.STROKE);
        this.inBubbleMode = context instanceof BubbleActivity;
    }

    private float degreesToRadians(float f) {
        return (f * 3.1415927f) / 180.0f;
    }

    private Point getActualCenterPoint() {
        float width = getWidth();
        float f = this.actualAreaSize.width;
        float f2 = ((width - f) / 2.0f) + (this.centerPoint.x * f);
        int i = (Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
        float height = getHeight();
        Size size = this.actualAreaSize;
        float f3 = size.height;
        float f4 = i + ((height - f3) / 2.0f);
        float f5 = size.width;
        return new Point(f2, (f4 - ((f5 - f3) / 2.0f)) + (this.centerPoint.y * f5));
    }

    private float getActualInnerRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.falloff;
    }

    private float getActualOuterRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.size;
    }

    private float getDistance(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        float x2 = x - motionEvent.getX(1);
        float y2 = y - motionEvent.getY(1);
        return (float) Math.sqrt((x2 * x2) + (y2 * y2));
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0301  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handlePan(int i, MotionEvent motionEvent) {
        Point point;
        float f;
        float f2;
        float f3;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Point actualCenterPoint = getActualCenterPoint();
        float f4 = x - actualCenterPoint.x;
        float f5 = y - actualCenterPoint.y;
        float fSqrt = (float) Math.sqrt((f4 * f4) + (f5 * f5));
        Size size = this.actualAreaSize;
        float fMin = Math.min(size.width, size.height);
        float f6 = this.falloff * fMin;
        float f7 = this.size * fMin;
        double d = f4;
        double dDegreesToRadians = degreesToRadians(this.angle);
        Double.isNaN(dDegreesToRadians);
        double dCos = Math.cos(dDegreesToRadians + 1.5707963267948966d);
        Double.isNaN(d);
        double d2 = d * dCos;
        double d3 = f5;
        double dDegreesToRadians2 = degreesToRadians(this.angle);
        Double.isNaN(dDegreesToRadians2);
        double dSin = Math.sin(dDegreesToRadians2 + 1.5707963267948966d);
        Double.isNaN(d3);
        float fAbs = (float) Math.abs(d2 + (d3 * dSin));
        float f8 = BitmapDescriptorFactory.HUE_RED;
        if (i == 1) {
            this.pointerStartX = motionEvent.getX();
            this.pointerStartY = motionEvent.getY();
            i = Math.abs(f7 - f6) < BlurInsetProximity ? 1 : 0;
            float f9 = i != 0 ? BitmapDescriptorFactory.HUE_RED : BlurViewRadiusInset;
            if (i == 0) {
                f8 = BlurViewRadiusInset;
            }
            int i2 = this.type;
            if (i2 == 0) {
                if (fSqrt < BlurViewCenterInset) {
                    this.activeControl = BlurViewActiveControl.BlurViewActiveControlCenter;
                    this.startCenterPoint = actualCenterPoint;
                } else {
                    float f10 = BlurViewRadiusInset;
                    float f11 = f6 - f10;
                    if (fAbs > f11 && fAbs < f9 + f6) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = fAbs;
                        this.startRadius = f6;
                    } else if (fAbs > f7 - f8 && fAbs < f7 + f10) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = fAbs;
                        this.startRadius = f7;
                    } else if (fAbs <= f11 || fAbs >= f7 + f10) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlRotation;
                    }
                }
            } else if (i2 == 1) {
                if (fSqrt >= BlurViewCenterInset) {
                    float f12 = BlurViewRadiusInset;
                    if (fSqrt > f6 - f12 && fSqrt < f9 + f6) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = fSqrt;
                        this.startRadius = f6;
                    } else if (fSqrt > f7 - f8 && fSqrt < f12 + f7) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = fSqrt;
                        this.startRadius = f7;
                    }
                }
            }
            setSelected(true, true);
            return;
        }
        if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
                return;
            }
            return;
        }
        int i3 = this.type;
        if (i3 == 0) {
            int i4 = AnonymousClass1.$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl[this.activeControl.ordinal()];
            if (i4 == 1) {
                float f13 = x - this.pointerStartX;
                float f14 = y - this.pointerStartY;
                float width = (getWidth() - this.actualAreaSize.width) / 2.0f;
                if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
                    i = AndroidUtilities.statusBarHeight;
                }
                float f15 = i;
                float height = getHeight();
                Size size2 = this.actualAreaSize;
                float f16 = size2.height;
                Rect rect = new Rect(width, f15 + ((height - f16) / 2.0f), size2.width, f16);
                float f17 = rect.x;
                float fMax = Math.max(f17, Math.min(rect.width + f17, this.startCenterPoint.x + f13));
                float f18 = rect.y;
                Point point2 = new Point(fMax, Math.max(f18, Math.min(rect.height + f18, this.startCenterPoint.y + f14)));
                float f19 = point2.x - rect.x;
                Size size3 = this.actualAreaSize;
                float f20 = size3.width;
                point = new Point(f19 / f20, ((point2.y - rect.y) + ((f20 - size3.height) / 2.0f)) / f20);
                this.centerPoint = point;
            } else if (i4 == 2) {
                f = this.startRadius + (fAbs - this.startDistance);
                this.falloff = Math.min(Math.max(0.1f, f / fMin), this.size - 0.02f);
            } else if (i4 == 3) {
                float f21 = fAbs - this.startDistance;
                f2 = this.falloff + 0.02f;
                f3 = this.startRadius + f21;
                this.size = Math.max(f2, f3 / fMin);
            } else if (i4 == 4) {
                float f22 = x - this.pointerStartX;
                float f23 = y - this.pointerStartY;
                boolean z = x > actualCenterPoint.x;
                boolean z2 = y > actualCenterPoint.y;
                boolean z3 = Math.abs(f23) > Math.abs(f22);
                if (z || z2 ? !(!z || z2 ? !z || !z2 ? !z3 ? f22 >= BitmapDescriptorFactory.HUE_RED : f23 >= BitmapDescriptorFactory.HUE_RED : !z3 ? f22 >= BitmapDescriptorFactory.HUE_RED : f23 <= BitmapDescriptorFactory.HUE_RED : !z3 ? f22 <= BitmapDescriptorFactory.HUE_RED : f23 <= BitmapDescriptorFactory.HUE_RED) : !(!z3 ? f22 <= BitmapDescriptorFactory.HUE_RED : f23 >= BitmapDescriptorFactory.HUE_RED)) {
                    i = 1;
                }
                this.angle += ((((float) Math.sqrt((f22 * f22) + (f23 * f23))) * ((i * 2) - 1)) / 3.1415927f) / 1.15f;
                this.pointerStartX = x;
                this.pointerStartY = y;
            }
        } else if (i3 == 1) {
            int i5 = AnonymousClass1.$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl[this.activeControl.ordinal()];
            if (i5 == 1) {
                float f24 = x - this.pointerStartX;
                float f25 = y - this.pointerStartY;
                float width2 = (getWidth() - this.actualAreaSize.width) / 2.0f;
                if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
                    i = AndroidUtilities.statusBarHeight;
                }
                float f26 = i;
                float height2 = getHeight();
                Size size4 = this.actualAreaSize;
                float f27 = size4.height;
                Rect rect2 = new Rect(width2, f26 + ((height2 - f27) / 2.0f), size4.width, f27);
                float f28 = rect2.x;
                float fMax2 = Math.max(f28, Math.min(rect2.width + f28, this.startCenterPoint.x + f24));
                float f29 = rect2.y;
                Point point3 = new Point(fMax2, Math.max(f29, Math.min(rect2.height + f29, this.startCenterPoint.y + f25)));
                float f30 = point3.x - rect2.x;
                Size size5 = this.actualAreaSize;
                float f31 = size5.width;
                point = new Point(f30 / f31, ((point3.y - rect2.y) + ((f31 - size5.height) / 2.0f)) / f31);
                this.centerPoint = point;
            } else if (i5 == 2) {
                f = this.startRadius + (fSqrt - this.startDistance);
                this.falloff = Math.min(Math.max(0.1f, f / fMin), this.size - 0.02f);
            } else if (i5 == 3) {
                float f32 = fSqrt - this.startDistance;
                f2 = this.falloff + 0.02f;
                f3 = this.startRadius + f32;
                this.size = Math.max(f2, f3 / fMin);
            }
        }
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
        }
    }

    private void handlePinch(int i, MotionEvent motionEvent) {
        if (i == 1) {
            this.startPointerDistance = getDistance(motionEvent);
            this.pointerScale = 1.0f;
            this.activeControl = BlurViewActiveControl.BlurViewActiveControlWholeArea;
            setSelected(true, true);
        } else if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
                return;
            }
            return;
        }
        float distance = getDistance(motionEvent);
        float f = this.pointerScale + (((distance - this.startPointerDistance) / AndroidUtilities.density) * 0.01f);
        this.pointerScale = f;
        float fMax = Math.max(0.1f, this.falloff * f);
        this.falloff = fMax;
        this.size = Math.max(fMax + 0.02f, this.size * this.pointerScale);
        this.pointerScale = 1.0f;
        this.startPointerDistance = distance;
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
        }
    }

    private void setSelected(boolean z, boolean z2) {
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Point actualCenterPoint = getActualCenterPoint();
        float actualInnerRadius = getActualInnerRadius();
        float actualOuterRadius = getActualOuterRadius();
        canvas.translate(actualCenterPoint.x, actualCenterPoint.y);
        int i = this.type;
        if (i == 0) {
            canvas.rotate(this.angle);
            float fDp = AndroidUtilities.dp(6.0f);
            float fDp2 = AndroidUtilities.dp(12.0f);
            float fDp3 = AndroidUtilities.dp(1.5f);
            for (int i2 = 0; i2 < 30; i2++) {
                float f = fDp2 + fDp;
                float f2 = i2 * f;
                float f3 = -actualInnerRadius;
                float f4 = f2 + fDp2;
                float f5 = fDp3 - actualInnerRadius;
                canvas.drawRect(f2, f3, f4, f5, this.paint);
                float f6 = ((-r11) * f) - fDp;
                float f7 = f6 - fDp2;
                canvas.drawRect(f7, f3, f6, f5, this.paint);
                float f8 = fDp3 + actualInnerRadius;
                canvas.drawRect(f2, actualInnerRadius, f4, f8, this.paint);
                canvas.drawRect(f7, actualInnerRadius, f6, f8, this.paint);
            }
            float fDp4 = AndroidUtilities.dp(6.0f);
            for (int i3 = 0; i3 < 64; i3++) {
                float f9 = fDp4 + fDp;
                float f10 = i3 * f9;
                float f11 = -actualOuterRadius;
                float f12 = fDp4 + f10;
                float f13 = fDp3 - actualOuterRadius;
                canvas.drawRect(f10, f11, f12, f13, this.paint);
                float f14 = ((-i3) * f9) - fDp;
                float f15 = f14 - fDp4;
                canvas.drawRect(f15, f11, f14, f13, this.paint);
                float f16 = fDp3 + actualOuterRadius;
                canvas.drawRect(f10, actualOuterRadius, f12, f16, this.paint);
                canvas.drawRect(f15, actualOuterRadius, f14, f16, this.paint);
            }
        } else if (i == 1) {
            float f17 = -actualInnerRadius;
            this.arcRect.set(f17, f17, actualInnerRadius, actualInnerRadius);
            for (int i4 = 0; i4 < 22; i4++) {
                canvas.drawArc(this.arcRect, 16.35f * i4, 10.2f, false, this.arcPaint);
            }
            float f18 = -actualOuterRadius;
            this.arcRect.set(f18, f18, actualOuterRadius, actualOuterRadius);
            for (int i5 = 0; i5 < 64; i5++) {
                canvas.drawArc(this.arcRect, 5.62f * i5, 3.6f, false, this.arcPaint);
            }
        }
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(8.0f), this.paint);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0131  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (motionEvent.getPointerCount() != 1) {
                if (this.isMoving) {
                    handlePan(3, motionEvent);
                    this.checkForMoving = true;
                    this.isMoving = false;
                }
                if (motionEvent.getPointerCount() != 2) {
                    handlePinch(3, motionEvent);
                    this.checkForZooming = true;
                    this.isZooming = false;
                } else if (this.checkForZooming && !this.isZooming) {
                    handlePinch(1, motionEvent);
                    this.isZooming = true;
                }
            } else if (this.checkForMoving && !this.isMoving) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Point actualCenterPoint = getActualCenterPoint();
                Point point = new Point(x - actualCenterPoint.x, y - actualCenterPoint.y);
                float f = point.x;
                float f2 = point.y;
                float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
                float actualInnerRadius = getActualInnerRadius();
                float actualOuterRadius = getActualOuterRadius();
                boolean z = Math.abs(actualOuterRadius - actualInnerRadius) < BlurInsetProximity;
                float f3 = BitmapDescriptorFactory.HUE_RED;
                float f4 = z ? BitmapDescriptorFactory.HUE_RED : BlurViewRadiusInset;
                if (!z) {
                    f3 = BlurViewRadiusInset;
                }
                int i = this.type;
                if (i == 0) {
                    double d = point.x;
                    double dDegreesToRadians = degreesToRadians(this.angle);
                    Double.isNaN(dDegreesToRadians);
                    double dCos = Math.cos(dDegreesToRadians + 1.5707963267948966d);
                    Double.isNaN(d);
                    double d2 = d * dCos;
                    double d3 = point.y;
                    double dDegreesToRadians2 = degreesToRadians(this.angle);
                    Double.isNaN(dDegreesToRadians2);
                    double dSin = Math.sin(dDegreesToRadians2 + 1.5707963267948966d);
                    Double.isNaN(d3);
                    float fAbs = (float) Math.abs(d2 + (d3 * dSin));
                    if (fSqrt < BlurViewCenterInset) {
                        this.isMoving = true;
                        this.checkForMoving = false;
                        if (this.isMoving) {
                            handlePan(1, motionEvent);
                        }
                    } else {
                        float f5 = BlurViewRadiusInset;
                        float f6 = actualInnerRadius - f5;
                        if ((fAbs > f6 && fAbs < actualInnerRadius + f4) || ((fAbs > actualOuterRadius - f3 && fAbs < actualOuterRadius + f5) || fAbs <= f6 || fAbs >= actualOuterRadius + f5)) {
                        }
                        this.checkForMoving = false;
                        if (this.isMoving) {
                        }
                    }
                } else {
                    if (i == 1) {
                        if (fSqrt >= BlurViewCenterInset) {
                            float f7 = BlurViewRadiusInset;
                            if ((fSqrt > actualInnerRadius - f7 && fSqrt < actualInnerRadius + f4) || (fSqrt > actualOuterRadius - f3 && fSqrt < actualOuterRadius + f7)) {
                            }
                        }
                    }
                    this.checkForMoving = false;
                    if (this.isMoving) {
                    }
                }
            }
        } else if (actionMasked == 1) {
            if (this.isMoving) {
                handlePan(3, motionEvent);
                this.isMoving = false;
            } else if (this.isZooming) {
                handlePinch(3, motionEvent);
                this.isZooming = false;
            }
            this.checkForMoving = true;
            this.checkForZooming = true;
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                    }
                }
            }
        } else if (this.isMoving) {
            handlePan(2, motionEvent);
        } else if (this.isZooming) {
            handlePinch(2, motionEvent);
        }
        return true;
    }

    public void setActualAreaSize(float f, float f2) {
        Size size = this.actualAreaSize;
        size.width = f;
        size.height = f2;
    }

    public void setDelegate(PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate) {
        this.delegate = photoFilterLinearBlurControlDelegate;
    }

    public void setType(int i) {
        this.type = i;
        invalidate();
    }
}
