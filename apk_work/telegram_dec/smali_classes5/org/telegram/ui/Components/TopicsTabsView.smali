.class public abstract Lorg/telegram/ui/Components/TopicsTabsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;,
        Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;
    }
.end annotation


# instance fields
.field private animateFromSelectedTopicId:J

.field private animator:Landroid/animation/ValueAnimator;

.field private final button:Landroid/widget/ImageView;

.field private final canShowProgress:Z

.field private final closeButton:Landroid/widget/ImageView;

.field private final currentAccount:I

.field private currentTopicId:J

.field private final dialogId:J

.field private final excludeTopics:Ljava/util/HashSet;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private lastSelectedTopicId:J

.field private lastTabId:I

.field private final mono:Z

.field private notificationsAttached:Z

.field private onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

.field private onTopicCreated:Ljava/lang/Runnable;

.field private onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

.field private pendingSidemenu:Ljava/lang/Boolean;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final sideTabsContainer:Landroid/widget/FrameLayout;

.field private final sideTabsShadowView:Landroid/view/View;

.field public sidemenuAnimating:Z

.field public sidemenuEnabled:Z

.field public sidemenuT:F

.field private final tabToDialog:Lorg/telegram/messenger/support/LongSparseLongArray;

.field private final topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final topTabsContainer:Lorg/telegram/ui/Components/BlurredFrameLayout;

.field private final topTabsShadowView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$00iCWCefdns0kLVqSFxzVr6G7C8(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$updateTabs$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$48Pq7sH6m0k28g_0aJHwwzTaeRY(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$animateButton$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6-Jz8IxcgHWMMC5NWarAGJjC28Q(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$8(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6g9ymeJcyuyn_kP_-c726P4EKQo(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$animateButton$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$7GFlpWZHq-20SEMMSwMR27nZDxw(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->onTabClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$F1vQ7d5UJFGIKc5GRxFh8DmjcZI(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$18(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HLcp7B1-dmMAYeqwhxmU3tznQUY(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JHRZUKhAK0KlrMuUDXXP0U6Z_Yg(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$animateSidemenuTo$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JU-PfUnbRM20du_fKAbbcl_70fY(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KHf6sQl__hBjO1giRrpTaZAdNzc(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$12(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MOPPixybuDQGVrPO-g49K6d9P_g(Lorg/telegram/ui/Components/TopicsTabsView;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->whenReordered(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OhxfZP8kArJIerJRcygF_R49NdI(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$15(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWZCpTMW_n8p4NRsZ4CeO6GZMrM(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->onTabLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WZ3uJGwJzoK7YErTiiBlILDzZvU(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$20(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0LiMOMsfGa4J7Z27qmD92JttUk(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Kg4DBSl9qAOcK4IX61LKtrcLVQ(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mVPbv71tduwzpuw00qXabpJB7s(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->fillHorizontalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oTADBULInKTsTmGcGEzbIH3spY(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->fillVerticalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwpzTVJimyY2PIRfFVBT7FiBQqM(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZYVf2gqVd5rEfToCY636CKrF00(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$19(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h6eO1oF82jNy5fe6iaQRPKgbmf0(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$10(Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpxdrEQdwVZq5TXDKdkeV1MI7Vw(Lorg/telegram/ui/Components/TopicsTabsView;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$6(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$l230dXALepbyhFRKeJO_SIL3-aA()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$nli3XdlkN2zIGu23pz_0RR1MvXc(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$21(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGLoWXsHqztR6f6Ygx90SKkCz78(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$7(Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sDSKwSH1sLKt8c8u3-AR5qkTALQ(Lorg/telegram/ui/Components/TopicsTabsView;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$11(ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNpL31Eu9wreWJmW4mO17A4JYso(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfj1-faiVH6OdKUt4Y5xz3bXB9Q(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$13(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p3

    move-wide/from16 v11, p5

    move-object/from16 v13, p7

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    iput v14, v9, Lorg/telegram/ui/Components/TopicsTabsView;->lastTabId:I

    new-instance v1, Lorg/telegram/messenger/support/LongSparseLongArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseLongArray;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->tabToDialog:Lorg/telegram/messenger/support/LongSparseLongArray;

    const/4 v15, 0x0

    iput v15, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    move-object/from16 v1, p2

    iput-object v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v8, p4

    iput v8, v9, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    iput-wide v11, v9, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iput-object v13, v9, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    iput-boolean v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topics_end_reached_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    iput-boolean v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsShadowView:Landroid/view/View;

    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x40400000    # 3.0f

    const/16 v18, 0x37

    const/16 v19, 0x0

    const/high16 v20, 0x42400000    # 48.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-direct {v4, v10, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v4, v9, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Lorg/telegram/ui/Components/BlurredFrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    const/16 v2, 0x37

    const/4 v3, -0x1

    const/16 v15, 0x30

    invoke-static {v3, v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-direct {v2, v10, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x73

    const/16 v1, 0x40

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsShadowView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v3, v15, v3

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v5, 0x75

    invoke-static {v3, v1, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/TopicsTabsView$1;

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v21, v1

    const/16 v15, 0x40

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move/from16 v3, p4

    move-object/from16 v23, v4

    move/from16 v4, v18

    move-object v14, v5

    move-object/from16 v5, v22

    move-wide/from16 v24, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v19

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v9, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v14, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    invoke-virtual {v14}, Lorg/telegram/ui/Components/UniversalRecyclerView;->makeHorizontal()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v1, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/TopicsTabsView$2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v14, Lorg/telegram/ui/Components/TopicsTabsView$3;

    new-instance v5, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v7, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v0, v14, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    invoke-virtual {v14, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v14, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$4;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/TopicsTabsView$4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_sidebar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v2, 0x33

    const/16 v3, 0x30

    const/16 v4, 0x40

    invoke-static {v4, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x30

    const/16 v3, 0x40

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    const/4 v1, 0x3

    move-wide/from16 v3, v24

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topicssidetabs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/4 v0, 0x1

    iput-boolean v0, v9, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateSidemenuPosition()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->lastSelectedTopicId:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/TopicsTabsView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->lastSelectedTopicId:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/TopicsTabsView;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/TopicsTabsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->animateSidemenuTo(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animateFromSelectedTopicId:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/TopicsTabsView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animateFromSelectedTopicId:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TopicsTabsView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->loadMore()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/TopicsTabsView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/TopicsTabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    return p0
.end method

.method private animateButton(Z)V
    .locals 6

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    const-wide/16 v2, 0x140

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private animateSidemenuTo(Z)V
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuAnimating:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuAnimating:Z

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$5;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    const-string v3, "DeleteTopics"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-wide v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->DeleteSelectedTopic:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->DeleteSelectedTopics:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, p1, v2, p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda23;

    invoke-direct {p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private fillHorizontalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v5}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asAll(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v6, v8

    if-nez v12, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v8, v0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    const/4 v6, 0x1

    :cond_3
    :goto_2
    iget-wide v8, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget-boolean v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v8, v9, v7, v12}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asTab(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    iget-wide v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/TopicsTabsView;->getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v11, v6

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    if-eqz v3, :cond_8

    const/4 v3, -0x2

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x3

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x4

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-nez v3, :cond_9

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asAdd()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private fillVerticalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v5}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asAll(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v6, v8

    if-nez v12, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v8, v0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    const/4 v6, 0x1

    :cond_3
    :goto_2
    iget-wide v8, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget-boolean v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v8, v9, v7, v12}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asTab(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    iget-wide v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/TopicsTabsView;->getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    if-eqz v3, :cond_8

    const/4 v3, -0x2

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x3

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x4

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-nez v3, :cond_9

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v11}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asAdd(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method private isLoadingVisible()Z
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private synthetic lambda$animateButton$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$animateButton$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$animateSidemenuTo$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateSidemenuPosition()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$19(Ljava/util/HashSet;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$20(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/TopicsController;->deleteTopics(JLjava/util/ArrayList;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$21(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    iget-object p5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p5

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    const-string v1, "TopicsDeleted"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;)V

    new-instance p1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$deleteTopics$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->animateSidemenuTo(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->animateButton(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$10(Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    if-nez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v1, p3

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$11(ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    xor-int/lit8 v3, p1, 0x1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->UnbanUserMonoforum:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->BanUserMonoforum:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda21;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$12(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda20;

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$13(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, p1

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$14()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TopicsTabsView;->animateButton(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$15(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 6

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    return-void
.end method

.method private static synthetic lambda$onTabLongClick$17()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onTabLongClick$18(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$6(JZ)V
    .locals 2

    iget-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(JZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$7(Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v4, p4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$8(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    iget p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTabs$5()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->isLoadingVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->loadMore()V

    :cond_0
    return-void
.end method

.method private loadMore()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    :cond_0
    return-void
.end method

.method private onTabClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p2, :cond_2

    iget-wide p3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-wide p2, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    const-wide/16 p4, -0x2

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicCreated:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p2, :cond_2

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private onTabLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->isReorderAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->isReorderAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_11

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v11, 0x1

    invoke-static {v0, v9, v11}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v14

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-eqz v0, :cond_2

    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v7}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    sget v0, Lorg/telegram/messenger/R$string;->ClearHistory:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda8;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v10, v3

    move-wide v3, v12

    move-object v11, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v14, v6, v11, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2, v7}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v7, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    cmp-long v4, v2, v15

    if-eqz v4, :cond_4

    move-wide v4, v2

    goto :goto_0

    :cond_4
    move-wide v4, v0

    :goto_0
    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    sget v1, Lorg/telegram/messenger/R$string;->BanUserMonoforum:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda9;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v6, v11

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0, v10, v11, v13}, Lorg/telegram/messenger/MessagesController;->checkIsInChat(ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;)V

    :cond_5
    move-object v10, v14

    goto/16 :goto_b

    :goto_1
    return v0

    :cond_6
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v0, :cond_7

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_2

    :cond_7
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_2
    if-eqz v0, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    goto :goto_3

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->DialogPin:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda10;

    invoke-direct {v3, v8, v14, v2, v6}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v14, v1, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v1, Lorg/telegram/messenger/R$string;->FilterReorder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0, v1, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_9
    iget-object v12, v8, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-wide v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    move-object v13, v14

    move-object v10, v14

    move-wide v14, v0

    move-wide/from16 v16, v3

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->addAsItemOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ItemOptions;JJ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    iget-wide v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    :goto_4
    move v11, v1

    goto :goto_5

    :cond_a
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_b

    sget v0, Lorg/telegram/messenger/R$string;->Unmute:I

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_7

    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->Mute:I

    goto :goto_6

    :goto_7
    new-instance v13, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda12;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v11, v12, v13}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v7, v6}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v0, :cond_c

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    goto :goto_8

    :cond_c
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    :goto_8
    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/messenger/R$string;->RestartTopic:I

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->CloseTopic:I

    goto :goto_9

    :goto_a
    new-instance v2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda13;

    invoke-direct {v2, v8, v10, v6}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v10, v1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_e
    iget v0, v8, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v7, v6}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const-string v1, "DeleteTopics"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;

    invoke-direct {v2, v8, v10, v6}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_f
    :goto_b
    instance-of v0, v9, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz v0, :cond_10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, v8, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(IIIII)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_c

    :cond_10
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, v8, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(IIIII)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    :goto_c
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v3, 0x0

    :goto_d
    return v3
.end method

.method private setAttached(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->notificationsAttached:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->notificationsAttached:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentResume(J)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentPause(J)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_0
    return-void
.end method

.method private updateTabs()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v3, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private whenReordered(ILjava/util/ArrayList;)V
    .locals 4

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/UItem;

    iget v3, v3, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v2, v2

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->reorderPinnedTopics(JLjava/util/ArrayList;)V

    iget-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v2, v2

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    return-void

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_3

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    and-int/2addr p1, p2

    if-lez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long p2, p2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getTopic(J)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->setAttached(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->setAttached(Z)V

    return-void
.end method

.method public selectTopic(JZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setCurrentTopic(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public setOnDialogSelected(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOnNewTopicSelected(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicCreated:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTopicSelected(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public updateSidemenuPosition()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const v2, 0x3f59999a    # 0.85f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/4 v2, 0x0

    const/16 v4, 0x8

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsShadowView:Landroid/view/View;

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    mul-float v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsShadowView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsShadowView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    sub-float/2addr v3, v5

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsShadowView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->button:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    invoke-static {v2, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
