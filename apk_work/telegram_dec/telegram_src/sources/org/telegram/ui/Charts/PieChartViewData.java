package org.telegram.ui.Charts;

import android.animation.Animator;
import org.telegram.ui.Charts.data.ChartData;
import org.telegram.ui.Charts.view_data.StackLinearViewData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class PieChartViewData extends StackLinearViewData {
    Animator animator;
    float drawingPart;
    float selectionA;

    public PieChartViewData(ChartData.Line line) {
        super(line);
    }
}
