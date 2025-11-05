package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_bots$BotMenuButton extends TLObject {
    public static TL_bots$BotMenuButton TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_bots$BotMenuButton tL_bots$TL_botMenuButton = i != -944407322 ? i != 1113113093 ? i != 1966318984 ? null : new TL_bots$BotMenuButton() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botMenuButtonDefault
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1966318984);
            }
        } : new TL_bots$BotMenuButton() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botMenuButtonCommands
            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(1113113093);
            }
        } : new TL_bots$TL_botMenuButton();
        if (tL_bots$TL_botMenuButton == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in BotMenuButton", Integer.valueOf(i)));
        }
        if (tL_bots$TL_botMenuButton != null) {
            tL_bots$TL_botMenuButton.readParams(inputSerializedData, z);
        }
        return tL_bots$TL_botMenuButton;
    }
}
