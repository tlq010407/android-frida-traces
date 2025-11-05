package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_account$ResetPasswordResult extends TLObject {
    public static TL_account$ResetPasswordResult TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_account$ResetPasswordResult tL_account$resetPasswordRequestedWait = i != -478701471 ? i != -383330754 ? i != -370148227 ? null : new TL_account$resetPasswordRequestedWait() : new TL_account$ResetPasswordResult() { // from class: org.telegram.tgnet.tl.TL_account$resetPasswordOk
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-383330754);
            }
        } : new TL_account$resetPasswordFailedWait();
        if (tL_account$resetPasswordRequestedWait == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in account_ResetPasswordResult", Integer.valueOf(i)));
        }
        if (tL_account$resetPasswordRequestedWait != null) {
            tL_account$resetPasswordRequestedWait.readParams(inputSerializedData, z);
        }
        return tL_account$resetPasswordRequestedWait;
    }
}
