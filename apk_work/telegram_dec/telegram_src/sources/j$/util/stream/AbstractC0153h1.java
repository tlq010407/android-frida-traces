package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;

/* renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class AbstractC0153h1 extends AbstractC0161j1 implements j$.util.M {
    AbstractC0153h1(F0 f0) {
        super(f0);
    }

    @Override // j$.util.M
    /* renamed from: forEachRemaining, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void e(Object obj) {
        if (this.a == null) {
            return;
        }
        if (this.d != null) {
            while (p(obj)) {
            }
            return;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            ((j$.util.M) spliterator).e(obj);
            return;
        }
        ArrayDeque arrayDequeF = f();
        while (true) {
            F0 f0 = (F0) AbstractC0161j1.b(arrayDequeF);
            if (f0 == null) {
                this.a = null;
                return;
            }
            f0.g(obj);
        }
    }

    @Override // j$.util.M
    /* renamed from: tryAdvance, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final boolean p(Object obj) {
        F0 f0;
        if (!h()) {
            return false;
        }
        boolean zP = ((j$.util.M) this.d).p(obj);
        if (!zP) {
            if (this.c == null && (f0 = (F0) AbstractC0161j1.b(this.e)) != null) {
                j$.util.M mSpliterator = f0.spliterator();
                this.d = mSpliterator;
                return mSpliterator.p(obj);
            }
            this.a = null;
        }
        return zP;
    }
}
