package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_updateGroupCallParticipants$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$groupCall extends TLObject {
    public TLRPC.GroupCall call;
    public String participants_next_offset;
    public ArrayList participants = new ArrayList();
    public ArrayList chats = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_phone$groupCall TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1636664659 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_groupCall", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$groupCall tL_phone$groupCall = new TL_phone$groupCall();
        tL_phone$groupCall.readParams(inputSerializedData, z);
        return tL_phone$groupCall;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.call = TLRPC.GroupCall.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.participants = Vector.deserialize(inputSerializedData, new TLRPC$TL_updateGroupCallParticipants$$ExternalSyntheticLambda0(), z);
        this.participants_next_offset = inputSerializedData.readString(z);
        this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1636664659);
        this.call.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.participants);
        outputSerializedData.writeString(this.participants_next_offset);
        Vector.serialize(outputSerializedData, this.chats);
        Vector.serialize(outputSerializedData, this.users);
    }
}
