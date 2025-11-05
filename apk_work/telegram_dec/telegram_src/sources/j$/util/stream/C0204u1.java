package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
class C0204u1 extends CountedCompleter {
    protected final G0 a;
    protected final int b;
    public final /* synthetic */ int c;
    private final Object d;

    public C0204u1(G0 g0, Object obj, int i) {
        this.c = i;
        this.a = g0;
        this.b = 0;
        this.d = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0204u1(C0204u1 c0204u1, F0 f0, int i) {
        this(c0204u1, f0, i, (byte) 0);
        this.c = 0;
        this.d = c0204u1.d;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0204u1(C0204u1 c0204u1, G0 g0, int i) {
        this(c0204u1, g0, i, (byte) 0);
        this.c = 1;
        this.d = (Object[]) c0204u1.d;
    }

    C0204u1(C0204u1 c0204u1, G0 g0, int i, byte b) {
        super(c0204u1);
        this.a = g0;
        this.b = i;
    }

    final void a() {
        switch (this.c) {
            case 0:
                ((F0) this.a).d(this.d, this.b);
                break;
            default:
                this.a.i((Object[]) this.d, this.b);
                break;
        }
    }

    final C0204u1 b(int i, int i2) {
        switch (this.c) {
            case 0:
                return new C0204u1(this, ((F0) this.a).a(i), i2);
            default:
                return new C0204u1(this, this.a.a(i), i2);
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C0204u1 c0204u1B = this;
        while (c0204u1B.a.p() != 0) {
            c0204u1B.setPendingCount(c0204u1B.a.p() - 1);
            int i = 0;
            int iCount = 0;
            while (i < c0204u1B.a.p() - 1) {
                C0204u1 c0204u1B2 = c0204u1B.b(i, c0204u1B.b + iCount);
                iCount = (int) (iCount + c0204u1B2.a.count());
                c0204u1B2.fork();
                i++;
            }
            c0204u1B = c0204u1B.b(i, c0204u1B.b + iCount);
        }
        c0204u1B.a();
        c0204u1B.propagateCompletion();
    }
}
