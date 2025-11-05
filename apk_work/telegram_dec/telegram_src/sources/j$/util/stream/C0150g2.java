package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;
import org.telegram.messenger.LiteMode;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0150g2 extends V1 {
    final /* synthetic */ long m;
    final /* synthetic */ long n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0150g2(AbstractC0127b abstractC0127b, int i, long j, long j2) {
        super(abstractC0127b, i, 0);
        this.m = j;
        this.n = j2;
    }

    @Override // j$.util.stream.AbstractC0127b
    final G0 t0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        long j;
        long j2;
        long jL0 = abstractC0127b.l0(spliterator);
        if (jL0 > 0 && spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            return AbstractC0203u0.E(abstractC0127b, AbstractC0203u0.y(abstractC0127b.o0(), spliterator, this.m, this.n), true, intFunction);
        }
        if (R2.ORDERED.j(abstractC0127b.p0())) {
            return (G0) new C0182o2(this, abstractC0127b, spliterator, intFunction, this.m, this.n).invoke();
        }
        Spliterator spliteratorC0 = abstractC0127b.C0(spliterator);
        long j3 = this.m;
        long j4 = this.n;
        if (j3 <= jL0) {
            long jMin = jL0 - j3;
            if (j4 >= 0) {
                jMin = Math.min(j4, jMin);
            }
            j = jMin;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return AbstractC0203u0.E(this, new r3(spliteratorC0, j2, j), true, intFunction);
    }

    @Override // j$.util.stream.AbstractC0127b
    final Spliterator u0(AbstractC0127b abstractC0127b, Spliterator spliterator) {
        long j;
        long j2;
        long jL0 = abstractC0127b.l0(spliterator);
        long j3 = this.n;
        if (jL0 > 0 && spliterator.hasCharacteristics(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM)) {
            Spliterator spliteratorC0 = abstractC0127b.C0(spliterator);
            long j4 = this.m;
            return new l3(spliteratorC0, j4, AbstractC0203u0.x(j4, j3));
        }
        if (R2.ORDERED.j(abstractC0127b.p0())) {
            return ((G0) new C0182o2(this, abstractC0127b, spliterator, new C0136d0(8), this.m, this.n).invoke()).spliterator();
        }
        Spliterator spliteratorC02 = abstractC0127b.C0(spliterator);
        long j5 = this.m;
        if (j5 <= jL0) {
            long jMin = jL0 - j5;
            if (j3 >= 0) {
                jMin = Math.min(j3, jMin);
            }
            j = jMin;
            j2 = 0;
        } else {
            j = j3;
            j2 = j5;
        }
        return new r3(spliteratorC02, j2, j);
    }

    @Override // j$.util.stream.AbstractC0127b
    final InterfaceC0142e2 w0(int i, InterfaceC0142e2 interfaceC0142e2) {
        return new C0146f2(this, interfaceC0142e2);
    }
}
