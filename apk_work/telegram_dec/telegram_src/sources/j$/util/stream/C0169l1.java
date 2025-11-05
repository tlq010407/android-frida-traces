package j$.util.stream;

import j$.util.function.Consumer;
import java.util.Arrays;

/* renamed from: j$.util.stream.l1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0169l1 extends C0165k1 implements InterfaceC0215x0 {
    C0169l1(long j) {
        super(j);
    }

    @Override // j$.util.stream.InterfaceC0142e2, j$.util.function.InterfaceC0098m
    public final /* synthetic */ void accept(double d) {
        AbstractC0203u0.b();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ void accept(int i) {
        AbstractC0203u0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void accept(long j) {
        int i = this.b;
        long[] jArr = this.a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(jArr.length)));
        }
        this.b = 1 + i;
        jArr[i] = j;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void r(Object obj) {
        j((Long) obj);
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0215x0, j$.util.stream.InterfaceC0219y0
    public final E0 b() {
        int i = this.b;
        long[] jArr = this.a;
        if (i >= jArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(jArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0219y0
    public final /* bridge */ /* synthetic */ G0 b() {
        b();
        return this;
    }

    @Override // j$.util.function.T
    public final /* synthetic */ j$.util.function.T f(j$.util.function.T t) {
        return j$.com.android.tools.r8.a.d(this, t);
    }

    @Override // j$.util.stream.InterfaceC0138d2
    public final /* synthetic */ void j(Long l) {
        AbstractC0203u0.i(this, l);
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void m() {
        int i = this.b;
        long[] jArr = this.a;
        if (i < jArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(jArr.length)));
        }
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final void n(long j) {
        long[] jArr = this.a;
        if (j != jArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(jArr.length)));
        }
        this.b = 0;
    }

    @Override // j$.util.stream.InterfaceC0142e2
    public final /* synthetic */ boolean q() {
        return false;
    }

    @Override // j$.util.stream.C0165k1
    public final String toString() {
        long[] jArr = this.a;
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(jArr.length - this.b), Arrays.toString(jArr));
    }
}
