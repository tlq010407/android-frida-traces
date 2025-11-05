package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_phone$groupCallStreamChannels extends TLObject {
    public ArrayList channels = new ArrayList();

    public static TL_phone$groupCallStreamChannels TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-790330702 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_phone_groupCallStreamChannels", Integer.valueOf(i)));
            }
            return null;
        }
        TL_phone$groupCallStreamChannels tL_phone$groupCallStreamChannels = new TL_phone$groupCallStreamChannels();
        tL_phone$groupCallStreamChannels.readParams(inputSerializedData, z);
        return tL_phone$groupCallStreamChannels;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.channels = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_phone$groupCallStreamChannels$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_phone$TL_groupCallStreamChannel.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-790330702);
        Vector.serialize(outputSerializedData, this.channels);
    }
}
