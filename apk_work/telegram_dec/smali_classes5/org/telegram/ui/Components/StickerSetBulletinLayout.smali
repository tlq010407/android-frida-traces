.class public Lorg/telegram/ui/Components/StickerSetBulletinLayout;
.super Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$57QwHCV-IjZ3fyt7ykEQYpLyG_I(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;->lambda$new$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H3iEL8c72YVk4MXdEAWXkJoksi0(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;IILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    .line 0
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x1

    move-object/from16 v2, p6

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    move-object v4, v8

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_1
    move-object v12, v4

    goto :goto_3

    :cond_0
    move-object v12, v3

    goto :goto_3

    :cond_1
    instance-of v4, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v4, :cond_4

    move-object v4, v8

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_2

    move-object v4, v6

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    move-object v4, v3

    goto :goto_1

    :cond_4
    if-nez p5, :cond_6

    if-eqz v8, :cond_6

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type of the given setObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    move-object/from16 v12, p5

    move-object v5, v3

    :goto_3
    if-nez v5, :cond_7

    if-eqz v12, :cond_7

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :cond_7
    move-object v13, v5

    if-eqz v12, :cond_10

    const/16 v4, 0x5a

    if-nez v13, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_9

    move-object v3, v12

    :cond_9
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_a

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    invoke-static {v2, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_5
    move-object v6, v2

    goto :goto_8

    :cond_a
    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v4, :cond_b

    move-object v2, v8

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :goto_6
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_c

    move-object v2, v8

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_7
    invoke-static {v3, v12, v2}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_5

    :goto_8
    if-eqz v5, :cond_e

    invoke-static {v12, v10}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-string v4, "50_50"

    move-object v5, v6

    move-object v6, v7

    move v7, v14

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_b

    :cond_e
    if-eqz v6, :cond_f

    iget v2, v6, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v2, v10, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v5, "tgs"

    :goto_9
    const/4 v7, 0x0

    const-string v4, "50_50"

    move-object v3, v6

    move-object v6, v7

    :goto_a
    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v5, "webp"

    goto :goto_9

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v5, "webp"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_a

    :goto_b
    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_11
    const/16 v2, 0x8

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v3

    if-nez v3, :cond_12

    if-nez v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifs:I

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v11

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifsSubtitle:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    :goto_c
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifs:I

    if-eqz v2, :cond_13

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    goto :goto_d

    :cond_13
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v11

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteGifsSubtitlePremium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :pswitch_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    const-string v3, "LimitReachedFavoriteStickers"

    if-nez v2, :cond_14

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickers:I

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitDefault:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickersSubtitle:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "LimitReachedFavoriteStickersSubtitle"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/StickerSetBulletinLayout$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    goto/16 :goto_c

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickers:I

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v11

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->LimitReachedFavoriteStickersSubtitlePremium:I

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "LimitReachedFavoriteStickersSubtitlePremium"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AddedToFavorites:I

    :goto_f
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->RemovedFromFavorites:I

    goto :goto_f

    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->RemovedFromRecent:I

    goto :goto_f

    :pswitch_5
    if-eqz v13, :cond_1d

    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddMasksInstalled:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddMasksInstalledInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "AddMasksInstalledInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_15
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddEmojiInstalled:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    if-le v9, v10, :cond_16

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "AddEmojiMultipleInstalledInfo"

    invoke-static {v3, v9, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_16
    sget v2, Lorg/telegram/messenger/R$string;->AddEmojiInstalledInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "AddEmojiInstalledInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddStickersInstalled:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AddStickersInstalledInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "AddStickersInstalledInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_6
    if-eqz v13, :cond_1d

    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->MasksArchived:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->MasksArchivedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "MasksArchivedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_18
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EmojiArchived:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EmojiArchivedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "EmojiArchivedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->StickersArchived:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->StickersArchivedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "StickersArchivedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_7
    if-eqz v13, :cond_1d

    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->MasksRemoved:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->MasksRemovedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "MasksRemovedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_1a
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EmojiRemoved:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    if-le v9, v10, :cond_1b

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "EmojiRemovedMultipleInfo"

    invoke-static {v3, v9, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_1b
    sget v2, Lorg/telegram/messenger/R$string;->EmojiRemovedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "EmojiRemovedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->StickersRemoved:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->StickersRemovedInfo:I

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v3, "StickersRemovedInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_1d
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;IILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method
