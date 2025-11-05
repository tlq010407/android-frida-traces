package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class TL_stars$starGiftWithdrawalUrl extends TLObject {
    public String url;

    public static TL_stars$starGiftWithdrawalUrl TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-2069218660 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in starGiftWithdrawalUrl", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$starGiftWithdrawalUrl tL_stars$starGiftWithdrawalUrl = new TL_stars$starGiftWithdrawalUrl();
        tL_stars$starGiftWithdrawalUrl.readParams(inputSerializedData, z);
        return tL_stars$starGiftWithdrawalUrl;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.url = inputSerializedData.readString(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-2069218660);
        outputSerializedData.writeString(this.url);
    }
}
