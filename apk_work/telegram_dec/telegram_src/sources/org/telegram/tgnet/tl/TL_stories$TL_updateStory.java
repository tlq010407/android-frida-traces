package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_updateStory extends TLRPC.Update {
    public TLRPC.Peer peer;
    public TL_stories$StoryItem story;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.story = TL_stories$StoryItem.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1974712216);
        this.peer.serializeToStream(outputSerializedData);
        this.story.serializeToStream(outputSerializedData);
    }
}
