package org.telegram.ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.data.StackLinearChartData;
import org.telegram.ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.ui.Charts.view_data.LineViewData;
import org.telegram.ui.Charts.view_data.StackLinearViewData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class StackLinearChartView extends BaseChartView {
    private float[] mapPoints;
    private Matrix matrix;
    Path ovalPath;
    boolean[] skipPoints;
    float[] startFromY;

    public StackLinearChartView(Context context) {
        super(context);
        this.matrix = new Matrix();
        this.mapPoints = new float[2];
        this.ovalPath = new Path();
        this.superDraw = true;
        this.useAlphaSignature = true;
        this.drawPointOnSelection = false;
    }

    private int quarterForPoint(float f, float f2) {
        float fCenterX = this.chartArea.centerX();
        float fCenterY = this.chartArea.centerY() + AndroidUtilities.dp(16.0f);
        if (f >= fCenterX && f2 <= fCenterY) {
            return 0;
        }
        if (f < fCenterX || f2 < fCenterY) {
            return (f >= fCenterX || f2 < fCenterY) ? 3 : 2;
        }
        return 1;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public StackLinearViewData createLineViewData(ChartData.Line line) {
        return new StackLinearViewData(line);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0265  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void drawChart(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int i2;
        float f8;
        int i3;
        boolean z;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float degrees;
        float f14;
        int i4;
        float f15;
        float f16;
        Path path;
        float f17;
        int iQuarterForPoint;
        int iQuarterForPoint2;
        Path path2;
        float measuredWidth;
        float measuredHeight;
        boolean z2;
        float f18;
        float f19;
        float f20;
        double dAtan;
        float f21;
        float f22;
        if (this.chartData != null) {
            float f23 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f24 = chartPickerDelegate.pickerEnd;
            float f25 = chartPickerDelegate.pickerStart;
            float f26 = f23 / (f24 - f25);
            float f27 = (f25 * f26) - BaseChartView.HORIZONTAL_PADDING;
            float fCenterX = this.chartArea.centerX();
            float fCenterY = this.chartArea.centerY() + AndroidUtilities.dp(16.0f);
            int i5 = 0;
            for (int i6 = 0; i6 < this.lines.size(); i6++) {
                ((StackLinearViewData) this.lines.get(i6)).chartPath.reset();
                ((StackLinearViewData) this.lines.get(i6)).chartPathPicker.reset();
            }
            canvas.save();
            boolean[] zArr = this.skipPoints;
            if (zArr == null || zArr.length < ((StackLinearChartData) this.chartData).lines.size()) {
                this.skipPoints = new boolean[((StackLinearChartData) this.chartData).lines.size()];
                this.startFromY = new float[((StackLinearChartData) this.chartData).lines.size()];
            }
            int i7 = this.transitionMode;
            if (i7 == 2) {
                float f28 = this.transitionParams.progress / 0.6f;
                if (f28 > 1.0f) {
                    f28 = 1.0f;
                }
                this.ovalPath.reset();
                float fWidth = this.chartArea.width() > this.chartArea.height() ? this.chartArea.width() : this.chartArea.height();
                float fHeight = (this.chartArea.width() > this.chartArea.height() ? this.chartArea.height() : this.chartArea.width()) * 0.45f;
                float f29 = fHeight + (((fWidth - fHeight) / 2.0f) * (1.0f - this.transitionParams.progress));
                RectF rectF = new RectF();
                rectF.set(fCenterX - f29, fCenterY - f29, fCenterX + f29, fCenterY + f29);
                this.ovalPath.addRoundRect(rectF, f29, f29, Path.Direction.CW);
                canvas.clipPath(this.ovalPath);
                f = f28;
                i = 255;
            } else {
                i = i7 == 3 ? (int) (this.transitionParams.progress * 255.0f) : 255;
                f = BitmapDescriptorFactory.HUE_RED;
            }
            float[] fArr = ((StackLinearChartData) this.chartData).xPercentage;
            int i8 = ((int) (BaseChartView.HORIZONTAL_PADDING / (fArr.length < 2 ? 1.0f : fArr[1] * f26))) + 1;
            int iMax = Math.max(0, (this.startXIndex - i8) - 1);
            int iMin = Math.min(((StackLinearChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i8 + 1);
            int i9 = iMax;
            float f30 = BitmapDescriptorFactory.HUE_RED;
            boolean z3 = false;
            float f31 = BitmapDescriptorFactory.HUE_RED;
            while (i9 <= iMin) {
                int i10 = 0;
                float f32 = BitmapDescriptorFactory.HUE_RED;
                int i11 = 0;
                while (i5 < this.lines.size()) {
                    LineViewData lineViewData = (LineViewData) this.lines.get(i5);
                    int i12 = i;
                    if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                        f21 = f30;
                        f22 = f;
                        long j = lineViewData.line.y[i9];
                        if (j > 0) {
                            f32 += j * lineViewData.alpha;
                            i10++;
                        }
                        i11 = i5;
                    } else {
                        f21 = f30;
                        f22 = f;
                    }
                    i5++;
                    i = i12;
                    f = f22;
                    f30 = f21;
                }
                int i13 = i;
                float f33 = f;
                float f34 = BitmapDescriptorFactory.HUE_RED;
                int i14 = 0;
                while (i14 < this.lines.size()) {
                    LineViewData lineViewData2 = (LineViewData) this.lines.get(i14);
                    if (lineViewData2.enabled || lineViewData2.alpha != BitmapDescriptorFactory.HUE_RED) {
                        long[] jArr = lineViewData2.line.y;
                        f2 = f30;
                        if (i10 == 1) {
                            if (jArr[i9] == 0) {
                                f3 = fCenterX;
                                f4 = fCenterY;
                                f5 = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                f4 = fCenterY;
                                f3 = fCenterX;
                                f5 = lineViewData2.alpha;
                            }
                            float[] fArr2 = ((StackLinearChartData) this.chartData).xPercentage;
                            f6 = (fArr2[i9] * f26) - f27;
                            float measuredWidth2 = i9 != iMin ? getMeasuredWidth() : (fArr2[i9 + 1] * f26) - f27;
                            if (f5 != BitmapDescriptorFactory.HUE_RED) {
                                f7 = f26;
                                i2 = i11;
                                if (i14 == i2) {
                                    z3 = true;
                                }
                            } else {
                                f7 = f26;
                                i2 = i11;
                            }
                            f8 = f27;
                            float measuredHeight2 = ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * f5;
                            i3 = i10;
                            float measuredHeight3 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight2) - f34;
                            z = z3;
                            this.startFromY[i14] = measuredHeight3;
                            float measuredHeight4 = getMeasuredHeight() - this.chartBottom;
                            if (i9 != iMin) {
                                f31 = f6;
                            } else if (i9 == iMax) {
                                f2 = f6;
                            }
                            if (this.transitionMode == 2 || i14 == i2) {
                                f9 = f5;
                                f10 = f4;
                                f11 = f34;
                                f12 = f6;
                                f13 = f12;
                                degrees = BitmapDescriptorFactory.HUE_RED;
                            } else {
                                if (f6 < f3) {
                                    TransitionParams transitionParams = this.transitionParams;
                                    f19 = transitionParams.startX[i14];
                                    f20 = transitionParams.startY[i14];
                                } else {
                                    TransitionParams transitionParams2 = this.transitionParams;
                                    f19 = transitionParams2.endX[i14];
                                    f20 = transitionParams2.endY[i14];
                                }
                                float f35 = f3 - f19;
                                float f36 = f4 - f20;
                                float f37 = 1.0f - f33;
                                float f38 = ((((f6 - f19) * f36) / f35) + f20) * f33;
                                float f39 = (measuredHeight3 * f37) + f38;
                                float f40 = (measuredHeight4 * f37) + f38;
                                float f41 = f36 / f35;
                                if (f41 > BitmapDescriptorFactory.HUE_RED) {
                                    f9 = f5;
                                    dAtan = -Math.atan(f41);
                                } else {
                                    f9 = f5;
                                    dAtan = Math.atan(Math.abs(f41));
                                }
                                degrees = ((float) Math.toDegrees(dAtan)) - 90.0f;
                                if (f6 >= f3) {
                                    float[] fArr3 = this.mapPoints;
                                    fArr3[0] = f6;
                                    fArr3[1] = f39;
                                    this.matrix.reset();
                                    f10 = f4;
                                    this.matrix.postRotate(this.transitionParams.progress * degrees, f3, f10);
                                    this.matrix.mapPoints(this.mapPoints);
                                    float[] fArr4 = this.mapPoints;
                                    float f42 = fArr4[0];
                                    float f43 = fArr4[1];
                                    if (f42 < f3) {
                                        f42 = f3;
                                    }
                                    fArr4[0] = f6;
                                    fArr4[1] = f40;
                                    this.matrix.reset();
                                    this.matrix.postRotate(this.transitionParams.progress * degrees, f3, f10);
                                    this.matrix.mapPoints(this.mapPoints);
                                    measuredHeight4 = this.mapPoints[1];
                                    if (f6 < f3) {
                                        f13 = f3;
                                        f12 = f42;
                                        measuredHeight3 = f43;
                                    } else {
                                        f12 = f42;
                                        measuredHeight3 = f43;
                                        f13 = f6;
                                    }
                                    f11 = f34;
                                } else {
                                    f10 = f4;
                                    if (measuredWidth2 >= f3) {
                                        measuredHeight3 = (f39 * f37) + (f10 * f33);
                                        f11 = f34;
                                        measuredHeight4 = measuredHeight3;
                                        f12 = (f6 * f37) + (f3 * f33);
                                        f13 = f12;
                                    } else {
                                        float[] fArr5 = this.mapPoints;
                                        fArr5[0] = f6;
                                        fArr5[1] = f39;
                                        this.matrix.reset();
                                        Matrix matrix = this.matrix;
                                        TransitionParams transitionParams3 = this.transitionParams;
                                        f11 = f34;
                                        float f44 = transitionParams3.progress;
                                        matrix.postRotate((f44 * degrees) + (f44 * transitionParams3.angle[i14]), f3, f10);
                                        this.matrix.mapPoints(this.mapPoints);
                                        float[] fArr6 = this.mapPoints;
                                        float f45 = fArr6[0];
                                        float f46 = fArr6[1];
                                        if (measuredWidth2 >= f3) {
                                            float f47 = this.transitionParams.progress;
                                            fArr6[0] = (f6 * (1.0f - f47)) + (f47 * f3);
                                        } else {
                                            fArr6[0] = f6;
                                        }
                                        fArr6[1] = f40;
                                        this.matrix.reset();
                                        Matrix matrix2 = this.matrix;
                                        TransitionParams transitionParams4 = this.transitionParams;
                                        float f48 = transitionParams4.progress;
                                        matrix2.postRotate((f48 * degrees) + (f48 * transitionParams4.angle[i14]), f3, f10);
                                        this.matrix.mapPoints(this.mapPoints);
                                        float[] fArr7 = this.mapPoints;
                                        float f49 = fArr7[0];
                                        measuredHeight4 = fArr7[1];
                                        f12 = f45;
                                        f13 = f49;
                                        measuredHeight3 = f46;
                                    }
                                }
                            }
                            if (i9 != iMax) {
                                float measuredHeight5 = getMeasuredHeight();
                                i4 = iMax;
                                f14 = f12;
                                if (this.transitionMode != 2 || i14 == i2) {
                                    z2 = false;
                                    f18 = BitmapDescriptorFactory.HUE_RED;
                                } else {
                                    float[] fArr8 = this.mapPoints;
                                    fArr8[0] = BitmapDescriptorFactory.HUE_RED - f3;
                                    fArr8[1] = measuredHeight5;
                                    this.matrix.reset();
                                    Matrix matrix3 = this.matrix;
                                    TransitionParams transitionParams5 = this.transitionParams;
                                    float f50 = transitionParams5.progress;
                                    matrix3.postRotate((degrees * f50) + (f50 * transitionParams5.angle[i14]), f3, f10);
                                    this.matrix.mapPoints(this.mapPoints);
                                    float[] fArr9 = this.mapPoints;
                                    z2 = false;
                                    float f51 = fArr9[0];
                                    measuredHeight5 = fArr9[1];
                                    f18 = f51;
                                }
                                lineViewData2.chartPath.moveTo(f18, measuredHeight5);
                                this.skipPoints[i14] = z2;
                            } else {
                                f14 = f12;
                                i4 = iMax;
                            }
                            TransitionParams transitionParams6 = this.transitionParams;
                            float f52 = transitionParams6 != null ? BitmapDescriptorFactory.HUE_RED : transitionParams6.progress;
                            if (f9 == BitmapDescriptorFactory.HUE_RED || i9 <= 0 || jArr[i9 - 1] != 0 || i9 >= iMin || jArr[i9 + 1] != 0 || this.transitionMode == 2) {
                                if (this.skipPoints[i14]) {
                                    f15 = 1.0f;
                                } else {
                                    if (i14 == i2) {
                                        path = lineViewData2.chartPath;
                                        f15 = 1.0f;
                                        measuredHeight4 *= 1.0f - f52;
                                    } else {
                                        f15 = 1.0f;
                                        path = lineViewData2.chartPath;
                                    }
                                    path.lineTo(f13, measuredHeight4);
                                }
                                if (i14 != i2) {
                                    f16 = f14;
                                    lineViewData2.chartPath.lineTo(f16, (f15 - f52) * measuredHeight3);
                                } else {
                                    f16 = f14;
                                    lineViewData2.chartPath.lineTo(f16, measuredHeight3);
                                }
                                this.skipPoints[i14] = false;
                            } else {
                                if (!this.skipPoints[i14]) {
                                    if (i14 == i2) {
                                        lineViewData2.chartPath.lineTo(f13, measuredHeight4 * (1.0f - f52));
                                    } else {
                                        lineViewData2.chartPath.lineTo(f13, measuredHeight4);
                                    }
                                }
                                this.skipPoints[i14] = true;
                                f16 = f14;
                            }
                            if (i9 != iMin) {
                                float measuredWidth3 = getMeasuredWidth();
                                float measuredHeight6 = getMeasuredHeight();
                                if (this.transitionMode != 2 || i14 == i2) {
                                    lineViewData2.chartPath.lineTo(measuredWidth3, measuredHeight6);
                                } else {
                                    float[] fArr10 = this.mapPoints;
                                    fArr10[0] = measuredWidth3 + f3;
                                    fArr10[1] = measuredHeight6;
                                    this.matrix.reset();
                                    Matrix matrix4 = this.matrix;
                                    TransitionParams transitionParams7 = this.transitionParams;
                                    matrix4.postRotate(transitionParams7.progress * transitionParams7.angle[i14], f3, f10);
                                    this.matrix.mapPoints(this.mapPoints);
                                    float[] fArr11 = this.mapPoints;
                                    float f53 = fArr11[0];
                                    float f54 = fArr11[1];
                                }
                                if (this.transitionMode == 2) {
                                    if (i14 != i2) {
                                        TransitionParams transitionParams8 = this.transitionParams;
                                        float f55 = (f10 - transitionParams8.startY[i14]) / (f3 - transitionParams8.startX[i14]);
                                        float degrees2 = ((float) Math.toDegrees(f55 > BitmapDescriptorFactory.HUE_RED ? -Math.atan(f55) : Math.atan(Math.abs(f55)))) - 90.0f;
                                        TransitionParams transitionParams9 = this.transitionParams;
                                        float f56 = transitionParams9.startX[i14];
                                        float f57 = transitionParams9.startY[i14];
                                        float[] fArr12 = this.mapPoints;
                                        fArr12[0] = f56;
                                        fArr12[1] = f57;
                                        this.matrix.reset();
                                        Matrix matrix5 = this.matrix;
                                        TransitionParams transitionParams10 = this.transitionParams;
                                        float f58 = transitionParams10.progress;
                                        matrix5.postRotate((degrees2 * f58) + (f58 * transitionParams10.angle[i14]), f3, f10);
                                        this.matrix.mapPoints(this.mapPoints);
                                        float[] fArr13 = this.mapPoints;
                                        float f59 = fArr13[0];
                                        float f60 = fArr13[1];
                                        if (Math.abs(f16 - f59) >= 0.001d || ((f60 >= f10 || measuredHeight3 >= f10) && (f60 <= f10 || measuredHeight3 <= f10))) {
                                            iQuarterForPoint = quarterForPoint(f16, measuredHeight3);
                                            iQuarterForPoint2 = quarterForPoint(f59, f60);
                                        } else {
                                            iQuarterForPoint2 = this.transitionParams.angle[i14] == -180.0f ? 0 : 3;
                                            iQuarterForPoint = 0;
                                        }
                                        while (iQuarterForPoint <= iQuarterForPoint2) {
                                            if (iQuarterForPoint == 0) {
                                                path2 = lineViewData2.chartPath;
                                                measuredWidth = getMeasuredWidth();
                                                measuredHeight = BitmapDescriptorFactory.HUE_RED;
                                            } else if (iQuarterForPoint == 1) {
                                                path2 = lineViewData2.chartPath;
                                                measuredWidth = getMeasuredWidth();
                                                measuredHeight = getMeasuredHeight();
                                            } else {
                                                if (iQuarterForPoint == 2) {
                                                    lineViewData2.chartPath.lineTo(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight());
                                                } else {
                                                    lineViewData2.chartPath.lineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                                                }
                                                iQuarterForPoint++;
                                            }
                                            path2.lineTo(measuredWidth, measuredHeight);
                                            iQuarterForPoint++;
                                        }
                                    }
                                }
                                f17 = f11 + measuredHeight2;
                            } else {
                                f17 = f11 + measuredHeight2;
                            }
                        } else {
                            if (f32 != BitmapDescriptorFactory.HUE_RED) {
                                f3 = fCenterX;
                                f4 = fCenterY;
                                f5 = (jArr[i9] * lineViewData2.alpha) / f32;
                            }
                            float[] fArr22 = ((StackLinearChartData) this.chartData).xPercentage;
                            f6 = (fArr22[i9] * f26) - f27;
                            if (i9 != iMin) {
                            }
                            if (f5 != BitmapDescriptorFactory.HUE_RED) {
                            }
                            f8 = f27;
                            float measuredHeight22 = ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT) * f5;
                            i3 = i10;
                            float measuredHeight32 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight22) - f34;
                            z = z3;
                            this.startFromY[i14] = measuredHeight32;
                            float measuredHeight42 = getMeasuredHeight() - this.chartBottom;
                            if (i9 != iMin) {
                            }
                            if (this.transitionMode == 2) {
                                f9 = f5;
                                f10 = f4;
                                f11 = f34;
                                f12 = f6;
                                f13 = f12;
                                degrees = BitmapDescriptorFactory.HUE_RED;
                                if (i9 != iMax) {
                                }
                                TransitionParams transitionParams62 = this.transitionParams;
                                if (transitionParams62 != null) {
                                }
                                if (f9 == BitmapDescriptorFactory.HUE_RED) {
                                    if (this.skipPoints[i14]) {
                                    }
                                    if (i14 != i2) {
                                    }
                                    this.skipPoints[i14] = false;
                                    if (i9 != iMin) {
                                    }
                                }
                            }
                        }
                    } else {
                        f7 = f26;
                        f8 = f27;
                        f17 = f34;
                        f2 = f30;
                        i3 = i10;
                        i4 = iMax;
                        i2 = i11;
                        f3 = fCenterX;
                        z = z3;
                        f10 = fCenterY;
                    }
                    i14++;
                    f34 = f17;
                    fCenterX = f3;
                    fCenterY = f10;
                    z3 = z;
                    f30 = f2;
                    iMax = i4;
                    f27 = f8;
                    i10 = i3;
                    i11 = i2;
                    f26 = f7;
                }
                i9++;
                fCenterY = fCenterY;
                i = i13;
                f = f33;
                f30 = f30;
                f27 = f27;
                i5 = 0;
            }
            int i15 = i;
            canvas.save();
            canvas.clipRect(f30, BaseChartView.SIGNATURE_TEXT_HEIGHT, f31, getMeasuredHeight() - this.chartBottom);
            if (z3) {
                canvas.drawColor(Theme.getColor(Theme.key_statisticChartLineEmpty));
            }
            for (int size = this.lines.size() - 1; size >= 0; size--) {
                LineViewData lineViewData3 = (LineViewData) this.lines.get(size);
                lineViewData3.paint.setAlpha(i15);
                canvas.drawPath(lineViewData3.chartPath, lineViewData3.paint);
                lineViewData3.paint.setAlpha(255);
            }
            canvas.restore();
            canvas.restore();
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        long j;
        LineViewData lineViewData;
        float f;
        float f2;
        int i;
        boolean z;
        long j2;
        if (this.chartData != null) {
            int size = this.lines.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((StackLinearViewData) this.lines.get(i2)).chartPathPicker.reset();
            }
            StackLinearChartData stackLinearChartData = (StackLinearChartData) this.chartData;
            int i3 = stackLinearChartData.simplifiedSize;
            boolean[] zArr = this.skipPoints;
            if (zArr == null || zArr.length < stackLinearChartData.lines.size()) {
                this.skipPoints = new boolean[((StackLinearChartData) this.chartData).lines.size()];
            }
            boolean z2 = false;
            for (int i4 = 0; i4 < i3; i4++) {
                float f3 = BitmapDescriptorFactory.HUE_RED;
                int i5 = 0;
                float f4 = BitmapDescriptorFactory.HUE_RED;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    j = 0;
                    if (i5 >= this.lines.size()) {
                        break;
                    }
                    LineViewData lineViewData2 = (LineViewData) this.lines.get(i5);
                    if (lineViewData2.enabled || lineViewData2.alpha != f3) {
                        long j3 = ((StackLinearChartData) this.chartData).simplifiedY[i5][i4];
                        if (j3 > 0) {
                            f4 += j3 * lineViewData2.alpha;
                            i6++;
                        }
                        i7 = i5;
                    }
                    i5++;
                    f3 = BitmapDescriptorFactory.HUE_RED;
                }
                int i8 = i3 - 1;
                float f5 = (i4 / i8) * this.pickerWidth;
                int i9 = 0;
                float f6 = BitmapDescriptorFactory.HUE_RED;
                while (i9 < this.lines.size()) {
                    LineViewData lineViewData3 = (LineViewData) this.lines.get(i9);
                    if (lineViewData3.enabled || lineViewData3.alpha != BitmapDescriptorFactory.HUE_RED) {
                        if (i6 == 1) {
                            lineViewData = lineViewData3;
                            if (((StackLinearChartData) this.chartData).simplifiedY[i9][i4] != j) {
                                f = lineViewData.alpha;
                                f2 = BitmapDescriptorFactory.HUE_RED;
                            }
                            f2 = BitmapDescriptorFactory.HUE_RED;
                            f = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            lineViewData = lineViewData3;
                            if (f4 != BitmapDescriptorFactory.HUE_RED) {
                                f = (((StackLinearChartData) this.chartData).simplifiedY[i9][i4] * lineViewData.alpha) / f4;
                                f2 = BitmapDescriptorFactory.HUE_RED;
                            }
                            f2 = BitmapDescriptorFactory.HUE_RED;
                            f = BitmapDescriptorFactory.HUE_RED;
                        }
                        if (f == f2 && i9 == i7) {
                            z2 = true;
                        }
                        float f7 = this.pikerHeight;
                        float f8 = f * f7;
                        float f9 = (f7 - f8) - f6;
                        i = i3;
                        if (i4 == 0) {
                            z = z2;
                            lineViewData.chartPathPicker.moveTo(BitmapDescriptorFactory.HUE_RED, f7);
                            this.skipPoints[i9] = false;
                        } else {
                            z = z2;
                        }
                        long[] jArr = ((StackLinearChartData) this.chartData).simplifiedY[i9];
                        j2 = 0;
                        if (jArr[i4] == 0 && i4 > 0 && jArr[i4 - 1] == 0 && i4 < i8 && jArr[i4 + 1] == 0) {
                            if (!this.skipPoints[i9]) {
                                lineViewData.chartPathPicker.lineTo(f5, this.pikerHeight);
                            }
                            this.skipPoints[i9] = true;
                        } else {
                            if (this.skipPoints[i9]) {
                                lineViewData.chartPathPicker.lineTo(f5, this.pikerHeight);
                            }
                            lineViewData.chartPathPicker.lineTo(f5, f9);
                            this.skipPoints[i9] = false;
                        }
                        if (i4 == i8) {
                            lineViewData.chartPathPicker.lineTo(this.pickerWidth, this.pikerHeight);
                        }
                        f6 += f8;
                        z2 = z;
                    } else {
                        i = i3;
                        j2 = j;
                    }
                    i9++;
                    j = j2;
                    i3 = i;
                }
            }
            if (z2) {
                canvas.drawColor(Theme.getColor(Theme.key_statisticChartLineEmpty));
            }
            for (int size2 = this.lines.size() - 1; size2 >= 0; size2--) {
                LineViewData lineViewData4 = (LineViewData) this.lines.get(size2);
                canvas.drawPath(lineViewData4.chartPathPicker, lineViewData4.paint);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0142  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillTransitionParams(TransitionParams transitionParams) {
        float f;
        ChartData chartData = this.chartData;
        if (chartData == null) {
            return;
        }
        float f2 = this.chartWidth;
        ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
        float f3 = chartPickerDelegate.pickerEnd;
        float f4 = chartPickerDelegate.pickerStart;
        float f5 = f2 / (f3 - f4);
        float f6 = BaseChartView.HORIZONTAL_PADDING;
        float f7 = (f4 * f5) - f6;
        float[] fArr = ((StackLinearChartData) chartData).xPercentage;
        int i = 2;
        int i2 = 1;
        int i3 = ((int) (f6 / (fArr.length < 2 ? 1.0f : fArr[1] * f5))) + 1;
        int iMax = Math.max(0, (this.startXIndex - i3) - 1);
        int iMin = Math.min(((StackLinearChartData) this.chartData).xPercentage.length - 1, this.endXIndex + i3 + 1);
        this.transitionParams.startX = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.startY = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.endX = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.endY = new float[((StackLinearChartData) this.chartData).lines.size()];
        this.transitionParams.angle = new float[((StackLinearChartData) this.chartData).lines.size()];
        int i4 = 0;
        while (i4 < i) {
            int i5 = i4 == i2 ? iMin : iMax;
            float f8 = BitmapDescriptorFactory.HUE_RED;
            float f9 = BitmapDescriptorFactory.HUE_RED;
            int i6 = 0;
            for (int i7 = 0; i7 < this.lines.size(); i7++) {
                LineViewData lineViewData = (LineViewData) this.lines.get(i7);
                if (lineViewData.enabled || lineViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                    long j = lineViewData.line.y[i5];
                    if (j > 0) {
                        f9 += j * lineViewData.alpha;
                        i6++;
                    }
                }
            }
            int i8 = 0;
            int i9 = 0;
            while (i8 < this.lines.size()) {
                LineViewData lineViewData2 = (LineViewData) this.lines.get(i8);
                if (lineViewData2.enabled || lineViewData2.alpha != f8) {
                    long[] jArr = lineViewData2.line.y;
                    if (i6 == 1) {
                        f = jArr[i5] == 0 ? BitmapDescriptorFactory.HUE_RED : lineViewData2.alpha;
                        float f10 = (((StackLinearChartData) this.chartData).xPercentage[i5] * f5) - f7;
                        float measuredHeight = f * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT);
                        float f11 = i9;
                        float measuredHeight2 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight) - f11;
                        i9 = (int) (f11 + measuredHeight);
                        TransitionParams transitionParams2 = this.transitionParams;
                        if (i4 != 0) {
                            transitionParams2.startX[i8] = f10;
                            transitionParams2.startY[i8] = measuredHeight2;
                        } else {
                            transitionParams2.endX[i8] = f10;
                            transitionParams2.endY[i8] = measuredHeight2;
                        }
                    } else {
                        if (f9 != f8) {
                            f = (jArr[i5] * lineViewData2.alpha) / f9;
                        }
                        float f102 = (((StackLinearChartData) this.chartData).xPercentage[i5] * f5) - f7;
                        float measuredHeight3 = f * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT);
                        float f112 = i9;
                        float measuredHeight22 = ((getMeasuredHeight() - this.chartBottom) - measuredHeight3) - f112;
                        i9 = (int) (f112 + measuredHeight3);
                        TransitionParams transitionParams22 = this.transitionParams;
                        if (i4 != 0) {
                        }
                    }
                }
                i8++;
                f8 = BitmapDescriptorFactory.HUE_RED;
            }
            i4++;
            i = 2;
            i2 = 1;
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public long findMaxValue(int i, int i2) {
        return 100L;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    protected float getMinDistance() {
        return 0.1f;
    }

    @Override // org.telegram.ui.Charts.BaseChartView, android.view.View
    protected void onDraw(Canvas canvas) {
        tick();
        drawChart(canvas);
        drawBottomLine(canvas);
        this.tmpN = this.horizontalLines.size();
        int i = 0;
        while (true) {
            this.tmpI = i;
            int i2 = this.tmpI;
            if (i2 >= this.tmpN) {
                drawBottomSignature(canvas);
                drawPicker(canvas);
                drawSelection(canvas);
                super.onDraw(canvas);
                return;
            }
            drawHorizontalLines(canvas, (ChartHorizontalLinesData) this.horizontalLines.get(i2));
            drawSignaturesToHorizontalLines(canvas, (ChartHorizontalLinesData) this.horizontalLines.get(this.tmpI));
            i = this.tmpI + 1;
        }
    }
}
