package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_myBoost extends TLObject {
    public static int constructor = -1001897636;
    public int cooldown_until_date;
    public int date;
    public int expires;
    public int flags;
    public TLRPC.Peer peer;
    public int slot;

    public static TL_stories$TL_myBoost TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_myBoost", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_myBoost tL_stories$TL_myBoost = new TL_stories$TL_myBoost();
        tL_stories$TL_myBoost.readParams(inputSerializedData, z);
        return tL_stories$TL_myBoost;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.flags = inputSerializedData.readInt32(z);
        this.slot = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.peer = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.date = inputSerializedData.readInt32(z);
        this.expires = inputSerializedData.readInt32(z);
        if ((this.flags & 2) != 0) {
            this.cooldown_until_date = inputSerializedData.readInt32(z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        outputSerializedData.writeInt32(this.flags);
        outputSerializedData.writeInt32(this.slot);
        if ((this.flags & 1) != 0) {
            this.peer.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeInt32(this.date);
        outputSerializedData.writeInt32(this.expires);
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeInt32(this.cooldown_until_date);
        }
    }
}
