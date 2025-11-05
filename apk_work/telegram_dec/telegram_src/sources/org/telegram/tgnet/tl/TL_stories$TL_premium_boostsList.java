package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_premium_boostsList extends TLObject {
    public static int constructor = -2030542532;
    public int count;
    public int flags;
    public String next_offset;
    public ArrayList boosts = new ArrayList();
    public ArrayList users = new ArrayList();

    public static TL_stories$TL_premium_boostsList TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_premium_boostsList", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_premium_boostsList tL_stories$TL_premium_boostsList = new TL_stories$TL_premium_boostsList();
        tL_stories$TL_premium_boostsList.readParams(inputSerializedData, z);
        return tL_stories$TL_premium_boostsList;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.count = inputSerializedData.readInt32(z);
        this.boosts = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stories$TL_premium_boostsList$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.Vector.TLDeserializer
            public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                return TL_stories$Boost.TLdeserialize(inputSerializedData2, i, z2);
            }
        }, z);
        if ((this.flags & 1) != 0) {
            this.next_offset = inputSerializedData.readString(z);
        }
        this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.count);
        Vector.serialize(outputSerializedData, this.boosts);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.next_offset);
        }
        Vector.serialize(outputSerializedData, this.users);
    }
}
