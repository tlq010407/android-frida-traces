package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.Supplier;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class u3 extends T2 {
    u3(AbstractC0127b abstractC0127b, Spliterator spliterator, boolean z) {
        super(abstractC0127b, spliterator, z);
    }

    u3(AbstractC0127b abstractC0127b, Supplier supplier, boolean z) {
        super(abstractC0127b, supplier, z);
    }

    @Override // j$.util.Spliterator
    public final void a(Consumer consumer) {
        if (this.h != null || this.i) {
            while (s(consumer)) {
            }
            return;
        }
        consumer.getClass();
        h();
        C0123a c0123a = new C0123a(consumer, 9);
        this.b.A0(this.d, c0123a);
        this.i = true;
    }

    @Override // j$.util.stream.T2
    final void j() {
        O2 o2 = new O2();
        this.h = o2;
        this.e = this.b.B0(new C0123a(o2, 7));
        this.f = new C0123a(this, 8);
    }

    @Override // j$.util.stream.T2
    final T2 k(Spliterator spliterator) {
        return new u3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final boolean s(Consumer consumer) {
        Object obj;
        consumer.getClass();
        boolean zB = b();
        if (zB) {
            O2 o2 = (O2) this.h;
            long j = this.g;
            if (o2.c != 0) {
                if (j >= o2.count()) {
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                for (int i = 0; i <= o2.c; i++) {
                    long j2 = o2.d[i];
                    Object[] objArr = o2.f[i];
                    if (j < objArr.length + j2) {
                        obj = objArr[(int) (j - j2)];
                    }
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            if (j >= o2.b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            obj = o2.e[(int) j];
            consumer.r(obj);
        }
        return zB;
    }
}
