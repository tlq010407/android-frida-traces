package org.telegram.tgnet.tl;

import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarGift extends TLObject {
    public ArrayList attributes = new ArrayList();
    public int availability_issued;
    public int availability_remains;
    public long availability_resale;
    public int availability_total;
    public boolean birthday;
    public boolean can_upgrade;
    public long convert_stars;
    public int first_sale_date;
    public int flags;
    public String gift_address;
    public long id;
    public int last_sale_date;
    public boolean limited;
    public int num;
    public String owner_address;
    public TLRPC.Peer owner_id;
    public String owner_name;
    public TLRPC.Peer released_by;
    public long resell_min_stars;
    public long resell_stars;
    public String slug;
    public boolean sold_out;
    public long stars;
    public TLRPC.Document sticker;
    public String title;
    public long upgrade_stars;

    public static TL_stars$StarGift TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarGift tL_stars$TL_starGiftUnique;
        switch (i) {
            case -1365150482:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGift() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGift_layer190
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.limited = (int32 & 1) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 1) != 0) {
                            this.availability_remains = inputSerializedData2.readInt32(z2);
                            this.availability_total = inputSerializedData2.readInt32(z2);
                        }
                        this.convert_stars = inputSerializedData2.readInt64(z2);
                        this.sold_out = this.limited && this.availability_remains <= 0;
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1365150482);
                        int i2 = this.limited ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt64(this.id);
                        this.sticker.serializeToStream(outputSerializedData);
                        outputSerializedData.writeInt64(this.stars);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt32(this.availability_remains);
                            outputSerializedData.writeInt32(this.availability_total);
                        }
                        outputSerializedData.writeInt64(this.convert_stars);
                    }
                };
                break;
            case -970274264:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGift() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGift_layer206
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.limited = (int32 & 1) != 0;
                        this.sold_out = (int32 & 2) != 0;
                        this.birthday = (int32 & 4) != 0;
                        this.can_upgrade = (int32 & 8) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 1) != 0) {
                            this.availability_remains = inputSerializedData2.readInt32(z2);
                            this.availability_total = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.availability_resale = inputSerializedData2.readInt64(z2);
                        }
                        this.convert_stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 2) != 0) {
                            this.first_sale_date = inputSerializedData2.readInt32(z2);
                            this.last_sale_date = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.upgrade_stars = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.resell_min_stars = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 32) != 0) {
                            this.title = inputSerializedData2.readString(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-970274264);
                        int i2 = this.limited ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        int i3 = this.sold_out ? i2 | 2 : i2 & (-3);
                        this.flags = i3;
                        int i4 = this.birthday ? i3 | 4 : i3 & (-5);
                        this.flags = i4;
                        int i5 = this.can_upgrade ? i4 | 8 : i4 & (-9);
                        this.flags = i5;
                        outputSerializedData.writeInt32(i5);
                        outputSerializedData.writeInt64(this.id);
                        this.sticker.serializeToStream(outputSerializedData);
                        outputSerializedData.writeInt64(this.stars);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt32(this.availability_remains);
                            outputSerializedData.writeInt32(this.availability_total);
                        }
                        if ((this.flags & 16) != 0) {
                            outputSerializedData.writeInt64(this.availability_resale);
                        }
                        outputSerializedData.writeInt64(this.convert_stars);
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeInt32(this.first_sale_date);
                            outputSerializedData.writeInt32(this.last_sale_date);
                        }
                        if ((this.flags & 8) != 0) {
                            outputSerializedData.writeInt64(this.upgrade_stars);
                        }
                        if ((this.flags & 16) != 0) {
                            outputSerializedData.writeInt64(this.resell_min_stars);
                        }
                        if ((this.flags & 32) != 0) {
                            outputSerializedData.writeString(this.title);
                        }
                    }
                };
                break;
            case -218202550:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique_layer198
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.flags = inputSerializedData2.readInt32(z2);
                        this.id = inputSerializedData2.readInt64(z2);
                        this.title = inputSerializedData2.readString(z2);
                        this.slug = inputSerializedData2.readString(z2);
                        this.num = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.owner_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.owner_name = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.owner_address = inputSerializedData2.readString(z2);
                        }
                        this.attributes = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z2);
                        this.availability_issued = inputSerializedData2.readInt32(z2);
                        this.availability_total = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-218202550);
                        outputSerializedData.writeInt32(this.flags);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeString(this.title);
                        outputSerializedData.writeString(this.slug);
                        outputSerializedData.writeInt32(this.num);
                        if ((this.flags & 1) != 0) {
                            this.owner_id.serializeToStream(outputSerializedData);
                        }
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeString(this.owner_name);
                        }
                        if ((this.flags & 4) != 0) {
                            outputSerializedData.writeString(this.owner_address);
                        }
                        Vector.serialize(outputSerializedData, this.attributes);
                        outputSerializedData.writeInt32(this.availability_issued);
                        outputSerializedData.writeInt32(this.availability_total);
                    }
                };
                break;
            case -164136786:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique();
                break;
            case 46953416:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGift() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGift_layer202
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.limited = (int32 & 1) != 0;
                        this.sold_out = (int32 & 2) != 0;
                        this.birthday = (int32 & 4) != 0;
                        this.can_upgrade = (int32 & 8) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 1) != 0) {
                            this.availability_remains = inputSerializedData2.readInt32(z2);
                            this.availability_total = inputSerializedData2.readInt32(z2);
                        }
                        this.convert_stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 2) != 0) {
                            this.first_sale_date = inputSerializedData2.readInt32(z2);
                            this.last_sale_date = inputSerializedData2.readInt32(z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.upgrade_stars = inputSerializedData2.readInt64(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(46953416);
                        int i2 = this.limited ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        int i3 = this.sold_out ? i2 | 2 : i2 & (-3);
                        this.flags = i3;
                        int i4 = this.birthday ? i3 | 4 : i3 & (-5);
                        this.flags = i4;
                        int i5 = this.can_upgrade ? i4 | 8 : i4 & (-9);
                        this.flags = i5;
                        outputSerializedData.writeInt32(i5);
                        outputSerializedData.writeInt64(this.id);
                        this.sticker.serializeToStream(outputSerializedData);
                        outputSerializedData.writeInt64(this.stars);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt32(this.availability_remains);
                            outputSerializedData.writeInt32(this.availability_total);
                        }
                        outputSerializedData.writeInt64(this.convert_stars);
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeInt32(this.first_sale_date);
                            outputSerializedData.writeInt32(this.last_sale_date);
                        }
                        if ((this.flags & 8) != 0) {
                            outputSerializedData.writeInt64(this.upgrade_stars);
                        }
                    }
                };
                break;
            case 880997154:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique_layer197
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.flags = inputSerializedData2.readInt32(z2);
                        this.id = inputSerializedData2.readInt64(z2);
                        this.title = inputSerializedData2.readString(z2);
                        this.slug = inputSerializedData2.readString(z2);
                        this.num = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                            this.owner_id = tL_peerUser;
                            tL_peerUser.user_id = inputSerializedData2.readInt64(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.owner_name = inputSerializedData2.readString(z2);
                        }
                        this.attributes = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z2);
                        this.availability_issued = inputSerializedData2.readInt32(z2);
                        this.availability_total = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(880997154);
                        outputSerializedData.writeInt32(this.flags);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeString(this.title);
                        outputSerializedData.writeString(this.slug);
                        outputSerializedData.writeInt32(this.num);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt64(this.owner_id.user_id);
                        }
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeString(this.owner_name);
                        }
                        Vector.serialize(outputSerializedData, this.attributes);
                        outputSerializedData.writeInt32(this.availability_issued);
                        outputSerializedData.writeInt32(this.availability_total);
                    }
                };
                break;
            case 1237678029:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGift() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGift_layer195
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.limited = (int32 & 1) != 0;
                        this.sold_out = (int32 & 2) != 0;
                        this.birthday = (int32 & 4) != 0;
                        this.id = inputSerializedData2.readInt64(z2);
                        this.sticker = TLRPC.Document.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        this.stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 1) != 0) {
                            this.availability_remains = inputSerializedData2.readInt32(z2);
                            this.availability_total = inputSerializedData2.readInt32(z2);
                        }
                        this.convert_stars = inputSerializedData2.readInt64(z2);
                        if ((this.flags & 2) != 0) {
                            this.first_sale_date = inputSerializedData2.readInt32(z2);
                            this.last_sale_date = inputSerializedData2.readInt32(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGift, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1237678029);
                        int i2 = this.limited ? this.flags | 1 : this.flags & (-2);
                        this.flags = i2;
                        int i3 = this.sold_out ? i2 | 2 : i2 & (-3);
                        this.flags = i3;
                        int i4 = this.birthday ? i3 | 4 : i3 & (-5);
                        this.flags = i4;
                        outputSerializedData.writeInt32(i4);
                        outputSerializedData.writeInt64(this.id);
                        this.sticker.serializeToStream(outputSerializedData);
                        outputSerializedData.writeInt64(this.stars);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeInt32(this.availability_remains);
                            outputSerializedData.writeInt32(this.availability_total);
                        }
                        outputSerializedData.writeInt64(this.convert_stars);
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeInt32(this.first_sale_date);
                            outputSerializedData.writeInt32(this.last_sale_date);
                        }
                    }
                };
                break;
            case 1549979985:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique_layer202
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.flags = inputSerializedData2.readInt32(z2);
                        this.id = inputSerializedData2.readInt64(z2);
                        this.title = inputSerializedData2.readString(z2);
                        this.slug = inputSerializedData2.readString(z2);
                        this.num = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.owner_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.owner_name = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.owner_address = inputSerializedData2.readString(z2);
                        }
                        this.attributes = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z2);
                        this.availability_issued = inputSerializedData2.readInt32(z2);
                        this.availability_total = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 8) != 0) {
                            this.gift_address = inputSerializedData2.readString(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1549979985);
                        outputSerializedData.writeInt32(this.flags);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeString(this.title);
                        outputSerializedData.writeString(this.slug);
                        outputSerializedData.writeInt32(this.num);
                        if ((this.flags & 1) != 0) {
                            this.owner_id.serializeToStream(outputSerializedData);
                        }
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeString(this.owner_name);
                        }
                        if ((this.flags & 4) != 0) {
                            outputSerializedData.writeString(this.owner_address);
                        }
                        Vector.serialize(outputSerializedData, this.attributes);
                        outputSerializedData.writeInt32(this.availability_issued);
                        outputSerializedData.writeInt32(this.availability_total);
                        if ((this.flags & 8) != 0) {
                            outputSerializedData.writeString(this.gift_address);
                        }
                    }
                };
                break;
            case 1678891913:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique_layer206
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.flags = inputSerializedData2.readInt32(z2);
                        this.id = inputSerializedData2.readInt64(z2);
                        this.title = inputSerializedData2.readString(z2);
                        this.slug = inputSerializedData2.readString(z2);
                        this.num = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.owner_id = TLRPC.Peer.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.owner_name = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.owner_address = inputSerializedData2.readString(z2);
                        }
                        this.attributes = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z2);
                        this.availability_issued = inputSerializedData2.readInt32(z2);
                        this.availability_total = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 8) != 0) {
                            this.gift_address = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 16) != 0) {
                            this.resell_stars = inputSerializedData2.readInt64(z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1678891913);
                        outputSerializedData.writeInt32(this.flags);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeString(this.title);
                        outputSerializedData.writeString(this.slug);
                        outputSerializedData.writeInt32(this.num);
                        if ((this.flags & 1) != 0) {
                            this.owner_id.serializeToStream(outputSerializedData);
                        }
                        if ((this.flags & 2) != 0) {
                            outputSerializedData.writeString(this.owner_name);
                        }
                        if ((this.flags & 4) != 0) {
                            outputSerializedData.writeString(this.owner_address);
                        }
                        Vector.serialize(outputSerializedData, this.attributes);
                        outputSerializedData.writeInt32(this.availability_issued);
                        outputSerializedData.writeInt32(this.availability_total);
                        if ((this.flags & 8) != 0) {
                            outputSerializedData.writeString(this.gift_address);
                        }
                        if ((this.flags & 16) != 0) {
                            outputSerializedData.writeInt64(this.resell_stars);
                        }
                    }
                };
                break;
            case 1779697613:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGiftUnique() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique_layer196
                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        this.id = inputSerializedData2.readInt64(z2);
                        this.title = inputSerializedData2.readString(z2);
                        this.num = inputSerializedData2.readInt32(z2);
                        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                        this.owner_id = tL_peerUser;
                        tL_peerUser.user_id = inputSerializedData2.readInt64(z2);
                        this.attributes = Vector.deserialize(inputSerializedData2, new TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0(), z2);
                        this.availability_issued = inputSerializedData2.readInt32(z2);
                        this.availability_total = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1779697613);
                        outputSerializedData.writeInt64(this.id);
                        outputSerializedData.writeString(this.title);
                        outputSerializedData.writeInt32(this.num);
                        outputSerializedData.writeInt64(this.owner_id.user_id);
                        Vector.serialize(outputSerializedData, this.attributes);
                        outputSerializedData.writeInt32(this.availability_issued);
                        outputSerializedData.writeInt32(this.availability_total);
                    }
                };
                break;
            case 2139438098:
                tL_stars$TL_starGiftUnique = new TL_stars$TL_starGift();
                break;
            default:
                tL_stars$TL_starGiftUnique = null;
                break;
        }
        if (tL_stars$TL_starGiftUnique == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarGift", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starGiftUnique != null) {
            tL_stars$TL_starGiftUnique.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starGiftUnique;
    }

    public TLRPC.Document getDocument() {
        TLRPC.Document document = this.sticker;
        if (document != null) {
            return document;
        }
        Iterator it = this.attributes.iterator();
        while (it.hasNext()) {
            TL_stars$StarGiftAttribute tL_stars$StarGiftAttribute = (TL_stars$StarGiftAttribute) it.next();
            if (tL_stars$StarGiftAttribute instanceof TL_stars$starGiftAttributeModel) {
                return ((TL_stars$starGiftAttributeModel) tL_stars$StarGiftAttribute).document;
            }
        }
        return null;
    }
}
