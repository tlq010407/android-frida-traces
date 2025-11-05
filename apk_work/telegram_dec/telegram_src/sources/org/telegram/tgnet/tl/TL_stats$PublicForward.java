package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stats$PublicForward extends TLObject {
    public static TL_stats$PublicForward TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stats$PublicForward tL_stats$TL_publicForwardMessage = i != -302797360 ? i != 32685898 ? null : new TL_stats$TL_publicForwardMessage() : new TL_stories$TL_publicForwardStory();
        if (tL_stats$TL_publicForwardMessage == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in PublicForward", Integer.valueOf(i)));
        }
        if (tL_stats$TL_publicForwardMessage != null) {
            tL_stats$TL_publicForwardMessage.readParams(inputSerializedData, z);
        }
        return tL_stats$TL_publicForwardMessage;
    }
}
