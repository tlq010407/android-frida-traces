package j$.util;

import java.util.Comparator;
import java.util.SortedSet;

/* renamed from: j$.util.z, reason: case insensitive filesystem */
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes2.dex */
final class C0232z extends a0 {
    final /* synthetic */ SortedSet f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0232z(SortedSet sortedSet, java.util.Collection collection) {
        super(collection, 21);
        this.f = sortedSet;
    }

    @Override // j$.util.a0, j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f.comparator();
    }
}
