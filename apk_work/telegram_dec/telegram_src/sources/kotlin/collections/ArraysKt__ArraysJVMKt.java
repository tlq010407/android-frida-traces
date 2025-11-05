package kotlin.collections;

import java.lang.reflect.Array;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class ArraysKt__ArraysJVMKt {
    public static final Object[] arrayOfNulls(Object[] reference, int i) throws NegativeArraySizeException {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Object objNewInstance = Array.newInstance(reference.getClass().getComponentType(), i);
        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) objNewInstance;
    }
}
