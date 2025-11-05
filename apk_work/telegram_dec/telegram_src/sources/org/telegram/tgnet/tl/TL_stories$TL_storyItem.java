package org.telegram.tgnet.tl;

import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class TL_stories$TL_storyItem extends TL_stories$StoryItem {
    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        this.flags = int32;
        this.pinned = (int32 & 32) != 0;
        this.isPublic = (int32 & 128) != 0;
        this.close_friends = (int32 & 256) != 0;
        this.min = (int32 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0;
        this.noforwards = (int32 & 1024) != 0;
        this.edited = (int32 & 2048) != 0;
        this.contacts = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
        this.selected_contacts = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0;
        this.out = (int32 & 65536) != 0;
        this.id = inputSerializedData.readInt32(z);
        this.date = inputSerializedData.readInt32(z);
        if ((this.flags & 262144) != 0) {
            this.from_id = TLRPC.Peer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & 131072) != 0) {
            this.fwd_from = TL_stories$StoryFwdHeader.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        this.expire_date = inputSerializedData.readInt32(z);
        if ((this.flags & 1) != 0) {
            this.caption = inputSerializedData.readString(z);
        }
        if ((this.flags & 2) != 0) {
            this.entities = Vector.deserialize(inputSerializedData, new MessagesStorage$$ExternalSyntheticLambda40(), z);
        }
        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            this.media_areas = Vector.deserialize(inputSerializedData, new TL_stories$TL_storyItem$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & 4) != 0) {
            this.privacy = Vector.deserialize(inputSerializedData, new TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0(), z);
        }
        if ((this.flags & 8) != 0) {
            this.views = TL_stories$StoryViews.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.sent_reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(2041735716);
        int i = this.pinned ? this.flags | 32 : this.flags & (-33);
        this.flags = i;
        int i2 = this.isPublic ? i | 128 : i & (-129);
        this.flags = i2;
        int i3 = this.close_friends ? i2 | 256 : i2 & (-257);
        this.flags = i3;
        int i4 = this.min ? i3 | LiteMode.FLAG_CALLS_ANIMATIONS : i3 & (-513);
        this.flags = i4;
        int i5 = this.noforwards ? i4 | 1024 : i4 & (-1025);
        this.flags = i5;
        int i6 = this.edited ? i5 | 2048 : i5 & (-2049);
        this.flags = i6;
        int i7 = this.contacts ? i6 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i6 & (-4097);
        this.flags = i7;
        int i8 = this.selected_contacts ? i7 | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i7 & (-8193);
        this.flags = i8;
        int i9 = this.out ? i8 | 65536 : i8 & (-65537);
        this.flags = i9;
        outputSerializedData.writeInt32(i9);
        outputSerializedData.writeInt32(this.id);
        outputSerializedData.writeInt32(this.date);
        if ((this.flags & 262144) != 0) {
            this.from_id.serializeToStream(outputSerializedData);
        }
        if ((this.flags & 131072) != 0) {
            this.fwd_from.serializeToStream(outputSerializedData);
        }
        outputSerializedData.writeInt32(this.expire_date);
        if ((this.flags & 1) != 0) {
            outputSerializedData.writeString(this.caption);
        }
        if ((this.flags & 2) != 0) {
            Vector.serialize(outputSerializedData, this.entities);
        }
        this.media.serializeToStream(outputSerializedData);
        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
            Vector.serialize(outputSerializedData, this.media_areas);
        }
        if ((this.flags & 4) != 0) {
            Vector.serialize(outputSerializedData, this.privacy);
        }
        if ((this.flags & 8) != 0) {
            this.views.serializeToStream(outputSerializedData);
        }
        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
            this.sent_reaction.serializeToStream(outputSerializedData);
        }
    }
}
