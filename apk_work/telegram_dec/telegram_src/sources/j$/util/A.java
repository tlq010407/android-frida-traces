package j$.util;

import j$.util.function.Consumer;
import j$.util.function.InterfaceC0098m;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
public abstract /* synthetic */ class A {
    A() {
    }

    public static void b(D d, Consumer consumer) {
        if (consumer instanceof InterfaceC0098m) {
            d.forEachRemaining((InterfaceC0098m) consumer);
        } else {
            if (d0.a) {
                d0.a(d.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            consumer.getClass();
            d.forEachRemaining(new C0117m(consumer));
        }
    }

    public static void f(G g, Consumer consumer) {
        if (consumer instanceof j$.util.function.E) {
            g.forEachRemaining((j$.util.function.E) consumer);
        } else {
            if (d0.a) {
                d0.a(g.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            consumer.getClass();
            g.forEachRemaining(new C0121q(consumer));
        }
    }

    public static void h(J j, Consumer consumer) {
        if (consumer instanceof j$.util.function.T) {
            j.forEachRemaining((j$.util.function.T) consumer);
        } else {
            if (d0.a) {
                d0.a(j.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            consumer.getClass();
            j.forEachRemaining(new C0227u(consumer));
        }
    }

    public static long j(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean k(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean l(D d, Consumer consumer) {
        if (consumer instanceof InterfaceC0098m) {
            return d.tryAdvance((InterfaceC0098m) consumer);
        }
        if (d0.a) {
            d0.a(d.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        consumer.getClass();
        return d.tryAdvance(new C0117m(consumer));
    }

    public static boolean m(G g, Consumer consumer) {
        if (consumer instanceof j$.util.function.E) {
            return g.tryAdvance((j$.util.function.E) consumer);
        }
        if (d0.a) {
            d0.a(g.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        consumer.getClass();
        return g.tryAdvance(new C0121q(consumer));
    }

    public static boolean n(J j, Consumer consumer) {
        if (consumer instanceof j$.util.function.T) {
            return j.tryAdvance((j$.util.function.T) consumer);
        }
        if (d0.a) {
            d0.a(j.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        consumer.getClass();
        return j.tryAdvance(new C0227u(consumer));
    }

    public static Optional o(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    public static C0114j q(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C0114j.d(optionalDouble.getAsDouble()) : C0114j.a();
    }

    public static C0115k r(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C0115k.d(optionalInt.getAsInt()) : C0115k.a();
    }

    public static C0116l t(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C0116l.d(optionalLong.getAsLong()) : C0116l.a();
    }

    public static java.util.Optional u(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? java.util.Optional.of(optional.get()) : java.util.Optional.empty();
    }

    public static OptionalDouble v(C0114j c0114j) {
        if (c0114j == null) {
            return null;
        }
        return c0114j.c() ? OptionalDouble.of(c0114j.b()) : OptionalDouble.empty();
    }

    public static OptionalInt w(C0115k c0115k) {
        if (c0115k == null) {
            return null;
        }
        return c0115k.c() ? OptionalInt.of(c0115k.b()) : OptionalInt.empty();
    }

    public static OptionalLong x(C0116l c0116l) {
        if (c0116l == null) {
            return null;
        }
        return c0116l.c() ? OptionalLong.of(c0116l.b()) : OptionalLong.empty();
    }

    public static boolean y(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void z(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public int characteristics() {
        return 16448;
    }

    public long estimateSize() {
        return 0L;
    }

    public void forEachRemaining(Object obj) {
        obj.getClass();
    }

    public boolean tryAdvance(Object obj) {
        obj.getClass();
        return false;
    }

    public Spliterator trySplit() {
        return null;
    }
}
