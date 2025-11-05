package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_inputBusinessChatLink extends TLObject {
    public ArrayList entities = new ArrayList();
    public int flags;
    public String message;
    public String title;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.message = inputSerializedData.readString(z);
        if ((this.flags & 1) != 0) {
            this.entities = Vector.deserialize(inputSerializedData, new MessagesStorage$$ExternalSyntheticLambda40(), z);
        }
        if ((this.flags & 2) != 0) {
            this.title = inputSerializedData.readString(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(292003751);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeString(this.message);
        if ((this.flags & 1) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.title);
        }
    }
}
