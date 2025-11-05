package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_chatlists$TL_chatlists_exportedChatlistInvite extends TLObject {
    public TLRPC.DialogFilter filter;
    public TL_chatlists$TL_exportedChatlistInvite invite;

    public static TL_chatlists$TL_chatlists_exportedChatlistInvite TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (283567014 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_chatlists_exportedChatlistInvite", Integer.valueOf(i)));
            }
            return null;
        }
        TL_chatlists$TL_chatlists_exportedChatlistInvite tL_chatlists$TL_chatlists_exportedChatlistInvite = new TL_chatlists$TL_chatlists_exportedChatlistInvite();
        tL_chatlists$TL_chatlists_exportedChatlistInvite.readParams(inputSerializedData, z);
        return tL_chatlists$TL_chatlists_exportedChatlistInvite;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.filter = TLRPC.DialogFilter.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.invite = TL_chatlists$TL_exportedChatlistInvite.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(283567014);
        this.filter.serializeToStream(outputSerializedData);
        this.invite.serializeToStream(outputSerializedData);
    }
}
