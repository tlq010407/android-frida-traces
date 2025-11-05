package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$editGroupCallParticipant extends TLObject {
    public TLRPC.InputGroupCall call;
    public int flags;
    public boolean muted;
    public TLRPC.InputPeer participant;
    public boolean presentation_paused;
    public boolean raise_hand;
    public boolean video_paused;
    public boolean video_stopped;
    public int volume;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1524155713);
        outputSerializedData.writeInt32(this.flags);
        this.call.serializeToStream(outputSerializedData);
        this.participant.serializeToStream(outputSerializedData);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeBool(this.muted);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.volume);
        }
        if ((this.flags & 4) != 0) {
            outputSerializedData.writeBool(this.raise_hand);
        }
        if ((this.flags & 8) != 0) {
            outputSerializedData.writeBool(this.video_stopped);
        }
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeBool(this.video_paused);
        }
        if ((this.flags & 32) != 0) {
            outputSerializedData.writeBool(this.presentation_paused);
        }
    }
}
