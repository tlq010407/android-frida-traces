.class public final Lorg/telegram/ui/Components/BulletinFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BulletinFactory$UndoObject;,
        Lorg/telegram/ui/Components/BulletinFactory$FileType;
    }
.end annotation


# instance fields
.field private final containerLayout:Landroid/widget/FrameLayout;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$4nMiwG2pwddTbafjYrNEajoYRFs(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8J3OiIFslIyIXkHdLTVDv63vF-s()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createDownloadBulletin$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bNvrD_IXAgHTRtL8BQwlhaZLiQI(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$1(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cmdwCWTjWScaKVp1N2mPSyjQJGc([ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createForwardedBulletin$6([ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$efZiD0xXuti1KR9p63wAu8mw3Qo(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjFmkJXXjN4xDfr4GJX14k_w6Wg(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createInviteSentBulletin$5(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9EtOcsiEQq5tWAmMCGKcHX1oHw(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createForwardedBulletin$8(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGqRMmPy33W71zUl4SsdlueKl8w(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createForwardedBulletin$7(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$yygjfMhXwGKIBOss6ktGnM1K6ow(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$2(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getContainerForBulletin()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    :goto_1
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createAddedAsAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserAddedAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserAddedAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createBanBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Finger 3"

    const-string v2, "Finger 4"

    const-string v3, "Main"

    const-string v4, "Finger 1"

    const-string v5, "Finger 2"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 12

    .line 0
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIILjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIILjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 17

    .line 0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    const/4 v9, 0x0

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    if-gt v2, v12, :cond_0

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    iget-wide v13, v10, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v10, v3, v13

    if-nez v10, :cond_0

    new-instance v10, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_1

    :cond_0
    new-instance v10, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    move-object/from16 v14, p0

    move/from16 v15, p7

    move/from16 v11, p8

    goto :goto_0

    :cond_1
    move-object/from16 v14, p0

    move/from16 v15, p7

    move/from16 v11, p8

    const/4 v13, 0x0

    :goto_0
    invoke-direct {v10, v14, v13, v15, v11}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    :goto_1
    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x1

    :goto_3
    new-array v13, v12, [Z

    aput-boolean v9, v13, v9

    if-eqz v8, :cond_4

    new-instance v14, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;

    invoke-direct {v14, v13, v8}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;-><init>([ZLjava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    const/4 v13, 0x2

    if-gt v2, v12, :cond_10

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v8, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v2, -0x1

    cmp-long v16, v3, v8

    if-nez v16, :cond_6

    if-gt v5, v12, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    :goto_5
    invoke-static {v3, v2, v13, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_6

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_5

    :goto_6
    sget v3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-virtual {v10, v3, v4, v4, v5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_6
    new-instance v8, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda7;

    invoke-direct {v8, v14, v0, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v9

    if-eqz v9, :cond_a

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-gt v5, v12, :cond_8

    if-eqz v0, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v3, v2, v13, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_c

    :cond_7
    const/4 v9, 0x0

    sget v2, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_c

    :cond_8
    const/4 v9, 0x0

    if-eqz v0, :cond_9

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    sget v2, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    goto :goto_c

    :cond_a
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-gt v5, v12, :cond_d

    if-eqz v11, :cond_b

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToUserShort:I

    goto :goto_a

    :cond_b
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    :goto_a
    if-eqz v0, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_d
    if-eqz v11, :cond_e

    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToUserShort:I

    goto :goto_b

    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    :goto_b
    if-eqz v0, :cond_f

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_f
    const/4 v9, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :goto_c
    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array v4, v9, [Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-virtual {v10, v3, v5, v5, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_f

    :cond_10
    new-array v3, v9, [Ljava/lang/Object;

    if-gt v5, v12, :cond_11

    const-string v4, "FwdMessageToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_e

    :cond_11
    const-string v4, "FwdMessagesToManyChats"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :goto_e
    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array v4, v9, [Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-virtual {v10, v3, v5, v5, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    :goto_f
    iget-object v3, v10, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_13

    new-instance v2, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    goto :goto_10

    :cond_12
    const/4 v11, 0x0

    :goto_10
    invoke-direct {v2, v3, v12, v12, v11}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_13
    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda8;

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    const/16 v3, 0x12c

    int-to-long v3, v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v1, :cond_14

    invoke-static {v1, v10, v6}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_11

    :cond_14
    if-eqz v0, :cond_16

    invoke-static {v0, v10, v6}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_11
    instance-of v1, v10, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    if-eqz v1, :cond_15

    iget-object v1, v10, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v10, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    check-cast v10, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->setBulletin(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12
.end method

.method public static createInviteSentBulletin(Landroid/content/Context;Landroid/widget/FrameLayout;IJIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    new-instance p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0, p6, p7}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    const/4 p0, 0x1

    const/16 p6, 0x12c

    const/4 p7, 0x0

    const/16 v0, 0x1e

    if-gt p2, p0, :cond_2

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v1, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array p3, p7, [Ljava/lang/String;

    invoke-virtual {p5, p2, v0, v0, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    const/4 p6, -0x1

    goto :goto_2

    :cond_0
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, p7

    const-string p2, "InvLinkToGroup"

    invoke-static {p2, p3, p0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, p7

    const-string p2, "InvLinkToUser"

    invoke-static {p2, p3, p0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    sget p2, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p3, p7, [Ljava/lang/String;

    invoke-virtual {p5, p2, v0, v0, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    new-array p4, p7, [Ljava/lang/Object;

    const-string v1, "Chats"

    invoke-static {v1, p2, p4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, p7

    const-string p2, "InvLinkToChats"

    invoke-static {p2, p3, p0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p3, p7, [Ljava/lang/String;

    invoke-virtual {p5, p2, v0, v0, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    :goto_2
    iget-object p2, p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p6, :cond_3

    new-instance p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda9;

    invoke-direct {p0, p5}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    int-to-long p2, p6

    invoke-virtual {p5, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/16 p0, 0x5dc

    invoke-static {p1, p5, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string p3, "Hours"

    const-string v3, "NotificationsMutedForHint"

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v3, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsUnmutedHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v0, [Ljava/lang/Object;

    const-string v4, "Days"

    invoke-static {v4, p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v3, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v0, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {p3, v4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v3, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p3, v1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v3, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_6

    sget p2, Lorg/telegram/messenger/R$raw;->mute_for:I

    new-array p3, v0, [Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    sget p2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p3, "Curve Big"

    const-string v0, "Curve Small"

    const-string v1, "Body Main"

    const-string v3, "Body Top"

    const-string v4, "Line"

    filled-new-array {v1, v3, v4, p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget p2, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p3, "Wibe Big 3"

    const-string v0, "Wibe Small"

    const-string v1, "BODY"

    const-string v3, "Wibe Big"

    filled-new-array {v1, v3, p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    :goto_3
    iget-object p2, v2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v2, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v2, "NotificationsMutedHintChats"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v2, "NotificationsUnmutedHintChats"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p2, "Curve Big"

    const-string p3, "Curve Small"

    const-string v1, "Body Main"

    const-string v2, "Body Top"

    const-string v3, "Line"

    filled-new-array {v1, v2, v3, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p2, "Wibe Big 3"

    const-string p3, "Wibe Small"

    const-string v1, "BODY"

    const-string v2, "Wibe Big"

    filled-new-array {v1, v2, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x5dc

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_0
    const-string v2, "Pin"

    const-string v3, "Line"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v2, "MessagePinnedHint"

    goto :goto_1

    :cond_1
    const-string v2, "MessageUnpinnedHint"

    :goto_1
    if-eqz p1, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->MessagePinnedHint:I

    goto :goto_2

    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->MessageUnpinnedHint:I

    :goto_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x5dc

    goto :goto_3

    :cond_4
    const/16 p1, 0x1388

    :goto_3
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserSetAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserSetAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v3, "Hand"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v2, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->HiddenName:I

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "HiddenName"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_0
    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UserRemovedFromChatHint:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const-string p1, "UserRemovedFromChatHint"

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v1, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;IZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-le p1, v0, :cond_0

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->SoundOffHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->SoundOnHint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$raw;->sound_on:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/R$raw;->sound_off:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "Line"

    const-string v1, "Pin"

    const/16 v2, 0x1c

    if-eqz p2, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PinnedMessagesHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PinnedMessagesHiddenInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p2, v3, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v0, p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MessagesUnpinned"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p1, p2

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p2, 0x1388

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static global()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$1(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->onLoaded(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$2(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p4, :cond_2

    if-ne p0, v1, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "TopicContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    sget p0, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "StoryContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p0, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    const-string p4, "MessageContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->AddEmojiNotFound:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-direct {p4, p1, p0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x2ee

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createDownloadBulletin$4()V
    .locals 2

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$createForwardedBulletin$6([ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createForwardedBulletin$7(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createForwardedBulletin$8(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method private static synthetic lambda$createInviteSentBulletin$5(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method public static of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public static of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method

.method public static showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Finger 3"

    const-string v2, "Finger 4"

    const-string v3, "Main"

    const-string v4, "Finger 1"

    const-string v5, "Finger 2"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->caption_limit:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "ChannelCaptionLimitPremiumPromo"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v6, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Lorg/telegram/ui/Components/BulletinFactory$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BulletinFactory$1;-><init>(Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, -0x1

    const/16 p2, 0x21

    invoke-virtual {v1, p1, v4, v3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createChatsBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 9

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    if-eqz v5, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v6, v4, v8, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    move v4, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v1, 0x3f99999a    # 1.2f

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_4
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_7

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_6
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    goto :goto_5

    :cond_8
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    goto :goto_6

    :cond_9
    :goto_7
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_a

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xc

    rsub-int/lit8 p2, v4, 0x20

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createContainsEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/Bulletin;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    const-string v5, "MessageContainsEmojiPackSingle"

    const-string v6, "StoryContainsEmojiPackSingle"

    const/4 v7, 0x2

    const-string v8, "TopicContainsEmojiPackSingle"

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v8, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-ne p2, v7, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v6, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v5, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, v2}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const-string v4, "<{LOADING}>"

    if-ne p2, v1, :cond_5

    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v6, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v8, v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    if-ne p2, v7, :cond_6

    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    new-instance v6, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v5, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, v6

    :goto_3
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    new-instance v4, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v3, v6, v7, v8}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    add-int/lit8 v6, v1, 0xb

    const/16 v7, 0x21

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object v6, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v7, 0x48

    invoke-static {v1, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v4, v6, v1}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    goto :goto_4

    :cond_7
    move-object v4, v3

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;

    invoke-direct {v8, p3, v2}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, v5, v1, v8}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, p3}, Lorg/telegram/ui/Components/LoadingSpan;->setView(Landroid/view/View;)V

    :cond_8
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1, v6, v7}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;-><init>(ILorg/telegram/ui/Components/Bulletin;J)V

    invoke-virtual {p3, v2, v3, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    const-string v1, "Back"

    const-string v2, "Front"

    const-string v3, "NULL ROTATION"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p2, v0, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v0, p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createCopyLinkBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    const-string v1, "Wibe"

    const-string v2, "Circle"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, p2, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "Circle"

    const-string v1, "Wibe"

    const/16 v2, 0x24

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopiedPrivateInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xabe

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v2, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v0, p3, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$100(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$200(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$300(Lorg/telegram/ui/Components/BulletinFactory$FileType;I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$400(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$400(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setIconPaddingBottom(I)V

    :cond_1
    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-ge p1, p2, :cond_1

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createImageBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const p2, 0x3faa3d71    # 1.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setWrapWidth()V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createMessagesTaggedBulletin(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->tag_icon_3:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v5, "d"

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-direct {v5, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {v3, v5, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    if-le p1, v4, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "SavedTagMessagesTagged"

    invoke-static {v5, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->SavedTagMessageTagged:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, " "

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v4, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setTextColor(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800013

    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createReportSent(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesPremiumOnly:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v6, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/Components/BulletinFactory$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BulletinFactory$2;-><init>(Lorg/telegram/ui/Components/BulletinFactory;)V

    add-int/lit8 v4, v4, -0x1

    const/16 v6, 0x21

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0xabe

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/16 v0, 0x24

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    const-string v7, " "

    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_4

    const/16 p1, 0x5dc

    goto :goto_2

    :cond_4
    const/16 p1, 0xabe

    :goto_2
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;II)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    const-string v7, " "

    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTextDirection(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v3, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    invoke-virtual {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    .line 0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/16 v0, 0x5dc

    const/16 v5, 0x5dc

    goto :goto_0

    :cond_0
    const/16 v0, 0xabe

    const/16 v5, 0xabe

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->hideImage()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object v1

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v3, v5, v7, v6, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5, v4, v7, v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v9, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "28_28"

    const-string v13, "28_28"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v2, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v1, 0xabe

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, p3, p3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleLargeBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createStaticEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setTimer()V

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v2, p3, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersAddedBulletin(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-ne v2, v1, :cond_2

    const-string v2, "**"

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToChannel:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "HasBeenAddedToChannel"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_2

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToGroup:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "HasBeenAddedToGroup"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AddedMembersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AddedSubscribersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v9, v10}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x3

    if-eqz v1, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_3

    if-lt v12, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLObject;

    if-eqz v13, :cond_2

    iget-object v14, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    iget-object v14, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v14, v12, v10, v13}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    move v12, v15

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_4

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v10, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_4
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_b

    rsub-int/lit8 v1, v12, 0x3

    mul-int/lit8 v1, v1, 0xc

    rsub-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ne v12, v8, :cond_6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_6

    :cond_7
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_b

    rsub-int/lit8 v1, v12, 0x3

    mul-int/lit8 v1, v1, 0xc

    rsub-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ne v12, v8, :cond_9

    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    :cond_9
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    goto :goto_4

    :cond_a
    iget-object v2, v5, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    goto :goto_5

    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v8, v3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_c
    const/16 v1, 0x1388

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1
.end method

.method public createUsersBulletin(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_3
    return-object v0
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lorg/telegram/ui/LaunchActivity;->isActive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public showForwardedBulletinWithTag(JI)Z
    .locals 5

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v0, v2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    const/4 p1, -0x1

    const/4 p2, 0x2

    const/4 v2, 0x1

    if-gt p3, v2, :cond_1

    sget p3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    invoke-static {p3, p1, p2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    :goto_1
    sget p3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array v3, v1, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v0, p3, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xdac

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->setBulletin(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v2

    :cond_2
    return v1
.end method
