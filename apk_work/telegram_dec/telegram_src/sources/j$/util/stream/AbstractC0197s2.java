package j$.util.stream;

import java.util.Comparator;

/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0197s2 extends AbstractC0126a2 {
    protected final Comparator b;
    protected boolean c;

    AbstractC0197s2(InterfaceC0142e2 interfaceC0142e2, Comparator comparator) {
        super(interfaceC0142e2);
        this.b = comparator;
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final boolean q() {
        this.c = true;
        return false;
    }
}
