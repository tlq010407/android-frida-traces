package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$updatePaidMessagesPrice extends TLObject {
    public TLRPC.InputChannel channel;
    public int flags;
    public long send_paid_messages_stars;
    public boolean suggestions_allowed;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1259483771);
        int i = this.suggestions_allowed ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        this.channel.serializeToStream(outputSerializedData);
        outputSerializedData.writeInt64(this.send_paid_messages_stars);
    }
}
