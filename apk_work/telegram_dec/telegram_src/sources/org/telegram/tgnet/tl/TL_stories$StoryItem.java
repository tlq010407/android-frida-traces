package org.telegram.tgnet.tl;

import java.util.ArrayList;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stories$StoryItem extends TLObject {
    public String attachPath;
    public String caption;
    public boolean close_friends;
    public boolean contacts;
    public int date;
    public String detectedLng;
    public long dialogId;
    public boolean edited;
    public int expire_date;
    public int fileReference;
    public String firstFramePath;
    public int flags;
    public TLRPC.Peer from_id;
    public TL_stories$StoryFwdHeader fwd_from;
    public int id;
    public boolean isPublic;
    public boolean justUploaded;
    public long lastUpdateTime;
    public TLRPC.MessageMedia media;
    public int messageId;
    public int messageType;
    public boolean min;
    public boolean noforwards;
    public boolean out;
    public StoryPrivacyBottomSheet.StoryPrivacy parsedPrivacy;
    public boolean pinned;
    public boolean selected_contacts;
    public TLRPC.Reaction sent_reaction;
    public boolean translated;
    public String translatedLng;
    public TLRPC.TL_textWithEntities translatedText;
    public TL_stories$StoryViews views;
    public ArrayList entities = new ArrayList();
    public ArrayList media_areas = new ArrayList();
    public ArrayList privacy = new ArrayList();

    public static TL_stories$StoryItem TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stories$StoryItem tL_stories$TL_storyItemDeleted;
        switch (i) {
            case -1352440415:
                tL_stories$TL_storyItemDeleted = new TL_stories$TL_storyItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItem_layer174
                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
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
                        this.id = inputSerializedData2.readInt32(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 131072) != 0) {
                            this.fwd_from = TL_stories$StoryFwdHeader.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        this.expire_date = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.caption = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.entities = Vector.deserialize(inputSerializedData2, new MessagesStorage$$ExternalSyntheticLambda40(), z2);
                        }
                        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.media_areas = Vector.deserialize(inputSerializedData2, new TL_stories$TL_storyItem$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.privacy = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.views = TL_stories$StoryViews.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.sent_reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1352440415);
                        int i2 = this.pinned ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.isPublic ? i2 | 128 : i2 & (-129);
                        this.flags = i3;
                        int i4 = this.close_friends ? i3 | 256 : i3 & (-257);
                        this.flags = i4;
                        int i5 = this.min ? i4 | LiteMode.FLAG_CALLS_ANIMATIONS : i4 & (-513);
                        this.flags = i5;
                        int i6 = this.noforwards ? i5 | 1024 : i5 & (-1025);
                        this.flags = i6;
                        int i7 = this.edited ? i6 | 2048 : i6 & (-2049);
                        this.flags = i7;
                        int i8 = this.contacts ? i7 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i7 & (-4097);
                        this.flags = i8;
                        int i9 = this.selected_contacts ? i8 | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i8 & (-8193);
                        this.flags = i9;
                        int i10 = this.out ? i9 | 65536 : i9 & (-65537);
                        this.flags = i10;
                        outputSerializedData.writeInt32(i10);
                        outputSerializedData.writeInt32(this.id);
                        outputSerializedData.writeInt32(this.date);
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
                };
                break;
            case -5388013:
                tL_stories$TL_storyItemDeleted = new TL_stories$StoryItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItemSkipped
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.close_friends = (int32 & 256) != 0;
                        this.id = inputSerializedData2.readInt32(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.expire_date = inputSerializedData2.readInt32(z2);
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-5388013);
                        int i2 = this.close_friends ? this.flags | 256 : this.flags & (-257);
                        this.flags = i2;
                        outputSerializedData.writeInt32(i2);
                        outputSerializedData.writeInt32(this.id);
                        outputSerializedData.writeInt32(this.date);
                        outputSerializedData.writeInt32(this.expire_date);
                    }
                };
                break;
            case 1153718222:
                tL_stories$TL_storyItemDeleted = new TL_stories$TL_storyItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItem_layer166
                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
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
                        this.id = inputSerializedData2.readInt32(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.expire_date = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.caption = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.entities = Vector.deserialize(inputSerializedData2, new MessagesStorage$$ExternalSyntheticLambda40(), z2);
                        }
                        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM) != 0) {
                            this.media_areas = Vector.deserialize(inputSerializedData2, new TL_stories$TL_storyItem$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 4) != 0) {
                            this.privacy = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.views = TL_stories$StoryViews.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                        if ((this.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                            this.sent_reaction = TLRPC.Reaction.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1153718222);
                        int i2 = this.pinned ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.isPublic ? i2 | 128 : i2 & (-129);
                        this.flags = i3;
                        int i4 = this.close_friends ? i3 | 256 : i3 & (-257);
                        this.flags = i4;
                        int i5 = this.min ? i4 | LiteMode.FLAG_CALLS_ANIMATIONS : i4 & (-513);
                        this.flags = i5;
                        int i6 = this.noforwards ? i5 | 1024 : i5 & (-1025);
                        this.flags = i6;
                        int i7 = this.edited ? i6 | 2048 : i6 & (-2049);
                        this.flags = i7;
                        int i8 = this.contacts ? i7 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i7 & (-4097);
                        this.flags = i8;
                        int i9 = this.selected_contacts ? i8 | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i8 & (-8193);
                        this.flags = i9;
                        int i10 = this.out ? i9 | 65536 : i9 & (-65537);
                        this.flags = i10;
                        outputSerializedData.writeInt32(i10);
                        outputSerializedData.writeInt32(this.id);
                        outputSerializedData.writeInt32(this.date);
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
                };
                break;
            case 1374088783:
                tL_stories$TL_storyItemDeleted = new TL_stories$TL_storyItemDeleted();
                break;
            case 1445635639:
                tL_stories$TL_storyItemDeleted = new TL_stories$TL_storyItem() { // from class: org.telegram.tgnet.tl.TL_stories$TL_storyItem_layer160
                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                        int int32 = inputSerializedData2.readInt32(z2);
                        this.flags = int32;
                        this.pinned = (int32 & 32) != 0;
                        this.isPublic = (int32 & 128) != 0;
                        this.close_friends = (int32 & 256) != 0;
                        this.min = (int32 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0;
                        this.noforwards = (int32 & 1024) != 0;
                        this.edited = (int32 & 2048) != 0;
                        this.contacts = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 0;
                        this.selected_contacts = (int32 & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0;
                        this.id = inputSerializedData2.readInt32(z2);
                        this.date = inputSerializedData2.readInt32(z2);
                        this.expire_date = inputSerializedData2.readInt32(z2);
                        if ((this.flags & 1) != 0) {
                            this.caption = inputSerializedData2.readString(z2);
                        }
                        if ((this.flags & 2) != 0) {
                            this.entities = Vector.deserialize(inputSerializedData2, new MessagesStorage$$ExternalSyntheticLambda40(), z2);
                        }
                        this.media = TLRPC.MessageMedia.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        if ((this.flags & 4) != 0) {
                            this.privacy = Vector.deserialize(inputSerializedData2, new TLRPC$TL_updatePrivacy$$ExternalSyntheticLambda0(), z2);
                        }
                        if ((this.flags & 8) != 0) {
                            this.views = TL_stories$StoryViews.TLdeserialize(inputSerializedData2, inputSerializedData2.readInt32(z2), z2);
                        }
                    }

                    @Override // org.telegram.tgnet.tl.TL_stories$TL_storyItem, org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1445635639);
                        int i2 = this.pinned ? this.flags | 32 : this.flags & (-33);
                        this.flags = i2;
                        int i3 = this.isPublic ? i2 | 128 : i2 & (-129);
                        this.flags = i3;
                        int i4 = this.close_friends ? i3 | 256 : i3 & (-257);
                        this.flags = i4;
                        int i5 = this.min ? i4 | LiteMode.FLAG_CALLS_ANIMATIONS : i4 & (-513);
                        this.flags = i5;
                        int i6 = this.noforwards ? i5 | 1024 : i5 & (-1025);
                        this.flags = i6;
                        int i7 = this.edited ? i6 | 2048 : i6 & (-2049);
                        this.flags = i7;
                        int i8 = this.contacts ? i7 | LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM : i7 & (-4097);
                        this.flags = i8;
                        int i9 = this.selected_contacts ? i8 | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i8 & (-8193);
                        this.flags = i9;
                        outputSerializedData.writeInt32(i9);
                        outputSerializedData.writeInt32(this.id);
                        outputSerializedData.writeInt32(this.date);
                        outputSerializedData.writeInt32(this.expire_date);
                        if ((this.flags & 1) != 0) {
                            outputSerializedData.writeString(this.caption);
                        }
                        if ((this.flags & 2) != 0) {
                            Vector.serialize(outputSerializedData, this.entities);
                        }
                        this.media.serializeToStream(outputSerializedData);
                        if ((this.flags & 4) != 0) {
                            Vector.serialize(outputSerializedData, this.privacy);
                        }
                        if ((this.flags & 8) != 0) {
                            this.views.serializeToStream(outputSerializedData);
                        }
                    }
                };
                break;
            case 2041735716:
                tL_stories$TL_storyItemDeleted = new TL_stories$TL_storyItem();
                break;
            default:
                tL_stories$TL_storyItemDeleted = null;
                break;
        }
        if (tL_stories$TL_storyItemDeleted == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StoryItem", Integer.valueOf(i)));
        }
        if (tL_stories$TL_storyItemDeleted != null) {
            tL_stories$TL_storyItemDeleted.readParams(inputSerializedData, z);
        }
        return tL_stories$TL_storyItemDeleted;
    }
}
