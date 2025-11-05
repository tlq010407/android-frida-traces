package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import java.util.ArrayDeque;

/* renamed from: j$.util.stream.i1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0157i1 extends AbstractC0161j1 {
    C0157i1(G0 g0) {
        super(g0);
    }

    @Override // j$.util.Spliterator
    public final void a(Consumer consumer) {
        if (this.a == null) {
            return;
        }
        if (this.d != null) {
            while (s(consumer)) {
            }
            return;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            spliterator.a(consumer);
            return;
        }
        ArrayDeque arrayDequeF = f();
        while (true) {
            G0 g0B = AbstractC0161j1.b(arrayDequeF);
            if (g0B == null) {
                this.a = null;
                return;
            }
            g0B.forEach(consumer);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean s(Consumer consumer) {
        G0 g0B;
        if (!h()) {
            return false;
        }
        boolean zS = this.d.s(consumer);
        if (!zS) {
            if (this.c == null && (g0B = AbstractC0161j1.b(this.e)) != null) {
                Spliterator spliterator = g0B.spliterator();
                this.d = spliterator;
                return spliterator.s(consumer);
            }
            this.a = null;
        }
        return zS;
    }
}
