package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_foundStory extends TLObject {
    public TLRPC.Peer peer;
    public TL_stories$StoryItem storyItem;

    public static TL_stories$TL_foundStory TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-394605632 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_foundStory", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_foundStory tL_stories$TL_foundStory = new TL_stories$TL_foundStory();
        tL_stories$TL_foundStory.readParams(inputSerializedData, z);
        return tL_stories$TL_foundStory;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.storyItem = TL_stories$StoryItem.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-394605632);
        this.peer.serializeToStream(outputSerializedData);
        this.storyItem.serializeToStream(outputSerializedData);
    }
}
