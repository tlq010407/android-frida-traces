package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_phone$PhoneCall extends TLObject {
    public long access_hash;
    public long admin_id;
    public boolean conference_supported;
    public ArrayList connections = new ArrayList();
    public TLRPC.TL_dataJSON custom_parameters;
    public int date;
    public int duration;
    public int flags;
    public byte[] g_a_hash;
    public byte[] g_a_or_b;
    public byte[] g_b;
    public long id;
    public long key_fingerprint;
    public boolean need_debug;
    public boolean need_rating;
    public boolean p2p_allowed;
    public long participant_id;
    public TL_phone$PhoneCallProtocol protocol;
    public TLRPC.PhoneCallDiscardReason reason;
    public int receive_date;
    public int start_date;
    public boolean video;

    public static TL_phone$PhoneCall TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_phone$PhoneCall tL_phone$TL_phoneCall;
        switch (i) {
            case -1770029977:
                tL_phone$TL_phoneCall = new TL_phone$TL_phoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCall_layer176
                    @Override // org.telegram.tgnet.tl.TL_phone$TL_phoneCall, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.p2p_allowed = (int32 & 32) != 0;
                        this.video = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.access_hash = inputSerializedData2.readInt64(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.admin_id = inputSerializedData2.readInt64(z2);
                        this.participant_id = inputSerializedData2.readInt64(z2);
                        this.g_a_or_b = inputSerializedData2.readByteArray(z2);
                        this.key_fingerprint = inputSerializedData2.readInt64(z2);
                        this.protocol = TL_phone$PhoneCallProtocol.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.connections = Vector.deserialize(inputSerializedData2, new TL_phone$TL_phoneCall$$ExternalSyntheticLambda0(), z2);
                        this.start_date = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_phone$TL_phoneCall, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1770029977);
                        int i2 = this.p2p_allowed ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.video ? i2 | 64 : i2 & (-65);
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
                    }
                };
                break;
            case -987599081:
                tL_phone$TL_phoneCall = new TL_phone$PhoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCallWaiting
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.video = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.access_hash = inputSerializedData2.readInt64(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.admin_id = inputSerializedData2.readInt64(z2);
                        this.participant_id = inputSerializedData2.readInt64(z2);
                        this.protocol = TL_phone$PhoneCallProtocol.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 1) != 0) {
                            this.receive_date = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-987599081);
                        int i2 = this.video ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeInt64(this.access_hash);
                        outputSerializedData.writeInt32(this.date);
                        outputSerializedData.writeInt64(this.admin_id);
                        outputSerializedData.writeInt64(this.participant_id);
                        this.protocol.serializeToStream(outputSerializedData);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt32(this.receive_date);
                        }
                    }
                };
                break;
            case 347139340:
                tL_phone$TL_phoneCall = new TL_phone$PhoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$phoneCallRequested
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.video = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.access_hash = inputSerializedData2.readInt64(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.admin_id = inputSerializedData2.readInt64(z2);
                        this.participant_id = inputSerializedData2.readInt64(z2);
                        this.g_a_hash = inputSerializedData2.readByteArray(z2);
                        this.protocol = TL_phone$PhoneCallProtocol.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(347139340);
                        int i2 = this.video ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeInt64(this.access_hash);
                        outputSerializedData.writeInt32(this.date);
                        outputSerializedData.writeInt64(this.admin_id);
                        outputSerializedData.writeInt64(this.participant_id);
                        outputSerializedData.writeByteArray(this.g_a_hash);
                        this.protocol.serializeToStream(outputSerializedData);
                    }
                };
                break;
            case 810769141:
                tL_phone$TL_phoneCall = new TL_phone$TL_phoneCall();
                break;
            case 912311057:
                tL_phone$TL_phoneCall = new TL_phone$PhoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCallAccepted
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.video = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.access_hash = inputSerializedData2.readInt64(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.admin_id = inputSerializedData2.readInt64(z2);
                        this.participant_id = inputSerializedData2.readInt64(z2);
                        this.g_b = inputSerializedData2.readByteArray(z2);
                        this.protocol = TL_phone$PhoneCallProtocol.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(912311057);
                        int i2 = this.video ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeInt64(this.access_hash);
                        outputSerializedData.writeInt32(this.date);
                        outputSerializedData.writeInt64(this.admin_id);
                        outputSerializedData.writeInt64(this.participant_id);
                        outputSerializedData.writeByteArray(this.g_b);
                        this.protocol.serializeToStream(outputSerializedData);
                    }
                };
                break;
            case 1355435489:
                tL_phone$TL_phoneCall = new TL_phone$PhoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCallDiscarded
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.need_rating = (int32 & 4) != 0;
                        this.need_debug = (int32 & 8) != 0;
                        this.video = (int32 & 64) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 1) != 0) {
                            this.reason = TLRPC.PhoneCallDiscardReason.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.duration = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1355435489);
                        int i2 = this.need_rating ? this.flags | 4 : this.flags & (-5);
                        this.flags = i2;
                        int i3 = this.need_debug ? i2 | 8 : i2 & (-9);
                        this.flags = i3;
                        int i4 = this.video ? i3 | 64 : i3 & (-65);
                        this.flags = i4;
                        outputSerializedData.writeInt32(i4);
                        outputSerializedData.writeInt64(this.id);
                        if ((this.flags & 1) != 0) {
                            this.reason.serializeToStream(outputSerializedData);
                        }
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeInt32(this.duration);
                        }
                    }
                };
                break;
            case 1399245077:
                tL_phone$TL_phoneCall = new TL_phone$PhoneCall() { // from class: org.telegram.tgnet.tl.TL_phone$TL_phoneCallEmpty
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.id = inputSerializedData2.readInt64(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1399245077);
                        outputSerializedData.writeInt64(this.id);
                    }
                };
                break;
            default:
                tL_phone$TL_phoneCall = null;
                break;
        }
        if (tL_phone$TL_phoneCall == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in PhoneCall", Integer.valueOf(i)));
        }
        if (tL_phone$TL_phoneCall != null) {
            tL_phone$TL_phoneCall.readParams(inputSerializedData, z);
        }
        return tL_phone$TL_phoneCall;
    }
}
