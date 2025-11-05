package org.telegram.messenger.utils.tlutils;

import java.math.BigDecimal;
import java.math.MathContext;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.tgnet.tl.TL_stars$StarsAmount;
import org.telegram.tgnet.tl.TL_stars$TL_starsAmount;
import org.telegram.tgnet.tl.TL_stars$TL_starsTonAmount;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AmountUtils$Amount {
    public final AmountUtils$Currency currency;
    private final long nanos;

    private AmountUtils$Amount(AmountUtils$Currency amountUtils$Currency, long j) {
        this.currency = amountUtils$Currency;
        this.nanos = j;
    }

    public static boolean equals(AmountUtils$Amount amountUtils$Amount, AmountUtils$Amount amountUtils$Amount2) {
        if (amountUtils$Amount == amountUtils$Amount2) {
            return true;
        }
        return amountUtils$Amount != null && amountUtils$Amount2 != null && amountUtils$Amount.currency == amountUtils$Amount2.currency && amountUtils$Amount.nanos == amountUtils$Amount2.nanos;
    }

    public static boolean equals(TL_stars$StarsAmount tL_stars$StarsAmount, TL_stars$StarsAmount tL_stars$StarsAmount2) {
        return equals(of(tL_stars$StarsAmount), of(tL_stars$StarsAmount2));
    }

    public static AmountUtils$Amount fromDecimal(long j, AmountUtils$Currency amountUtils$Currency) {
        if (amountUtils$Currency == null) {
            return null;
        }
        return new AmountUtils$Amount(amountUtils$Currency, j * getDecimals(amountUtils$Currency));
    }

    public static AmountUtils$Amount fromDecimal(String str, AmountUtils$Currency amountUtils$Currency) {
        try {
            BigDecimal bigDecimalMultiply = new BigDecimal(str).multiply(BigDecimal.valueOf(getDecimals(amountUtils$Currency)));
            if (bigDecimalMultiply.compareTo(BigDecimal.valueOf(Long.MAX_VALUE)) > 0) {
                return null;
            }
            return fromNano(bigDecimalMultiply.longValue(), amountUtils$Currency);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static AmountUtils$Amount fromNano(long j, AmountUtils$Currency amountUtils$Currency) {
        if (amountUtils$Currency == null) {
            return null;
        }
        return new AmountUtils$Amount(amountUtils$Currency, j);
    }

    private static long getDecimals(AmountUtils$Currency amountUtils$Currency) {
        return 1000000000L;
    }

    public static AmountUtils$Amount of(TL_stars$StarsAmount tL_stars$StarsAmount) {
        if (tL_stars$StarsAmount instanceof TL_stars$TL_starsAmount) {
            long j = tL_stars$StarsAmount.amount;
            AmountUtils$Currency amountUtils$Currency = AmountUtils$Currency.STARS;
            return fromNano((j * getDecimals(amountUtils$Currency)) + tL_stars$StarsAmount.nanos, amountUtils$Currency);
        }
        if (tL_stars$StarsAmount instanceof TL_stars$TL_starsTonAmount) {
            return fromNano(tL_stars$StarsAmount.amount, AmountUtils$Currency.TON);
        }
        return null;
    }

    public static AmountUtils$Amount ofSafe(TL_stars$StarsAmount tL_stars$StarsAmount) {
        AmountUtils$Amount amountUtils$AmountOf = of(tL_stars$StarsAmount);
        return amountUtils$AmountOf != null ? amountUtils$AmountOf : fromNano(0L, AmountUtils$Currency.STARS);
    }

    public long asDecimal() {
        return this.nanos / getDecimals(this.currency);
    }

    public String asDecimalString() {
        return AmountUtils$Amount$$ExternalSyntheticBackportWithForwarding0.m(new BigDecimal(asNano()).divide(BigDecimal.valueOf(getDecimals(this.currency)), MathContext.UNLIMITED)).toPlainString();
    }

    public double asDouble() {
        double d = this.nanos;
        double decimals = getDecimals(this.currency);
        Double.isNaN(d);
        Double.isNaN(decimals);
        return d / decimals;
    }

    public long asNano() {
        return this.nanos;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AmountUtils$Amount) {
            return equals(this, (AmountUtils$Amount) obj);
        }
        return false;
    }

    public String formatAsDecimalSpaced() {
        if (isRound()) {
            int i = AmountUtils$1.$SwitchMap$org$telegram$messenger$utils$tlutils$AmountUtils$Currency[this.currency.ordinal()];
            return i != 1 ? i != 2 ? "" : LocaleController.formatPluralStringSpaced("TonCount", (int) asDecimal()) : LocaleController.formatPluralStringSpaced("StarsCount", (int) asDecimal());
        }
        int i2 = AmountUtils$1.$SwitchMap$org$telegram$messenger$utils$tlutils$AmountUtils$Currency[this.currency.ordinal()];
        return i2 != 1 ? i2 != 2 ? "" : LocaleController.formatString(R.string.TonCountX, asDecimalString()) : LocaleController.formatString(R.string.StarsCountX, asDecimalString());
    }

    public boolean isRound() {
        return this.nanos % getDecimals(this.currency) == 0;
    }

    public boolean isZero() {
        return this.nanos == 0;
    }

    public TL_stars$StarsAmount toTl() {
        AmountUtils$Currency amountUtils$Currency = this.currency;
        if (amountUtils$Currency != AmountUtils$Currency.STARS) {
            if (amountUtils$Currency != AmountUtils$Currency.TON) {
                return null;
            }
            TL_stars$TL_starsTonAmount tL_stars$TL_starsTonAmount = new TL_stars$TL_starsTonAmount();
            tL_stars$TL_starsTonAmount.amount = this.nanos;
            return tL_stars$TL_starsTonAmount;
        }
        TL_stars$TL_starsAmount tL_stars$TL_starsAmount = new TL_stars$TL_starsAmount();
        long decimals = getDecimals(this.currency);
        long j = this.nanos;
        tL_stars$TL_starsAmount.amount = j / decimals;
        tL_stars$TL_starsAmount.nanos = (int) (j % decimals);
        return tL_stars$TL_starsAmount;
    }
}
