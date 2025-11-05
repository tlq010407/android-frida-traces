package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_broadcastStats extends TLObject {
    public static int constructor = 963421692;
    public TL_stats$TL_statsPercentValue enabled_notifications;
    public TL_stats$TL_statsAbsValueAndPrev followers;
    public TL_stats$StatsGraph followers_graph;
    public TL_stats$StatsGraph growth_graph;
    public TL_stats$StatsGraph interactions_graph;
    public TL_stats$StatsGraph iv_interactions_graph;
    public TL_stats$StatsGraph languages_graph;
    public TL_stats$StatsGraph mute_graph;
    public TL_stats$StatsGraph new_followers_by_source_graph;
    public TL_stats$TL_statsDateRangeDays period;
    public TL_stats$StatsGraph reactions_by_emotion_graph;
    public TL_stats$TL_statsAbsValueAndPrev reactions_per_post;
    public TL_stats$TL_statsAbsValueAndPrev reactions_per_story;
    public ArrayList recent_posts_interactions = new ArrayList();
    public TL_stats$TL_statsAbsValueAndPrev shares_per_post;
    public TL_stats$TL_statsAbsValueAndPrev shares_per_story;
    public TL_stats$StatsGraph story_interactions_graph;
    public TL_stats$StatsGraph story_reactions_by_emotion_graph;
    public TL_stats$StatsGraph top_hours_graph;
    public TL_stats$StatsGraph views_by_source_graph;
    public TL_stats$TL_statsAbsValueAndPrev views_per_post;
    public TL_stats$TL_statsAbsValueAndPrev views_per_story;

    public static TL_stats$TL_broadcastStats TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stats_broadcastStats", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_broadcastStats tL_stats$TL_broadcastStats = new TL_stats$TL_broadcastStats();
        tL_stats$TL_broadcastStats.readParams(inputSerializedData, z);
        return tL_stats$TL_broadcastStats;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.period = TL_stats$TL_statsDateRangeDays.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.followers = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.views_per_post = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.shares_per_post = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.reactions_per_post = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.views_per_story = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.shares_per_story = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.reactions_per_story = TL_stats$TL_statsAbsValueAndPrev.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.enabled_notifications = TL_stats$TL_statsPercentValue.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.growth_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.followers_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.mute_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.top_hours_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.interactions_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.iv_interactions_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.views_by_source_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.new_followers_by_source_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.languages_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.reactions_by_emotion_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.story_interactions_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.story_reactions_by_emotion_graph = TL_stats$StatsGraph.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.recent_posts_interactions = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stats$TL_broadcastStats$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stats$PostInteractionCounters.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        this.period.serializeToStream(outputSerializedData);
        this.followers.serializeToStream(outputSerializedData);
        this.views_per_post.serializeToStream(outputSerializedData);
        this.shares_per_post.serializeToStream(outputSerializedData);
        this.reactions_per_post.serializeToStream(outputSerializedData);
        this.views_per_story.serializeToStream(outputSerializedData);
        this.shares_per_story.serializeToStream(outputSerializedData);
        this.reactions_per_story.serializeToStream(outputSerializedData);
        this.enabled_notifications.serializeToStream(outputSerializedData);
        this.growth_graph.serializeToStream(outputSerializedData);
        this.followers_graph.serializeToStream(outputSerializedData);
        this.mute_graph.serializeToStream(outputSerializedData);
        this.top_hours_graph.serializeToStream(outputSerializedData);
        this.interactions_graph.serializeToStream(outputSerializedData);
        this.iv_interactions_graph.serializeToStream(outputSerializedData);
        this.views_by_source_graph.serializeToStream(outputSerializedData);
        this.new_followers_by_source_graph.serializeToStream(outputSerializedData);
        this.languages_graph.serializeToStream(outputSerializedData);
        this.reactions_by_emotion_graph.serializeToStream(outputSerializedData);
        this.story_interactions_graph.serializeToStream(outputSerializedData);
        this.story_reactions_by_emotion_graph.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.recent_posts_interactions);
    }
}
