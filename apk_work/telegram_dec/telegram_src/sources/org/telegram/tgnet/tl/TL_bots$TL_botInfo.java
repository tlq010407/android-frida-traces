package org.telegram.tgnet.tl;

import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_bots$TL_botInfo extends TL_bots$BotInfo {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.has_preview_medias = (int32 & 64) != 0;
        if ((int32 & 1) != 0) {
            this.user_id = inputSerializedData.readInt64(z);
        }
        if ((this.flags & 2) != 0) {
            this.description = inputSerializedData.readString(z);
        }
        if ((this.flags & 16) != 0) {
            this.description_photo = TLRPC.Photo.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 32) != 0) {
            this.description_document = TLRPC.Document.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 4) != 0) {
            this.commands = Vector.deserialize(inputSerializedData, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & 8) != 0) {
            this.menu_button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 128) != 0) {
            this.privacy_policy_url = inputSerializedData.readString(z);
        }
        if ((this.flags & 256) != 0) {
            this.app_settings = TL_bots$botAppSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
            this.verifier_settings = TL_bots$botVerifierSettings.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(1300890265);
        int i = this.has_preview_medias ? this.flags | 64 : this.flags & (-65);
        this.flags = i;
        outputSerializedData.writeInt32(i);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeInt64(this.user_id);
        }
        if ((this.flags & 2) != 0) {
            outputSerializedData.writeString(this.description);
        }
        if ((this.flags & 16) != 0) {
            this.description_photo.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 32) != 0) {
            this.description_document.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 4) != 0) {
            Vector.serialize(outputSerializedData, this.commands);
        }
        if ((this.flags & 8) != 0) {
            this.menu_button.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 128) != 0) {
            outputSerializedData.writeString(this.privacy_policy_url);
        }
        if ((this.flags & 256) != 0) {
            this.app_settings.serializeToStream(outputSerializedData);
        }
        if ((this.flags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
            this.verifier_settings.serializeToStream(outputSerializedData);
        }
    }
}
