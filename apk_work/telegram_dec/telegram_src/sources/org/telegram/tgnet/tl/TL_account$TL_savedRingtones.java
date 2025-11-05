package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC$TL_help_premiumPromo$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_savedRingtones extends TL_account$SavedRingtones {
    public long hash;
    public ArrayList ringtones = new ArrayList();

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.hash = inputSerializedData.readInt64(z);
        this.ringtones = Vector.deserialize(inputSerializedData, new TLRPC$TL_help_premiumPromo$$ExternalSyntheticLambda0(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1041683259);
        outputSerializedData.writeInt64(this.hash);
        Vector.serialize(outputSerializedData, this.ringtones);
    }
}
