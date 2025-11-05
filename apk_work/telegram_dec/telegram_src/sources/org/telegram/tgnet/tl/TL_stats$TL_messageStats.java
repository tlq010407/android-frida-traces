package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_messageStats extends TLObject {
    public TL_stats$StatsGraph reactions_by_emotion_graph;
    public TL_stats$StatsGraph views_graph;

    public static TL_stats$TL_messageStats TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (2145983508 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stats_messageStats", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_messageStats tL_stats$TL_messageStats = new TL_stats$TL_messageStats();
        tL_stats$TL_messageStats.readParams(inputSerializedData, z);
        return tL_stats$TL_messageStats;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.views_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.reactions_by_emotion_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2145983508);
        this.views_graph.serializeToStream(outputSerializedData);
        this.reactions_by_emotion_graph.serializeToStream(outputSerializedData);
    }
}
