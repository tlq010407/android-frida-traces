.class public abstract Lorg/telegram/ui/GroupCallSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$0wXRjKk4tiXvqp2xchk3q6Rg_NQ(IJLjava/lang/Long;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$4(IJLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9yhIg6AQhYglMlHULX0n7iIw3OA(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$5(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Akf10XNgC6J0t1JRJKCuBgnc3cI(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Foiu6CG_1ucS_wThAXsc32eF6_k(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVeBK_4RmYxYXVPfjATxLO0FfbM(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezYnCHhp5dkCnJQagF1TC6AognE(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/GroupCallSheet;->lambda$show$3(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$show$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_1
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v1

    move-object p1, v0

    move-object p2, v4

    move-object/from16 p3, v5

    move/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    return-void

    :cond_2
    iget-object v11, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v12, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/GroupCallSheet;->show(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "GROUPCALL_INVALID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->LinkIsNoActive:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$show$2(II)V
    .locals 1

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private static synthetic lambda$show$3(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$show$4(IJLjava/lang/Long;)Z
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$show$5(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p2, p3, p1, p4}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    return-void
.end method

.method public static show(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 6

    .line 0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;-><init>()V

    iput-object p4, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallSheet;->show(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static show(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 12

    .line 0
    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v0, :cond_3

    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_0

    iget-wide v2, v7, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    if-eqz v1, :cond_3

    iget-wide v1, v7, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v4

    move-object p3, v5

    move/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    return-void

    :cond_3
    if-nez v8, :cond_4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x3

    move-object v4, p0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v4, p0

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v9, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    iput-object v7, v9, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/16 v0, 0xa

    iput v0, v9, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object/from16 v2, p5

    move v3, p1

    move-object v4, p0

    move-wide v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/browser/Browser$Progress;ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$InputGroupCall;)V

    invoke-virtual {v10, v9, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    if-eqz v8, :cond_5

    new-instance v1, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda1;

    move v2, p1

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    :cond_5
    return-void
.end method

.method public static show(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$InputGroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;Ljava/util/ArrayList;)V
    .locals 21

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    new-instance v3, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/messenger/R$drawable;->filled_calls_users:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v11, 0x38

    const/16 v12, 0x11

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v18, 0x2

    const/16 v19, 0xd

    const/16 v13, 0x50

    const/16 v14, 0x50

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x15

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v0, v10, v9, v7, v3}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$string;->GroupCallLinkTitle:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v19, 0x4

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p6 .. p6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda4;

    move-wide/from16 v13, p2

    invoke-direct {v11, v1, v13, v14}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda4;-><init>(IJ)V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v10

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v7

    invoke-static {v0, v8, v9, v5, v3}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v9

    sget v13, Lorg/telegram/messenger/R$string;->GroupCallLinkText:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v13

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/16 v19, 0x2

    const/16 v20, 0x17

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_3

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v11, -0xd5cfca

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const v14, 0x3f28f5c3    # 0.66f

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setCentered(Z)V

    const/high16 v11, 0x42180000    # 38.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x3

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    invoke-virtual {v9, v13, v1, v14}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/2addr v13, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    const/high16 v18, 0x40a00000    # 5.0f

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x3a

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x41300000    # 11.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0, v8, v9, v5, v3}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->GroupCallLinkText2One:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v5

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v2, :cond_2

    sget v9, Lorg/telegram/messenger/R$string;->GroupCallLinkText2Two:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v1, v11, v12}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v5

    aput-object v10, v2, v7

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v1, v11, v12}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v5

    aput-object v10, v2, v7

    const-string v7, "GroupCallLinkText2Many"

    invoke-static {v7, v9, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/4 v14, 0x2

    const/16 v15, 0x19

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$string;->GroupCallLinkJoin:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;

    move-object/from16 v5, p4

    invoke-direct {v4, v3, v0, v1, v5}, Lorg/telegram/ui/GroupCallSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
