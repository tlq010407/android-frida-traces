package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_stories extends TLObject {
    public int count;
    public int flags;
    public ArrayList stories = new ArrayList();
    public ArrayList pinned_to_top = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_stories_stories TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1673780490 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_stories_stories", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_stories_stories tL_stories$TL_stories_stories = new TL_stories$TL_stories_stories();
        tL_stories$TL_stories_stories.readParams(inputSerializedData, z);
        return tL_stories$TL_stories_stories;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        this.stories = Vector.deserialize(inputSerializedData, new TL_stories$TL_peerStories$$ExternalSyntheticLambda0(), z);
        if ((this.flags & 1) != 0) {
            this.pinned_to_top = Vector.deserializeInt(inputSerializedData, z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1673780490);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.stories);
        if ((this.flags & 1) != 0) {
            Vector.serializeInt(outputSerializedData, this.pinned_to_top);
        }
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
