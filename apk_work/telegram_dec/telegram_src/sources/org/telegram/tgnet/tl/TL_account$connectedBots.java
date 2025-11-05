package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$connectedBots extends TLObject {
    public ArrayList connected_bots = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_account$connectedBots TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 400029819) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_account_connectedBots", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$connectedBots tL_account$connectedBots = new TL_account$connectedBots();
        tL_account$connectedBots.readParams(inputSerializedData, z);
        return tL_account$connectedBots;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.connected_bots = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_account$connectedBots$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_account$TL_connectedBot.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(400029819);
        Vector.serialize(outputSerializedData, this.connected_bots);
        Vector.serialize(outputSerializedData, this.users);
    }
}
