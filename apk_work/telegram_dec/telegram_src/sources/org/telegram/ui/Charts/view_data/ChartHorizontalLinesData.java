package org.telegram.ui.Charts.view_data;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ChannelMonetizationLayout;
import org.telegram.ui.Stars.StarsIntroActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ChartHorizontalLinesData {
    public int alpha;
    public int fixedAlpha = 255;
    private DecimalFormat formatterTON;
    private StaticLayout[] layouts;
    private StaticLayout[] layouts2;
    public long[] values;
    public CharSequence[] valuesStr;
    public CharSequence[] valuesStr2;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ChartHorizontalLinesData(long j, long j2, boolean z, float f, int i, TextPaint textPaint, TextPaint textPaint2) {
        long j3;
        float f2;
        int iMax;
        int i2;
        int i3;
        int iMax2;
        int i4;
        if (!z) {
            long jRound = j > 100 ? round(j) : j;
            double d = jRound;
            Double.isNaN(d);
            long jMax = Math.max(1L, (long) Math.ceil(d / 5.0d));
            if (jRound < 6) {
                iMax2 = (int) Math.max(2L, jRound + 1);
            } else {
                long j4 = jRound / 2;
                if (j4 >= 6) {
                    i3 = 6;
                    this.values = new long[i3];
                    this.valuesStr = new CharSequence[i3];
                    this.layouts = new StaticLayout[i3];
                    if (f > BitmapDescriptorFactory.HUE_RED) {
                        this.valuesStr2 = new CharSequence[i3];
                        this.layouts2 = new StaticLayout[i3];
                    }
                    boolean z2 = ((float) jMax) / f >= 1.0f;
                    i4 = 1;
                    while (i4 < i3) {
                        long j5 = i4 * jMax;
                        this.values[i4] = j5;
                        long j6 = jMax;
                        this.valuesStr[i4] = format(0, textPaint, j5, i);
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            float f3 = this.values[i4] / f;
                            if (z2) {
                                long j7 = (long) f3;
                                if (f3 - j7 < 0.01f || i == 1 || i == 2) {
                                    this.valuesStr2[i4] = format(1, textPaint2, j7, i);
                                } else {
                                    this.valuesStr2[i4] = "";
                                }
                            } else {
                                this.valuesStr2[i4] = format(1, textPaint2, (long) f3, i);
                            }
                        }
                        i4++;
                        jMax = j6;
                    }
                    return;
                }
                iMax2 = (int) (j4 + 1);
                if (jRound % 2 != 0) {
                    iMax2++;
                }
            }
            i3 = iMax2;
            this.values = new long[i3];
            this.valuesStr = new CharSequence[i3];
            this.layouts = new StaticLayout[i3];
            if (f > BitmapDescriptorFactory.HUE_RED) {
            }
            if (((float) jMax) / f >= 1.0f) {
            }
            i4 = 1;
            while (i4 < i3) {
            }
            return;
        }
        long j8 = j - j2;
        if (j8 == 0) {
            j3 = j2 - 1;
            iMax = 3;
        } else {
            if (j8 >= 6) {
                long j9 = j8 / 2;
                if (j9 < 6) {
                    j3 = j2;
                    iMax = (int) (j9 + (j8 % 2) + 1);
                    f2 = 2.0f;
                } else {
                    float f4 = j8 / 5.0f;
                    if (f4 > BitmapDescriptorFactory.HUE_RED) {
                        j3 = j2;
                        f2 = f4;
                        iMax = 6;
                    }
                }
                this.values = new long[iMax];
                this.valuesStr = new CharSequence[iMax];
                this.layouts = new StaticLayout[iMax];
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    this.valuesStr2 = new CharSequence[iMax];
                    this.layouts2 = new StaticLayout[iMax];
                }
                boolean z3 = f2 / f >= 1.0f;
                i2 = 0;
                while (i2 < iMax) {
                    long j10 = j3 + ((long) (i2 * f2));
                    this.values[i2] = j10;
                    int i5 = i2;
                    this.valuesStr[i5] = format(0, textPaint, j10, i);
                    if (f > BitmapDescriptorFactory.HUE_RED) {
                        float f5 = this.values[i5] / f;
                        if (z3) {
                            long j11 = (long) f5;
                            if (f5 - j11 >= 0.01f && i != 1) {
                                if (i != 2) {
                                    this.valuesStr2[i5] = "";
                                }
                            }
                            this.valuesStr2[i5] = format(1, textPaint2, j11, i);
                        } else {
                            this.valuesStr2[i5] = format(1, textPaint2, (long) f5, i);
                        }
                    }
                    i2 = i5 + 1;
                }
            }
            j3 = j2;
            iMax = (int) Math.max(2L, j8 + 1);
        }
        f2 = 1.0f;
        this.values = new long[iMax];
        this.valuesStr = new CharSequence[iMax];
        this.layouts = new StaticLayout[iMax];
        if (f > BitmapDescriptorFactory.HUE_RED) {
        }
        if (f2 / f >= 1.0f) {
        }
        i2 = 0;
        while (i2 < iMax) {
        }
    }

    public static long lookupHeight(long j) {
        if (j > 100) {
            j = round(j);
        }
        return ((long) Math.ceil(j / 5.0f)) * 5;
    }

    private static long round(long j) {
        return ((float) (j / 5)) % 10.0f == BitmapDescriptorFactory.HUE_RED ? j : ((j / 10) + 1) * 10;
    }

    public void drawText(Canvas canvas, int i, int i2, float f, float f2, TextPaint textPaint) {
        StaticLayout staticLayout = (i == 0 ? this.layouts : this.layouts2)[i2];
        if (staticLayout == null) {
            CharSequence charSequence = (i == 0 ? this.valuesStr : this.valuesStr2)[i2];
            StaticLayout[] staticLayoutArr = i == 0 ? this.layouts : this.layouts2;
            staticLayout = new StaticLayout(charSequence, textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            staticLayoutArr[i2] = staticLayout;
        }
        canvas.save();
        canvas.translate(f, f2 + textPaint.ascent());
        staticLayout.draw(canvas);
        canvas.restore();
    }

    public CharSequence format(int i, TextPaint textPaint, long j, int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return AndroidUtilities.formatWholeNumber((int) j, 0);
            }
            if (i == 1) {
                return "≈" + BillingController.getInstance().formatCurrency(j, "USD");
            }
            return StarsIntroActivity.replaceStarsWithPlain("XTR " + LocaleController.formatNumber(j, ' '), 0.65f);
        }
        if (i == 1) {
            return "≈" + BillingController.getInstance().formatCurrency(j, "USD");
        }
        if (this.formatterTON == null) {
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
            decimalFormatSymbols.setDecimalSeparator('.');
            DecimalFormat decimalFormat = new DecimalFormat("#.##", decimalFormatSymbols);
            this.formatterTON = decimalFormat;
            decimalFormat.setMinimumFractionDigits(2);
            this.formatterTON.setMaximumFractionDigits(6);
            this.formatterTON.setGroupingUsed(false);
        }
        this.formatterTON.setMaximumFractionDigits(j <= 1000000000 ? 6 : 2);
        StringBuilder sb = new StringBuilder();
        sb.append("TON ");
        DecimalFormat decimalFormat2 = this.formatterTON;
        double d = j;
        Double.isNaN(d);
        sb.append(decimalFormat2.format(d / 1.0E9d));
        return ChannelMonetizationLayout.replaceTON(sb.toString(), textPaint, 0.8f, -AndroidUtilities.dp(0.66f), false);
    }
}
