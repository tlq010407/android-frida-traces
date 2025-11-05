package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarsAmount extends TLObject {
    public long amount;
    public int nanos;

    public static TL_stars$StarsAmount TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarsAmount tL_stars$TL_starsTonAmount = i != -1145654109 ? i != 1957618656 ? null : new TL_stars$TL_starsTonAmount() : new TL_stars$TL_starsAmount();
        if (tL_stars$TL_starsTonAmount == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarsAmount", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starsTonAmount != null) {
            tL_stars$TL_starsTonAmount.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starsTonAmount;
    }

    public static TL_stars$StarsAmount ofStars(long j) {
        TL_stars$TL_starsAmount tL_stars$TL_starsAmount = new TL_stars$TL_starsAmount();
        tL_stars$TL_starsAmount.amount = j;
        return tL_stars$TL_starsAmount;
    }

    public boolean equals(TL_stars$StarsAmount tL_stars$StarsAmount) {
        return tL_stars$StarsAmount != null && this.amount == tL_stars$StarsAmount.amount && this.nanos == tL_stars$StarsAmount.nanos;
    }

    public boolean negative() {
        long j = this.amount;
        return j != 0 ? j < 0 : this.nanos < 0;
    }

    public boolean positive() {
        long j = this.amount;
        return j != 0 ? j > 0 : this.nanos > 0;
    }

    public double toDouble() {
        double d = this.amount;
        double d2 = this.nanos;
        Double.isNaN(d2);
        Double.isNaN(d);
        return d + (d2 / 1.0E9d);
    }
}
