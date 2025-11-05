package org.telegram.ui.Charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.view_data.BarViewData;
import org.telegram.ui.Charts.view_data.ChartHorizontalLinesData;
import org.telegram.ui.Charts.view_data.TransitionParams;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class BarChartView extends BaseChartView {
    public BarChartView(Context context) {
        super(context);
        this.superDraw = true;
        this.useAlphaSignature = true;
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    public BarViewData createLineViewData(ChartData.Line line) {
        return new BarViewData(line, this.resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    @Override // org.telegram.ui.Charts.BaseChartView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void drawChart(Canvas canvas) {
        float f;
        float f2;
        int i;
        int i2;
        ChartData chartData = this.chartData;
        if (chartData != null) {
            float f3 = this.chartWidth;
            ChartPickerDelegate chartPickerDelegate = this.pickerDelegate;
            float f4 = chartPickerDelegate.pickerEnd;
            float f5 = chartPickerDelegate.pickerStart;
            float f6 = f3 / (f4 - f5);
            float f7 = (f5 * f6) - BaseChartView.HORIZONTAL_PADDING;
            char c = 1;
            int i3 = this.startXIndex - 1;
            int i4 = 0;
            int i5 = i3 < 0 ? 0 : i3;
            int length = this.endXIndex + 1;
            if (length > ((ChartData.Line) chartData.lines.get(0)).y.length - 1) {
                length = ((ChartData.Line) this.chartData.lines.get(0)).y.length - 1;
            }
            int i6 = length;
            canvas.save();
            float f8 = this.chartStart;
            float f9 = this.chartEnd;
            float measuredHeight = getMeasuredHeight() - this.chartBottom;
            float f10 = BitmapDescriptorFactory.HUE_RED;
            canvas.clipRect(f8, BitmapDescriptorFactory.HUE_RED, f9, measuredHeight);
            canvas.save();
            int i7 = this.transitionMode;
            float f11 = 2.0f;
            int i8 = 2;
            if (i7 == 2) {
                this.postTransition = true;
                this.selectionA = BitmapDescriptorFactory.HUE_RED;
                TransitionParams transitionParams = this.transitionParams;
                float f12 = transitionParams.progress;
                f2 = 1.0f - f12;
                canvas.scale((f12 * 2.0f) + 1.0f, 1.0f, transitionParams.pX, transitionParams.pY);
            } else {
                if (i7 != 1) {
                    f = 1.0f;
                    i = 0;
                    while (i < this.lines.size()) {
                        BarViewData barViewData = (BarViewData) this.lines.get(i);
                        if (barViewData.enabled || barViewData.alpha != f10) {
                            float[] fArr = this.chartData.xPercentage;
                            float f13 = fArr.length < i8 ? 1.0f : fArr[c] * f6;
                            long[] jArr = barViewData.line.y;
                            float f14 = barViewData.alpha;
                            int i9 = i5;
                            float f15 = BitmapDescriptorFactory.HUE_RED;
                            float f16 = BitmapDescriptorFactory.HUE_RED;
                            boolean z = false;
                            while (i9 <= i6) {
                                float f17 = ((f13 / f11) + (this.chartData.xPercentage[i9] * f6)) - f7;
                                long[] jArr2 = jArr;
                                float measuredHeight2 = (getMeasuredHeight() - this.chartBottom) - (((jArr[i9] / this.currentMaxHeight) * f14) * ((getMeasuredHeight() - this.chartBottom) - BaseChartView.SIGNATURE_TEXT_HEIGHT));
                                if (i9 == this.selectedIndex && this.legendShowing) {
                                    f15 = measuredHeight2;
                                    f16 = f17;
                                    z = true;
                                } else {
                                    float[] fArr2 = barViewData.linesPath;
                                    fArr2[i4] = f17;
                                    fArr2[i4 + 1] = measuredHeight2;
                                    int i10 = i4 + 3;
                                    fArr2[i4 + 2] = f17;
                                    i4 += 4;
                                    fArr2[i10] = getMeasuredHeight() - this.chartBottom;
                                }
                                i9++;
                                jArr = jArr2;
                                f11 = 2.0f;
                            }
                            Paint paint = (z || this.postTransition) ? barViewData.unselectedPaint : barViewData.paint;
                            paint.setStrokeWidth(f13);
                            if (z) {
                                barViewData.unselectedPaint.setColor(ColorUtils.blendARGB(barViewData.lineColor, barViewData.blendColor, 1.0f - this.selectionA));
                            }
                            if (this.postTransition) {
                                Paint paint2 = barViewData.unselectedPaint;
                                int i11 = barViewData.lineColor;
                                int i12 = barViewData.blendColor;
                                f10 = BitmapDescriptorFactory.HUE_RED;
                                paint2.setColor(ColorUtils.blendARGB(i11, i12, BitmapDescriptorFactory.HUE_RED));
                            } else {
                                f10 = BitmapDescriptorFactory.HUE_RED;
                            }
                            int i13 = (int) (255.0f * f);
                            paint.setAlpha(i13);
                            canvas.drawLines(barViewData.linesPath, 0, i4, paint);
                            if (z) {
                                barViewData.paint.setStrokeWidth(f13);
                                barViewData.paint.setAlpha(i13);
                                float measuredHeight3 = getMeasuredHeight() - this.chartBottom;
                                Paint paint3 = barViewData.paint;
                                float f18 = f15;
                                i2 = i;
                                canvas.drawLine(f16, f18, f16, measuredHeight3, paint3);
                                barViewData.paint.setAlpha(255);
                                i = i2 + 1;
                                i8 = 2;
                                c = 1;
                                i4 = 0;
                                f11 = 2.0f;
                            } else {
                                i2 = i;
                            }
                        } else {
                            i2 = i;
                        }
                        i = i2 + 1;
                        i8 = 2;
                        c = 1;
                        i4 = 0;
                        f11 = 2.0f;
                    }
                    canvas.restore();
                    canvas.restore();
                }
                TransitionParams transitionParams2 = this.transitionParams;
                f2 = transitionParams2.progress;
                canvas.scale(f2, 1.0f, transitionParams2.pX, transitionParams2.pY);
            }
            f = f2;
            i = 0;
            while (i < this.lines.size()) {
            }
            canvas.restore();
            canvas.restore();
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    protected void drawPickerChart(Canvas canvas) {
        int i;
        int i2;
        int i3;
        long[] jArr;
        float f;
        int measuredHeight = getMeasuredHeight();
        int i4 = BaseChartView.PICKER_PADDING;
        int i5 = measuredHeight - i4;
        int measuredHeight2 = (getMeasuredHeight() - this.pikerHeight) - i4;
        int size = this.lines.size();
        if (this.chartData != null) {
            int i6 = 0;
            while (i6 < size) {
                BarViewData barViewData = (BarViewData) this.lines.get(i6);
                if (barViewData.enabled || barViewData.alpha != BitmapDescriptorFactory.HUE_RED) {
                    barViewData.bottomLinePath.reset();
                    float[] fArr = this.chartData.xPercentage;
                    int length = fArr.length;
                    float f2 = fArr.length < 2 ? 1.0f : fArr[1] * this.pickerWidth;
                    long[] jArr2 = barViewData.line.y;
                    float f3 = barViewData.alpha;
                    int i7 = 0;
                    int i8 = 0;
                    while (i7 < length) {
                        long j = jArr2[i7];
                        if (j < 0) {
                            i2 = size;
                            i3 = length;
                            jArr = jArr2;
                        } else {
                            ChartData chartData = this.chartData;
                            i2 = size;
                            float f4 = chartData.xPercentage[i7] * this.pickerWidth;
                            if (BaseChartView.ANIMATE_PICKER_SIZES) {
                                f = this.pickerMaxHeight;
                                i3 = length;
                                jArr = jArr2;
                            } else {
                                i3 = length;
                                jArr = jArr2;
                                f = chartData.maxValue;
                            }
                            float[] fArr2 = barViewData.linesPath;
                            fArr2[i8] = f4;
                            fArr2[i8 + 1] = (1.0f - ((j / f) * f3)) * (i5 - measuredHeight2);
                            int i9 = i8 + 3;
                            fArr2[i8 + 2] = f4;
                            i8 += 4;
                            fArr2[i9] = getMeasuredHeight() - this.chartBottom;
                        }
                        i7++;
                        length = i3;
                        size = i2;
                        jArr2 = jArr;
                    }
                    i = size;
                    barViewData.paint.setStrokeWidth(f2 + 2.0f);
                    canvas.drawLines(barViewData.linesPath, 0, i8, barViewData.paint);
                } else {
                    i = size;
                }
                i6++;
                size = i;
            }
        }
    }

    @Override // org.telegram.ui.Charts.BaseChartView
    protected void drawSelection(Canvas canvas) {
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
