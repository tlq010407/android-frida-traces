package j$.util.stream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
abstract class V1 extends W1 {
    public final /* synthetic */ int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V1(AbstractC0127b abstractC0127b, int i, int i2) {
        super(abstractC0127b, i);
        this.l = i2;
    }

    @Override // j$.util.stream.AbstractC0127b
    final boolean v0() {
        switch (this.l) {
            case 0:
                return true;
            default:
                return false;
        }
    }
}
