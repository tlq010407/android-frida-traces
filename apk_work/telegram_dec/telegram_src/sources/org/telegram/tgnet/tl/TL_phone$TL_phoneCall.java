package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$TL_phoneCall extends TL_phone$PhoneCall {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.p2p_allowed = (int32 & 32) != 0;
        this.video = (int32 & 64) != 0;
        this.conference_supported = (int32 & 256) != 0;
        this.id = inputSerializedData.readInt64(z);
        this.access_hash = inputSerializedData.readInt64(z);
        this.date = inputSerializedData.readInt32(z);
        this.admin_id = inputSerializedData.readInt64(z);
        this.participant_id = inputSerializedData.readInt64(z);
        this.g_a_or_b = inputSerializedData.readByteArray(z);
        this.key_fingerprint = inputSerializedData.readInt64(z);
        this.protocol = TL_phone$PhoneCallProtocol.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.connections = Vector.deserialize(inputSerializedData, new TL_phone$TL_phoneCall$$ExternalSyntheticLambda0(), z);
        this.start_date = inputSerializedData.readInt32(z);
        if ((this.flags & 128) != 0) {
            this.custom_parameters = TLRPC.TL_dataJSON.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(810769141);
        int i = this.p2p_allowed ? this.flags | 32 : this.flags & (-33);
        this.flags = i;
        int i2 = this.video ? i | 64 : i & (-65);
        this.flags = i2;
        int i3 = this.conference_supported ? i2 | 256 : i2 & (-257);
        this.flags = i3;
        outputSerializedData.writeInt32(i3);
        outputSerializedData.writeInt64(this.id);
        outputSerializedData.writeInt64(this.access_hash);
        outputSerializedData.writeInt32(this.date);
        outputSerializedData.writeInt64(this.admin_id);
        outputSerializedData.writeInt64(this.participant_id);
        outputSerializedData.writeByteArray(this.g_a_or_b);
        outputSerializedData.writeInt64(this.key_fingerprint);
        this.protocol.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.connections);
        outputSerializedData.writeInt32(this.start_date);
        if ((this.flags & 128) != 0) {
            this.custom_parameters.serializeToStream(outputSerializedData);
        }
    }
}
