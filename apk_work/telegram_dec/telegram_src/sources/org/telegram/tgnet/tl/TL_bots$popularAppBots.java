package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$popularAppBots extends TLObject {
    public int flags;
    public String next_offset;
    public ArrayList users = new ArrayList();

    public static TL_bots$popularAppBots TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (428978491 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_bots_popularAppBots", Integer.valueOf(i)));
            }
            return null;
        }
        TL_bots$popularAppBots tL_bots$popularAppBots = new TL_bots$popularAppBots();
        tL_bots$popularAppBots.readParams(inputSerializedData, z);
        return tL_bots$popularAppBots;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        if ((int32 & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(428978491);
        outputSerializedData.writeInt32(this.flags);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.next_offset);
        }
        Vector.serialize(outputSerializedData, this.users);
    }
}
