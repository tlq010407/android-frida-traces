package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_postInteractionCountersStory extends TL_stats$PostInteractionCounters {
    public int forwards;
    public int reactions;
    public int story_id;
    public int views;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.story_id = inputSerializedData.readInt32(z);
        this.views = inputSerializedData.readInt32(z);
        this.forwards = inputSerializedData.readInt32(z);
        this.reactions = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1974989273);
        outputSerializedData.writeInt32(this.story_id);
        outputSerializedData.writeInt32(this.views);
        outputSerializedData.writeInt32(this.forwards);
        outputSerializedData.writeInt32(this.reactions);
    }
}
