package org.telegram.ui.Charts.view_data;

import android.graphics.Paint;
import org.telegram.ui.Charts.BaseChartView;
import org.telegram.ui.Charts.data.ChartData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class StackLinearViewData extends LineViewData {
    public StackLinearViewData(ChartData.Line line) {
        super(line, false);
        this.paint.setStyle(Paint.Style.FILL);
        if (BaseChartView.USE_LINES) {
            this.paint.setAntiAlias(false);
        }
    }
}
