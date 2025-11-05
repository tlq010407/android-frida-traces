package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stats$TL_statsGroupTopInviter extends TLObject {
    public int invitations;
    public long user_id;

    public static TL_stats$TL_statsGroupTopInviter TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1398765469 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_statsGroupTopInviter", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stats$TL_statsGroupTopInviter tL_stats$TL_statsGroupTopInviter = new TL_stats$TL_statsGroupTopInviter();
        tL_stats$TL_statsGroupTopInviter.readParams(inputSerializedData, z);
        return tL_stats$TL_statsGroupTopInviter;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.user_id = inputSerializedData.readInt64(z);
        this.invitations = inputSerializedData.readInt32(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1398765469);
        outputSerializedData.writeInt64(this.user_id);
        outputSerializedData.writeInt32(this.invitations);
    }
}
