package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stats$StatsGraph extends TLObject {
    public float rate;

    public static TL_stats$StatsGraph TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stats$StatsGraph tL_stats$TL_statsGraphAsync = i != -1901828938 ? i != -1092839390 ? i != 1244130093 ? null : new TL_stats$TL_statsGraphAsync() : new TL_stats$TL_statsGraphError() : new TL_stats$TL_statsGraph();
        if (tL_stats$TL_statsGraphAsync == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StatsGraph", Integer.valueOf(i)));
        }
        if (tL_stats$TL_statsGraphAsync != null) {
            tL_stats$TL_statsGraphAsync.readParams(inputSerializedData, z);
        }
        return tL_stats$TL_statsGraphAsync;
    }
}
