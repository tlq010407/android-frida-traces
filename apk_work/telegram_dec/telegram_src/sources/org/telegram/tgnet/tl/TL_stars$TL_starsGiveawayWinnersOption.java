package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stars$TL_starsGiveawayWinnersOption extends TLObject {
    public int flags;
    public boolean isDefault;
    public long per_user_stars;
    public int users;

    public static TL_stars$TL_starsGiveawayWinnersOption TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (1411605001 != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_starsGiveawayWinnersOption", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stars$TL_starsGiveawayWinnersOption tL_stars$TL_starsGiveawayWinnersOption = new TL_stars$TL_starsGiveawayWinnersOption();
        tL_stars$TL_starsGiveawayWinnersOption.readParams(inputSerializedData, z);
        return tL_stars$TL_starsGiveawayWinnersOption;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.isDefault = (int32 & 1) != 0;
        this.users = inputSerializedData.readInt32(z);
        this.per_user_stars = inputSerializedData.readInt64(z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1411605001);
        int i = this.isDefault ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt32(this.users);
        outputSerializedData.writeInt64(this.per_user_stars);
    }
}
