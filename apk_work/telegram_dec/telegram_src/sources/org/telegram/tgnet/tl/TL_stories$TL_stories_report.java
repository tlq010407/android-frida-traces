package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.Vector$$ExternalSyntheticLambda3;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_stories_report extends TLObject {
    public ArrayList id = new ArrayList();
    public String message;
    public byte[] option;
    public TLRPC.InputPeer peer;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.ReportResult.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(433646405);
        this.peer.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, new Vector$$ExternalSyntheticLambda3(outputSerializedData), this.id);
        outputSerializedData.writeByteArray(this.option);
        outputSerializedData.writeString(this.message);
    }
}
