package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class A2 extends AbstractC0197s2 {
    private ArrayList d;

    A2(InterfaceC0142e2 interfaceC0142e2, Comparator comparator) {
        super(interfaceC0142e2, comparator);
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        this.d.add(obj);
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void m() {
        List list = this.d;
        boolean z = list instanceof j$.util.List;
        Comparator comparator = this.b;
        if (z) {
            ((j$.util.List) list).sort(comparator);
        } else {
            List.CC.$default$sort(list, comparator);
        }
        long size = this.d.size();
        InterfaceC0142e2 interfaceC0142e2 = this.a;
        interfaceC0142e2.n(size);
        if (this.c) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (interfaceC0142e2.q()) {
                    break;
                } else {
                    interfaceC0142e2.r((InterfaceC0142e2) next);
                }
            }
        } else {
            Collection.EL.a(this.d, new C0123a(interfaceC0142e2, 3));
        }
        interfaceC0142e2.m();
        this.d = null;
    }

    @Override // j$.util.stream.AbstractC0126a2, j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
