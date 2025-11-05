package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$acceptAuthorization extends TLObject {
    public long bot_id;
    public TLRPC.TL_secureCredentialsEncrypted credentials;
    public String public_key;
    public String scope;
    public ArrayList value_hashes = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-202552205);
        outputSerializedData.writeInt64(this.bot_id);
        outputSerializedData.writeString(this.scope);
        outputSerializedData.writeString(this.public_key);
        Vector.serialize(outputSerializedData, this.value_hashes);
        this.credentials.serializeToStream(outputSerializedData);
    }
}
