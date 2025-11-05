package org.telegram.tgnet.tl;

import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_account$TL_businessBotRights extends TLObject {
    public boolean change_gift_settings;
    public boolean delete_received_messages;
    public boolean delete_sent_messages;
    public boolean edit_bio;
    public boolean edit_name;
    public boolean edit_profile_photo;
    public boolean edit_username;
    public int flags;
    public boolean manage_stories;
    public boolean read_messages;
    public boolean reply;
    public boolean sell_gifts;
    public boolean transfer_and_upgrade_gifts;
    public boolean transfer_stars;
    public boolean view_gifts;

    public static TL_account$TL_businessBotRights TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != -1604170505) {
            if (z) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_businessBotRights", Integer.valueOf(i)));
            }
            return null;
        }
        TL_account$TL_businessBotRights tL_account$TL_businessBotRights = new TL_account$TL_businessBotRights();
        tL_account$TL_businessBotRights.readParams(inputSerializedData, z);
        return tL_account$TL_businessBotRights;
    }

    public static TL_account$TL_businessBotRights clone(TL_account$TL_businessBotRights tL_account$TL_businessBotRights) {
        TL_account$TL_businessBotRights tL_account$TL_businessBotRights2 = new TL_account$TL_businessBotRights();
        tL_account$TL_businessBotRights2.reply = tL_account$TL_businessBotRights.reply;
        tL_account$TL_businessBotRights2.read_messages = tL_account$TL_businessBotRights.read_messages;
        tL_account$TL_businessBotRights2.delete_sent_messages = tL_account$TL_businessBotRights.delete_sent_messages;
        tL_account$TL_businessBotRights2.delete_received_messages = tL_account$TL_businessBotRights.delete_received_messages;
        tL_account$TL_businessBotRights2.edit_name = tL_account$TL_businessBotRights.edit_name;
        tL_account$TL_businessBotRights2.edit_bio = tL_account$TL_businessBotRights.edit_bio;
        tL_account$TL_businessBotRights2.edit_profile_photo = tL_account$TL_businessBotRights.edit_profile_photo;
        tL_account$TL_businessBotRights2.edit_username = tL_account$TL_businessBotRights.edit_username;
        tL_account$TL_businessBotRights2.view_gifts = tL_account$TL_businessBotRights.view_gifts;
        tL_account$TL_businessBotRights2.sell_gifts = tL_account$TL_businessBotRights.sell_gifts;
        tL_account$TL_businessBotRights2.change_gift_settings = tL_account$TL_businessBotRights.change_gift_settings;
        tL_account$TL_businessBotRights2.transfer_and_upgrade_gifts = tL_account$TL_businessBotRights.transfer_and_upgrade_gifts;
        tL_account$TL_businessBotRights2.transfer_stars = tL_account$TL_businessBotRights.transfer_stars;
        tL_account$TL_businessBotRights2.manage_stories = tL_account$TL_businessBotRights.manage_stories;
        return tL_account$TL_businessBotRights2;
    }

    public static TL_account$TL_businessBotRights makeDefault() {
        TL_account$TL_businessBotRights tL_account$TL_businessBotRights = new TL_account$TL_businessBotRights();
        tL_account$TL_businessBotRights.reply = true;
        tL_account$TL_businessBotRights.read_messages = true;
        tL_account$TL_businessBotRights.delete_sent_messages = true;
        tL_account$TL_businessBotRights.delete_received_messages = true;
        tL_account$TL_businessBotRights.edit_name = false;
        tL_account$TL_businessBotRights.edit_bio = false;
        tL_account$TL_businessBotRights.edit_profile_photo = false;
        tL_account$TL_businessBotRights.edit_username = false;
        tL_account$TL_businessBotRights.view_gifts = false;
        tL_account$TL_businessBotRights.sell_gifts = false;
        tL_account$TL_businessBotRights.change_gift_settings = false;
        tL_account$TL_businessBotRights.transfer_and_upgrade_gifts = false;
        tL_account$TL_businessBotRights.transfer_stars = false;
        tL_account$TL_businessBotRights.manage_stories = false;
        return tL_account$TL_businessBotRights;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TL_account$TL_businessBotRights)) {
            return false;
        }
        TL_account$TL_businessBotRights tL_account$TL_businessBotRights = (TL_account$TL_businessBotRights) obj;
        return this.reply == tL_account$TL_businessBotRights.reply && this.read_messages == tL_account$TL_businessBotRights.read_messages && this.delete_sent_messages == tL_account$TL_businessBotRights.delete_sent_messages && this.delete_received_messages == tL_account$TL_businessBotRights.delete_received_messages && this.edit_name == tL_account$TL_businessBotRights.edit_name && this.edit_bio == tL_account$TL_businessBotRights.edit_bio && this.edit_profile_photo == tL_account$TL_businessBotRights.edit_profile_photo && this.edit_username == tL_account$TL_businessBotRights.edit_username && this.view_gifts == tL_account$TL_businessBotRights.view_gifts && this.sell_gifts == tL_account$TL_businessBotRights.sell_gifts && this.change_gift_settings == tL_account$TL_businessBotRights.change_gift_settings && this.transfer_and_upgrade_gifts == tL_account$TL_businessBotRights.transfer_and_upgrade_gifts && this.transfer_stars == tL_account$TL_businessBotRights.transfer_stars && this.manage_stories == tL_account$TL_businessBotRights.manage_stories;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.reply = (int32 & 1) != 0;
        this.read_messages = (int32 & 2) != 0;
        this.delete_sent_messages = (int32 & 4) != 0;
        this.delete_received_messages = (int32 & 8) != 0;
        this.edit_name = (int32 & 16) != 0;
        this.edit_bio = (int32 & 32) != 0;
        this.edit_profile_photo = (int32 & 64) != 0;
        this.edit_username = (int32 & 128) != 0;
        this.view_gifts = (int32 & 256) != 0;
        this.sell_gifts = (int32 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0;
        this.change_gift_settings = (int32 & 1024) != 0;
        this.transfer_and_upgrade_gifts = (int32 & 2048) != 0;
        this.transfer_stars = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
        this.manage_stories = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0;
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1604170505);
        int i = this.reply ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.read_messages ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.delete_sent_messages ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.delete_received_messages ? i3 | 8 : i3 & (-9);
        this.flags = i4;
        int i5 = this.edit_name ? i4 | 16 : i4 & (-17);
        this.flags = i5;
        int i6 = this.edit_bio ? i5 | 32 : i5 & (-33);
        this.flags = i6;
        int i7 = this.edit_profile_photo ? i6 | 64 : i6 & (-65);
        this.flags = i7;
        int i8 = this.edit_username ? i7 | 128 : i7 & (-129);
        this.flags = i8;
        int i9 = this.view_gifts ? i8 | 256 : i8 & (-257);
        this.flags = i9;
        int i10 = this.sell_gifts ? i9 | LiteMode.FLAG_CALLS_ANIMATIONS : i9 & (-513);
        this.flags = i10;
        int i11 = this.change_gift_settings ? i10 | 1024 : i10 & (-1025);
        this.flags = i11;
        int i12 = this.transfer_and_upgrade_gifts ? i11 | 2048 : i11 & (-2049);
        this.flags = i12;
        int i13 = this.transfer_stars ? i12 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i12 & (-4097);
        this.flags = i13;
        int i14 = this.manage_stories ? i13 | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i13 & (-8193);
        this.flags = i14;
        outputSerializedData.writeInt32(i14);
    }
}
