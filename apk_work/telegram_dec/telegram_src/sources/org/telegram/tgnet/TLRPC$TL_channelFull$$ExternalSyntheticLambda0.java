package org.telegram.tgnet;

import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_bots$BotInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final /* synthetic */ class TLRPC$TL_channelFull$$ExternalSyntheticLambda0 implements Vector.TLDeserializer {
    @Override // org.telegram.tgnet.Vector.TLDeserializer
    public final TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        return TL_bots$BotInfo.TLdeserialize(inputSerializedData, i, z);
    }
}
