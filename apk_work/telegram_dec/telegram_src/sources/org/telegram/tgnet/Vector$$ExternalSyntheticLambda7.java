package org.telegram.tgnet;

import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final /* synthetic */ class Vector$$ExternalSyntheticLambda7 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return Vector.Int.TLDeserialize(inputSerializedData, i, z);
    }
}
