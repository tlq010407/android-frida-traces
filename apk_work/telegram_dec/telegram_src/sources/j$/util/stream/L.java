package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class L extends AbstractC0131c {
    private final F j;

    L(F f, AbstractC0127b abstractC0127b, Spliterator spliterator) {
        super(abstractC0127b, spliterator);
        this.j = f;
    }

    L(L l, Spliterator spliterator) {
        super(l, spliterator);
        this.j = l.j;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final Object a() {
        AbstractC0127b abstractC0127b = this.a;
        x3 x3Var = (x3) this.j.d.get();
        abstractC0127b.A0(this.b, x3Var);
        Object obj = x3Var.get();
        if (!this.j.a) {
            if (obj != null) {
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        AbstractC0139e abstractC0139e = this;
        while (true) {
            if (abstractC0139e != null) {
                AbstractC0139e abstractC0139e2 = (AbstractC0139e) abstractC0139e.getCompleter();
                if (abstractC0139e2 != null && abstractC0139e2.d != abstractC0139e) {
                    h();
                    break;
                }
                abstractC0139e = abstractC0139e2;
            } else {
                AtomicReference atomicReference2 = this.h;
                while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
                }
            }
        }
        return obj;
    }

    @Override // j$.util.stream.AbstractC0139e
    protected final AbstractC0139e d(Spliterator spliterator) {
        return new L(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0131c
    protected final Object i() {
        return this.j.b;
    }

    @Override // j$.util.stream.AbstractC0139e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.j.a) {
            L l = (L) this.d;
            L l2 = null;
            while (true) {
                if (l != l2) {
                    Object objB = l.b();
                    if (objB != null && this.j.c.test(objB)) {
                        e(objB);
                        AbstractC0139e abstractC0139e = this;
                        while (true) {
                            if (abstractC0139e != null) {
                                AbstractC0139e abstractC0139e2 = (AbstractC0139e) abstractC0139e.getCompleter();
                                if (abstractC0139e2 != null && abstractC0139e2.d != abstractC0139e) {
                                    h();
                                    break;
                                }
                                abstractC0139e = abstractC0139e2;
                            } else {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, objB) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        l2 = l;
                        l = (L) this.e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
