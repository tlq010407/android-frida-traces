package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class TL_stars$getStarGiftWithdrawalUrl extends TLObject {
    public TLRPC.InputCheckPasswordSRP password;
    public TL_stars$InputSavedStarGift stargift;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_stars$starGiftWithdrawalUrl.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-798059608);
        this.stargift.serializeToStream(outputSerializedData);
        this.password.serializeToStream(outputSerializedData);
    }
}
