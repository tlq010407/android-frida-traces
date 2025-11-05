package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarGiftAttribute extends TLObject {
    public String name;
    public int rarity_permille;

    public static TL_stars$StarGiftAttribute TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarGiftAttribute tL_stars$starGiftAttributeBackdrop;
        switch (i) {
            case -1070837941:
                tL_stars$starGiftAttributeBackdrop = new TL_stars$starGiftAttributeOriginalDetails() { // from class: org.telegram.tgnet.tl.TL_stars$starGiftAttributeOriginalDetails_layer197
                    @Override // org.telegram.tgnet.tl.TL_stars$starGiftAttributeOriginalDetails, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        if ((int32 & 1) != 0) {
                            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                            this.recipient_id = tL_peerUser;
                            tL_peerUser.user_id = inputSerializedData2.readInt64(z2);
                        }
                        TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                        this.recipient_id = tL_peerUser2;
                        tL_peerUser2.user_id = inputSerializedData2.readInt64(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 2) != 0) {
                            this.message = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$starGiftAttributeOriginalDetails, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1070837941);
                        outputSerializedData.writeInt32(this.flags);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt64(this.sender_id.user_id);
                        }
                        outputSerializedData.writeInt64(this.recipient_id.user_id);
                        outputSerializedData.writeInt32(this.date);
                        if ((this.flags & 2) != 0) {
                            this.message.serializeToStream(outputSerializedData);
                        }
                    }
                };
                break;
            case -650279524:
                tL_stars$starGiftAttributeBackdrop = new TL_stars$starGiftAttributeBackdrop();
                break;
            case -524291476:
                tL_stars$starGiftAttributeBackdrop = new TL_stars$starGiftAttributeOriginalDetails();
                break;
            case 330104601:
                tL_stars$starGiftAttributeBackdrop = new TL_stars$starGiftAttributePattern();
                break;
            case 970559507:
                tL_stars$starGiftAttributeBackdrop = new TL_stars$starGiftAttributeModel();
                break;
            default:
                tL_stars$starGiftAttributeBackdrop = null;
                break;
        }
        if (tL_stars$starGiftAttributeBackdrop == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarGiftAttribute", Integer.valueOf(i)));
        }
        if (tL_stars$starGiftAttributeBackdrop != null) {
            tL_stars$starGiftAttributeBackdrop.readParams(inputSerializedData, z);
        }
        return tL_stars$starGiftAttributeBackdrop;
    }
}
