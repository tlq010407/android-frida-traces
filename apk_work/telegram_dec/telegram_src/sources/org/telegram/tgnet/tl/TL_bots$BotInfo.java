package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_bots$BotInfo extends TLObject {
    public TL_bots$botAppSettings app_settings;
    public ArrayList commands = new ArrayList();
    public String description;
    public TLRPC.Document description_document;
    public TLRPC.Photo description_photo;
    public int flags;
    public boolean has_preview_medias;
    public TL_bots$BotMenuButton menu_button;
    public String privacy_policy_url;
    public long user_id;
    public TL_bots$botVerifierSettings verifier_settings;
    public int version;

    public static TL_bots$BotInfo TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_bots$BotInfo tL_bots$TL_botInfo;
        switch (i) {
            case -2109505932:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer192
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.has_preview_medias = (int32 & 64) != 0;
                        if ((int32 & 1) != 0) {
                            this.user_id = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.description_photo = TLRPC.Photo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.description_document = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.menu_button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.privacy_policy_url = inputSerializedData2.readString(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-2109505932);
                        int i2 = this.has_preview_medias ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
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
                    }
                };
                break;
            case -1892676777:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer185
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.has_preview_medias = (int32 & 64) != 0;
                        if ((int32 & 1) != 0) {
                            this.user_id = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.description_photo = TLRPC.Photo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.description_document = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.menu_button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1892676777);
                        int i2 = this.has_preview_medias ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
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
                    }
                };
                break;
            case -1729618630:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer131
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.user_id = inputSerializedData2.readInt32(z2);
                        this.description = inputSerializedData2.readString(z2);
                        this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1729618630);
                        outputSerializedData.writeInt32((int) this.user_id);
                        outputSerializedData.writeString(this.description);
                        Vector.serialize(outputSerializedData, this.commands);
                    }
                };
                break;
            case -1154598962:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfoEmpty_layer48
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1154598962);
                    }
                };
                break;
            case -468280483:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer140
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.user_id = inputSerializedData2.readInt64(z2);
                        this.description = inputSerializedData2.readString(z2);
                        this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                        this.menu_button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-468280483);
                        outputSerializedData.writeInt64(this.user_id);
                        outputSerializedData.writeString(this.description);
                        Vector.serialize(outputSerializedData, this.commands);
                        this.menu_button.serializeToStream(outputSerializedData);
                    }
                };
                break;
            case 164583517:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer48
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.user_id = inputSerializedData2.readInt32(z2);
                        this.version = inputSerializedData2.readInt32(z2);
                        inputSerializedData2.readString(z2);
                        this.description = inputSerializedData2.readString(z2);
                        this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(164583517);
                        outputSerializedData.writeInt32((int) this.user_id);
                        outputSerializedData.writeInt32(this.version);
                        outputSerializedData.writeString("");
                        outputSerializedData.writeString(this.description);
                        Vector.serialize(outputSerializedData, this.commands);
                    }
                };
                break;
            case 460632885:
                tL_bots$TL_botInfo = new TL_bots$BotInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer139
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.user_id = inputSerializedData2.readInt64(z2);
                        this.description = inputSerializedData2.readString(z2);
                        this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(460632885);
                        outputSerializedData.writeInt64(this.user_id);
                        outputSerializedData.writeString(this.description);
                        Vector.serialize(outputSerializedData, this.commands);
                    }
                };
                break;
            case 912290611:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo() { // from class: org.telegram.tgnet.tl.TL_bots$TL_botInfo_layer195
                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.has_preview_medias = (int32 & 64) != 0;
                        if ((int32 & 1) != 0) {
                            this.user_id = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.description = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.description_photo = TLRPC.Photo.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.description_document = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.commands = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.menu_button = TL_bots$BotMenuButton.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 128) != 0) {
                            this.privacy_policy_url = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 256) != 0) {
                            this.app_settings = TL_bots$botAppSettings.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_bots$TL_botInfo, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(912290611);
                        int i2 = this.has_preview_medias ? this.flags | 64 : this.flags & (-65);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
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
                    }
                };
                break;
            case 1300890265:
                tL_bots$TL_botInfo = new TL_bots$TL_botInfo();
                break;
            default:
                tL_bots$TL_botInfo = null;
                break;
        }
        if (tL_bots$TL_botInfo == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in BotInfo", Integer.valueOf(i)));
        }
        if (tL_bots$TL_botInfo != null) {
            tL_bots$TL_botInfo.readParams(inputSerializedData, z);
        }
        return tL_bots$TL_botInfo;
    }
}
