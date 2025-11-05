package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import j$.time.chrono.b;
import j$.time.h;
import j$.time.temporal.k;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public interface ChronoLocalDateTime<D extends b> extends k, Comparable<ChronoLocalDateTime<?>> {
    h a();

    e b();

    LocalDate d();

    Instant toInstant(ZoneOffset zoneOffset);
}
