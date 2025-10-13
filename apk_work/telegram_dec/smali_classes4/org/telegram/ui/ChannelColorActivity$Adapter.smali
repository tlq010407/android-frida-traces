.class public Lorg/telegram/ui/ChannelColorActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public static synthetic $r8$lambda$6LiziAQu1JfYC399vaX41Gsyk1A(Lorg/telegram/ui/ChannelColorActivity$Adapter;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q90784XX98kvOVMWQd4bJSTJwHo(Lorg/telegram/ui/ChannelColorActivity$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wLc-5xcXftoXAqktkIKIHyOBqi4(Lorg/telegram/ui/ChannelColorActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity$Adapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :goto_0
    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_1

    :cond_0
    const-string v0, "\u274c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->toColorId(I)I

    move-result p3

    iput p3, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateMessagesPreview(Z)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x42400000    # 48.0f

    if-ge p3, v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p3, p2

    neg-int p2, p3

    invoke-virtual {p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    iget-object p3, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateButton(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChannelColorActivity;->updateProfilePreview(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->rowsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->messagesPreviewRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperThemesRow:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->profilePreviewRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->replyColorListRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->profileColorGridRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    if-eq p1, v1, :cond_8

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    if-eq p1, v1, :cond_8

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    if-eq p1, v1, :cond_8

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packEmojiRow:I

    if-eq p1, v1, :cond_8

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packStickerRow:I

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperRow:I

    if-eq p1, v1, :cond_7

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    return p1

    :cond_7
    :goto_0
    const/4 p1, 0x5

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x6

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v3, 0x3

    if-eq v0, v3, :cond_18

    const/4 v3, 0x4

    if-eq v0, v3, :cond_17

    const/4 v3, 0x5

    if-eq v0, v3, :cond_14

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->replyHintRow:I

    if-ne p2, v1, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->ChannelReplyInfo:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->wallpaperHintRow:I

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getWallpaper2InfoStrRes()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->profileHintRow:I

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getProfileInfoStrRes()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->statusHintRow:I

    if-ne p2, v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStatusInfoStrRes()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packEmojiHintRow:I

    if-ne p2, v1, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiPackInfoStrRes()I

    move-result v0

    goto :goto_0

    :cond_5
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packStickerHintRow:I

    if-ne p2, v1, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getStickerPackInfoStrRes()I

    move-result v0

    goto :goto_0

    :cond_6
    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorShadowRow:I

    if-ne p2, v0, :cond_7

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v2, v1, Lorg/telegram/ui/ChannelColorActivity;->statusHintRow:I

    if-ne p2, v2, :cond_8

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_2

    :cond_8
    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$3300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, p2, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setDivider(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v3, v0, Lorg/telegram/ui/ChannelColorActivity;->replyEmojiRow:I

    if-ne p2, v3, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2700(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    sget p2, Lorg/telegram/messenger/R$string;->ChannelReplyLogo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    if-ge v0, p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyEmoji:J

    :goto_4
    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZZ)V

    goto/16 :goto_9

    :cond_b
    iget v3, v0, Lorg/telegram/ui/ChannelColorActivity;->profileEmojiRow:I

    if-ne p2, v3, :cond_e

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2800(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileLogo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ltz p2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setDivider(Z)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getProfileIconLevelMin()I

    move-result p2

    if-ge v0, p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getProfileIconLevelMin()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    goto :goto_6

    :cond_d
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    goto :goto_4

    :cond_e
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->statusEmojiRow:I

    if-ne p2, v1, :cond_10

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2900(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStatusStrRes()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStatusLevelMin()I

    move-result p2

    if-ge v0, p2, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStatusLevelMin()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    goto :goto_7

    :cond_f
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(JZZ)V

    goto/16 :goto_9

    :cond_10
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packEmojiRow:I

    if-ne p2, v1, :cond_12

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setAdaptiveEmojiColor(IIZ)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiPackStrRes()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStickersLevelMin()I

    move-result p2

    if-ge v0, p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getEmojiStickersLevelMin()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    goto :goto_8

    :cond_11
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChannelColorActivity;->access$3100(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$StickerSet;)J

    move-result-wide v0

    goto/16 :goto_4

    :cond_12
    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->packStickerRow:I

    if-ne p2, v1, :cond_1a

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getStickerPackStrRes()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setLockLevel(I)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, v0, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChannelColorActivity;->access$3200(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_9

    :cond_13
    const-wide/16 v0, 0x0

    goto/16 :goto_4

    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v0, Lorg/telegram/ui/ChannelColorActivity;->removeProfileColorRow:I

    if-ne p2, v1, :cond_15

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileColorReset:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->getWallpaperStrRes()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, p2, Lorg/telegram/ui/ChannelColorActivity;->currentLevel:I

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getCustomWallpaperLevelMin()I

    move-result p2

    if-ge v0, p2, :cond_16

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelColorActivity;->getCustomWallpaperLevelMin()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Cells/TextCell;->setLockLevel(ZI)V

    goto :goto_9

    :cond_16
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setLockLevel(ZI)V

    goto :goto_9

    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    goto :goto_9

    :cond_18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->setSelected(IZ)V

    goto :goto_9

    :cond_19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->backgroundView:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3400(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {p2, v0, v1, v2, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZZ)V

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->isForum()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setForum(Z)V

    iget-object p2, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZZ)V

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget p2, p2, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    :cond_1a
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 p1, 0x4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelColorActivity;->getMessagePreviewType()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v5, v1, Lorg/telegram/ui/ChannelColorActivity;->dialogId:J

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean v0, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->customAnimation:Z

    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iput-object p1, p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$1500(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v2}, Lorg/telegram/ui/ChannelColorActivity;->access$900(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$1600(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelColorActivity;->access$1700(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, p1, v2, v1, v3}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setWithRemovedStub(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$1800(Lorg/telegram/ui/ChannelColorActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChannelColorActivity;->galleryWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setOnEmoticonSelected(Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$1900(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ChannelColorActivity$EmojiCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2000(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$2100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_0

    :cond_4
    if-ne p2, p1, :cond_5

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$2200(Lorg/telegram/ui/ChannelColorActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelColorActivity;->access$2300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, p1, v0, v1, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setDivider(Z)V

    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelColorActivity$Adapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelColorActivity$Adapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_0

    :cond_5
    if-ne p2, v0, :cond_6

    new-instance p2, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;-><init>(Lorg/telegram/ui/ChannelColorActivity;Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const/16 p1, 0x8

    if-ne p2, p1, :cond_7

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    :cond_7
    const/16 p1, 0x9

    if-ne p2, p1, :cond_8

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2500(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v2, v0}, Lorg/telegram/ui/PeerColorActivity$GiftCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_8
    const/16 p1, 0xa

    if-ne p2, p1, :cond_9

    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity;->access$2600(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p1, 0x23

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_1

    :cond_9
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZZ)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget v1, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileColor:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-wide v2, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedProfileEmoji:J

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZZ)V

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v2

    iget-object v5, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChannelColorActivity;->selectedStatusEmoji:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v5

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZZ)V

    iget-object v1, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelColorActivity;->isForum()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setForum(Z)V

    iget-object v0, v0, Lorg/telegram/ui/ChannelColorActivity$ProfilePreview;->profileView:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget v1, v1, Lorg/telegram/ui/ChannelColorActivity;->selectedReplyColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChannelColorActivity;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$Adapter;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelColorActivity;->access$3500(Lorg/telegram/ui/ChannelColorActivity;Landroid/view/View;)V

    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
