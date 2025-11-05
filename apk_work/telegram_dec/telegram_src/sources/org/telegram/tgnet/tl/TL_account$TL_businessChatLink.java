package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessChatLink extends TLObject {
    public ArrayList entities = new ArrayList();
    public int flags;
    public String link;
    public String message;
    public String title;
    public int views;

    public static TL_account$TL_businessChatLink TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1263638929 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessChatLink", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessChatLink tL_account$TL_businessChatLink = new TL_account$TL_businessChatLink();
        tL_account$TL_businessChatLink.readParams(inputSerializedData, z);
        return tL_account$TL_businessChatLink;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.link = inputSerializedData.readString(z);
        this.message = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.entities = Vector.deserialize(inputSerializedData, new MessagesStorage$$ExternalSyntheticLambda40(), z);
        }
        if ((this.flags & 2) != 0) {
            this.title = inputSerializedData.readString(z);
        }
        this.views = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1263638929);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.link);
        outputSerializedData.writeString(this.message);
        if ((this.flags & 1) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.title);
        }
        outputSerializedData.writeInt32(this.views);
    }
}
