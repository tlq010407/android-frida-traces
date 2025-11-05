package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_payments$connectedStarRefBots extends TLObject {
    public int count;
    public ArrayList connected_bots = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_payments$connectedStarRefBots TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (-1730811363 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_payments.connectedStarRefBots", Integer.valueOf(i)));
            }
            return null;
        }
        TL_payments$connectedStarRefBots tL_payments$connectedStarRefBots = new TL_payments$connectedStarRefBots();
        tL_payments$connectedStarRefBots.readParams(inputSerializedData, z);
        return tL_payments$connectedStarRefBots;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.count = inputSerializedData.readInt32(z);
        this.connected_bots = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_payments$connectedStarRefBots$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_payments$connectedBotStarRef.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1730811363);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.connected_bots);
        Vector.serialize(outputSerializedData, this.users);
    }
}
