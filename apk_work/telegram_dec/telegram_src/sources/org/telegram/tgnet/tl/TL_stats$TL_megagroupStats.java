package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_megagroupStats extends TLObject {
    public TL_stats$StatsGraph actions_graph;
    public TL_stats$StatsGraph growth_graph;
    public TL_stats$StatsGraph languages_graph;
    public TL_stats$TL_statsAbsValueAndPrev members;
    public TL_stats$StatsGraph members_graph;
    public TL_stats$TL_statsAbsValueAndPrev messages;
    public TL_stats$StatsGraph messages_graph;
    public TL_stats$StatsGraph new_members_by_source_graph;
    public TL_stats$TL_statsDateRangeDays period;
    public TL_stats$TL_statsAbsValueAndPrev posters;
    public TL_stats$StatsGraph top_hours_graph;
    public TL_stats$TL_statsAbsValueAndPrev viewers;
    public TL_stats$StatsGraph weekdays_graph;
    public ArrayList top_posters = new ArrayList();
    public ArrayList top_admins = new ArrayList();
    public ArrayList top_inviters = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stats$TL_megagroupStats TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-276825834 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stats_megagroupStats", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_megagroupStats tL_stats$TL_megagroupStats = new TL_stats$TL_megagroupStats();
        tL_stats$TL_megagroupStats.readParams(inputSerializedData, z);
        return tL_stats$TL_megagroupStats;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.period = TL_stats$TL_statsDateRangeDays.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.members = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.messages = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.viewers = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.posters = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.growth_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.members_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.new_members_by_source_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.languages_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.messages_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.actions_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.top_hours_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.weekdays_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.top_posters = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stats$TL_megagroupStats$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stats$TL_statsGroupTopPoster.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.top_admins = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stats$TL_megagroupStats$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stats$TL_statsGroupTopAdmin.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.top_inviters = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stats$TL_megagroupStats$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stats$TL_statsGroupTopInviter.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-276825834);
        this.period.serializeToStream(outputSerializedData);
        this.members.serializeToStream(outputSerializedData);
        this.messages.serializeToStream(outputSerializedData);
        this.viewers.serializeToStream(outputSerializedData);
        this.posters.serializeToStream(outputSerializedData);
        this.growth_graph.serializeToStream(outputSerializedData);
        this.members_graph.serializeToStream(outputSerializedData);
        this.new_members_by_source_graph.serializeToStream(outputSerializedData);
        this.languages_graph.serializeToStream(outputSerializedData);
        this.messages_graph.serializeToStream(outputSerializedData);
        this.actions_graph.serializeToStream(outputSerializedData);
        this.top_hours_graph.serializeToStream(outputSerializedData);
        this.weekdays_graph.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.top_posters);
        Vector.serialize(outputSerializedData, this.top_admins);
        Vector.serialize(outputSerializedData, this.top_inviters);
        Vector.serialize(outputSerializedData, this.users);
    }
}
