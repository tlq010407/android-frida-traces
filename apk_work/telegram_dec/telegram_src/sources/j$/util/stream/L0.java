package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class L0 extends M0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L0(int i, Spliterator spliterator, AbstractC0127b abstractC0127b) {
        super(abstractC0127b, spliterator, new C0167l(11), new C0163k(4));
        switch (i) {
            case 1:
                super(abstractC0127b, spliterator, new C0167l(12), new C0163k(5));
                break;
            case 2:
                super(abstractC0127b, spliterator, new C0167l(13), new C0163k(6));
                break;
            default:
                break;
        }
    }

    L0(Spliterator spliterator, IntFunction intFunction, AbstractC0127b abstractC0127b) {
        super(abstractC0127b, spliterator, new C0123a(intFunction, 2), new C0163k(7));
    }
}
