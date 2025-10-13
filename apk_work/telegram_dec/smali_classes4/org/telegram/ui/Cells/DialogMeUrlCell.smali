.class public Lorg/telegram/ui/Cells/DialogMeUrlCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "SourceFile"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarTop:I

.field private currentAccount:I

.field private drawNameLock:Z

.field private drawVerified:Z

.field private isSelected:Z

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

.field public useSeparator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageTop:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarTop:I

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 19

    move-object/from16 v1, p0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v11, v0, v2

    iput-boolean v2, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v3, :cond_1

    iget v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_0
    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_2
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {v6, v0, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;

    if-eqz v3, :cond_6

    iget v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3
    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_4

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_5

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x41840000    # 16.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_5
    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_5

    :cond_4
    :goto_6
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    :cond_6
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;

    const/4 v6, 0x0

    const-wide/16 v7, 0x5

    if-eqz v3, :cond_8

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_7

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_7
    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_8

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_7

    :goto_8
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v7, v8, v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_f

    :cond_8
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;

    if-eqz v3, :cond_c

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_9

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_9
    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_a

    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_9

    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_a

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v3, v8, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v3, v6

    goto :goto_b

    :cond_a
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v7, v8, v0, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x32

    invoke-static {v3, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v14, "50_50"

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    move-object v3, v0

    :goto_b
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_b

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_c
    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_f

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_c

    :cond_c
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUnknown;

    if-eqz v3, :cond_e

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_d

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_d
    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_e

    :cond_d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_d

    :goto_e
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v3, "Url"

    goto :goto_f

    :cond_e
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v3, ""

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_f
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    sub-int/2addr v0, v6

    :goto_10
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    sub-int/2addr v0, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    goto :goto_10

    :goto_11
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    if-eqz v4, :cond_11

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v4, v6

    sub-int/2addr v0, v4

    :cond_11
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    const/high16 v14, 0x40c00000    # 6.0f

    if-eqz v4, :cond_12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v4, v6

    sub-int/2addr v0, v4

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_12

    iget v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    add-int/2addr v6, v4

    iput v6, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    :cond_12
    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v0, 0xa

    const/16 v4, 0x20

    :try_start_0
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v15, v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v0

    move v6, v15

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_14

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_13

    const/high16 v3, 0x41500000    # 13.0f

    goto :goto_13

    :cond_13
    const/high16 v3, 0x41100000    # 9.0f

    :goto_13
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_15

    :cond_14
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_15

    const/high16 v4, 0x42820000    # 65.0f

    goto :goto_14

    :cond_15
    const/high16 v4, 0x42740000    # 61.0f

    :goto_14
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_15
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v3, v3

    iget v5, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarTop:I

    int-to-float v5, v5

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v3, v5, v7, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v12, v11, v0, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    :try_start_1
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v6, v0

    move-object v8, v11

    move v9, v3

    move v11, v4

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_16
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    iget-boolean v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v7, :cond_16

    iget v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v7, v7

    int-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    :cond_16
    cmpl-float v0, v0, v4

    if-nez v0, :cond_17

    int-to-double v7, v15

    cmpg-double v0, v5, v7

    if-gez v0, :cond_17

    iget v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v9, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v7

    double-to-int v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    :cond_17
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    int-to-double v2, v3

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1b

    iget v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-double v6, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v2

    :goto_17
    double-to-int v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    goto/16 :goto_18

    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    int-to-float v4, v15

    cmpl-float v4, v0, v4

    if-nez v4, :cond_19

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    int-to-double v6, v15

    cmpg-double v8, v4, v6

    if-gez v8, :cond_19

    iget v8, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v6

    double-to-int v4, v8

    iput v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    :cond_19
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v4, :cond_1a

    iget v4, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    int-to-double v2, v3

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1b

    iget v0, v1, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-double v6, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v2

    goto :goto_17

    :cond_1b
    :goto_18
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-float v0, v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->useSeparator:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    :goto_1
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42900000    # 72.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->useSeparator:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    return-void
.end method

.method public setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
