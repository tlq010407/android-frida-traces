package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_premium_boostsStatus extends TLObject {
    public static int constructor = 1230586490;
    public String boost_url;
    public int boosts;
    public int current_level_boosts;
    public int flags;
    public int gift_boosts;
    public int level;
    public boolean my_boost;
    public int next_level_boosts;
    public TL_stats$TL_statsPercentValue premium_audience;
    public ArrayList prepaid_giveaways = new ArrayList();
    public ArrayList my_boost_slots = new ArrayList();

    public static TL_stories$TL_premium_boostsStatus TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (constructor != i) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_premium_boostsStatus", Integer.valueOf(i)));
            }
            return null;
        }
        TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = new TL_stories$TL_premium_boostsStatus();
        tL_stories$TL_premium_boostsStatus.readParams(inputSerializedData, z);
        return tL_stories$TL_premium_boostsStatus;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.my_boost = (int32 & 4) != 0;
        this.level = inputSerializedData.readInt32(z);
        this.current_level_boosts = inputSerializedData.readInt32(z);
        this.boosts = inputSerializedData.readInt32(z);
        if ((this.flags & 16) != 0) {
            this.gift_boosts = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 1) != 0) {
            this.next_level_boosts = inputSerializedData.readInt32(z);
        }
        if ((this.flags & 2) != 0) {
            this.premium_audience = TL_stats$TL_statsPercentValue.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.boost_url = inputSerializedData.readString(z);
        if ((this.flags & 8) != 0) {
            this.prepaid_giveaways = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_stories$TL_premium_boostsStatus$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_stories$PrepaidGiveaway.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }
        if ((this.flags & 4) != 0) {
            this.my_boost_slots = Vector.deserializeInt(inputSerializedData, z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(constructor);
        int i = this.my_boost ? this.flags | 4 : this.flags & (-5);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        outputSerializedData.writeInt32(this.level);
        outputSerializedData.writeInt32(this.current_level_boosts);
        outputSerializedData.writeInt32(this.boosts);
        if ((this.flags & 16) != 0) {
            outputSerializedData.writeInt32(this.gift_boosts);
        }
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt32(this.next_level_boosts);
        }
        if ((this.flags & 2) != 0) {
            this.premium_audience.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeString(this.boost_url);
        if ((this.flags & 8) != 0) {
            Vector.serialize(outputSerializedData, this.prepaid_giveaways);
        }
        if ((this.flags & 4) != 0) {
            Vector.serializeInt(outputSerializedData, this.my_boost_slots);
        }
    }
}
