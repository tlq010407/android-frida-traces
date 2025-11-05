package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$TL_updateBotMenuButton extends TLRPC.Update {
    public long bot_id;
    public TL_bots$BotMenuButton button;

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        this.bot_id = inputSerializedData.readInt64(z);
        this.button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(347625491);
        outputSerializedData.writeInt64(this.bot_id);
        this.button.serializeToStream(outputSerializedData);
    }
}
