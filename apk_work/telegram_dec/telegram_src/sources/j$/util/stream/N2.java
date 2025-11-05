package j$.util.stream;

import j$.util.Spliterator;
import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class N2 extends AbstractC0135d implements Iterable {
    Object e;
    Object[] f;

    N2() {
        this.e = c(16);
    }

    N2(int i) {
        super(i);
        this.e = c(1 << this.a);
    }

    public abstract Object c(int i);

    @Override // j$.util.stream.AbstractC0135d
    public final void clear() {
        Object[] objArr = this.f;
        if (objArr != null) {
            this.e = objArr[0];
            this.f = null;
            this.d = null;
        }
        this.b = 0;
        this.c = 0;
    }

    public void d(Object obj, int i) {
        long j = i;
        long jCount = count() + j;
        if (jCount > v(obj) || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, obj, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object obj2 = this.f[i2];
            System.arraycopy(obj2, 0, obj, i, v(obj2));
            i += v(this.f[i2]);
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, obj, i, i3);
        }
    }

    public Object e() {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objC = c((int) jCount);
        d(objC, 0);
        return objC;
    }

    public void g(Object obj) {
        for (int i = 0; i < this.c; i++) {
            Object obj2 = this.f[i];
            u(obj2, 0, v(obj2), obj);
        }
        u(this.e, 0, this.b, obj);
    }

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    protected abstract void u(Object obj, int i, int i2, Object obj2);

    protected abstract int v(Object obj);

    protected final int w(long j) {
        if (this.c == 0) {
            if (j < this.b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.c; i++) {
            if (j < this.d[i] + v(this.f[i])) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    protected final void x(long j) {
        long jV;
        int i = this.c;
        if (i == 0) {
            jV = v(this.e);
        } else {
            jV = v(this.f[i]) + this.d[i];
        }
        if (j > jV) {
            if (this.f == null) {
                Object[] objArrY = y();
                this.f = objArrY;
                this.d = new long[8];
                objArrY[0] = this.e;
            }
            int i2 = this.c + 1;
            while (j > jV) {
                Object[] objArr = this.f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f = Arrays.copyOf(objArr, length);
                    this.d = Arrays.copyOf(this.d, length);
                }
                int iMin = this.a;
                if (i2 != 0 && i2 != 1) {
                    iMin = Math.min((iMin + i2) - 1, 30);
                }
                int i3 = 1 << iMin;
                this.f[i2] = c(i3);
                long[] jArr = this.d;
                jArr[i2] = jArr[i2 - 1] + v(this.f[r6]);
                jV += i3;
                i2++;
            }
        }
    }

    protected abstract Object[] y();

    protected final void z() {
        long jV;
        if (this.b == v(this.e)) {
            if (this.f == null) {
                Object[] objArrY = y();
                this.f = objArrY;
                this.d = new long[8];
                objArrY[0] = this.e;
            }
            int i = this.c;
            int i2 = i + 1;
            Object[] objArr = this.f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    jV = v(this.e);
                } else {
                    jV = v(objArr[i]) + this.d[i];
                }
                x(jV + 1);
            }
            this.b = 0;
            int i3 = this.c + 1;
            this.c = i3;
            this.e = this.f[i3];
        }
    }
}
