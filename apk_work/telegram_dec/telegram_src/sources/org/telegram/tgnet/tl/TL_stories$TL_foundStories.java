package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_foundStories extends TLObject {
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList stories = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_foundStories TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-488736969 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_foundStories", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_foundStories tL_stories$TL_foundStories = new TL_stories$TL_foundStories();
        tL_stories$TL_foundStories.readParams(inputSerializedData, z);
        return tL_stories$TL_foundStories;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        this.stories = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stories$TL_foundStories$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stories$TL_foundStory.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-488736969);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.stories);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.next_offset);
        }
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
