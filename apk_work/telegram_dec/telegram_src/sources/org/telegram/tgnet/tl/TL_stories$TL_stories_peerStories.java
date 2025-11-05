package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_peerStories extends TLObject {
    public TL_stories$PeerStories stories;
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_stories_peerStories TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-890861720 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stories_peerStories", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_stories_peerStories tL_stories$TL_stories_peerStories = new TL_stories$TL_stories_peerStories();
        tL_stories$TL_stories_peerStories.readParams(inputSerializedData, z);
        return tL_stories$TL_stories_peerStories;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.stories = TL_stories$PeerStories.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-890861720);
        this.stories.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
