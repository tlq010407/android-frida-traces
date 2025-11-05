package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$webPagePreview extends TLObject {
    public TLRPC.MessageMedia media;
    public ArrayList users = new ArrayList();

    public static TL_account$webPagePreview TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1254192351 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in webPagePreview", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$webPagePreview tL_account$webPagePreview = new TL_account$webPagePreview();
        tL_account$webPagePreview.readParams(inputSerializedData, z);
        return tL_account$webPagePreview;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1254192351);
        this.media.serializeToStream(outputSerializedData);
        Vector.serialize(outputSerializedData, this.users);
    }
}
