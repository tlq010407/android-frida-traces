package j$.util.stream;

import j$.util.function.Consumer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class P extends Q {
    final Consumer b;

    P(Consumer consumer, boolean z) {
        super(z);
        this.b = consumer;
    }

    @Override // j$.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        this.b.r(obj);
    }
}
