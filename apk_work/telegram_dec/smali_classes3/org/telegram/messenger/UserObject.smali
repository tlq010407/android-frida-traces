.class public Lorg/telegram/messenger/UserObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANONYMOUS:J = 0x28ae10L

.field public static final REPLY_BOT:J = 0x4bc5fe8dL

.field public static final VERIFY:J = 0x77628L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyRequirementToContact(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z
    .locals 7

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactEmpty;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-nez p1, :cond_1

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    :goto_0
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 p1, p1, -0x4001

    :goto_1
    iput p1, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    iput-wide v3, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    goto :goto_2

    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-eqz p1, :cond_3

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    return v0

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    if-eqz v1, :cond_6

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-nez p1, :cond_5

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_5

    return v0

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    iget p1, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit16 p1, p1, 0x4000

    goto :goto_1

    :goto_2
    return v2

    :cond_6
    return v0
.end method

.method public static applyRequirementToContact(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z
    .locals 7

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactEmpty;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-nez p1, :cond_1

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    :goto_0
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 p1, p1, -0x4001

    :goto_1
    iput p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-wide v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    goto :goto_2

    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-eqz p1, :cond_3

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    return v0

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    if-eqz v1, :cond_6

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-nez p1, :cond_5

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_5

    return v0

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit16 p1, p1, 0x4000

    goto :goto_1

    :goto_2
    return v2

    :cond_6
    return v0
.end method

.method public static areGiftsDisabled(J)Z
    .locals 1

    .line 0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result p0

    return p0
.end method

.method public static areGiftsDisabled(Lorg/telegram/tgnet/TLRPC$UserFull;)Z
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static eq(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z
    .locals 5

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactEmpty;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactEmpty;

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    const/4 v0, 0x1

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    instance-of v2, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v2, :cond_4

    return v0

    :cond_4
    instance-of v2, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    if-eqz v2, :cond_5

    instance-of v2, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    if-eqz v2, :cond_5

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    iget-wide v2, p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    iget-wide p0, p1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    cmp-long v4, v2, p0

    if-nez v4, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static getColorId(Lorg/telegram/tgnet/TLRPC$User;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget p0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    return p0

    :cond_1
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v2, 0x7

    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J
    .locals 2

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz p0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v2, v4

    if-gt v1, v2, :cond_2

    return-object v0

    :cond_2
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_5

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v2, v4

    if-gt v1, v2, :cond_4

    return-object v0

    :cond_4
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->document_id:J

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;
    .locals 0

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;
    .locals 2

    .line 0
    if-eqz p0, :cond_4

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    const-string p0, "DELETED"

    return-object p0
.end method

.method public static getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    sget p0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, " "

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static getPeerColorForAvatar(ILorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoto(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->hasPhoto(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getProfileCollectibleId(Lorg/telegram/tgnet/TLRPC$User;)J
    .locals 2

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz p0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    return-wide v0

    :cond_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz p0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;
    .locals 4

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getRequirementToContact(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;-><init>()V

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    return-object v0

    :cond_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-eqz p0, :cond_2

    new-instance p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;-><init>()V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getRequirementToContact(Lorg/telegram/tgnet/TLRPC$UserFull;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;-><init>()V

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    return-object v0

    :cond_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-eqz p0, :cond_2

    new-instance p0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;-><init>()V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeRTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    sget p0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasFallbackPhoto(Lorg/telegram/tgnet/TLRPC$UserFull;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPhoto(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPublicUsername(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_2

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 4

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v2, 0x28ae10

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBot(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isContact(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isReplyUser(J)Z
    .locals 3

    .line 0
    const-wide/32 v0, 0xacfa1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/32 v0, 0x4bc5fe8d

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 4

    .line 0
    if-eqz p0, :cond_1

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v2, 0xacfa1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-wide/32 v2, 0x4bc5fe8d

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isService(J)Z
    .locals 3

    const-wide/32 v0, 0x514c8

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/32 v0, 0xbdb28

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/32 v0, 0xa719

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
