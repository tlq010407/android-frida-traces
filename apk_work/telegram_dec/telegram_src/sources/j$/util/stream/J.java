package j$.util.stream;

import j$.util.Optional;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class J extends K {
    J() {
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return Optional.of(this.b);
        }
        return null;
    }
}
