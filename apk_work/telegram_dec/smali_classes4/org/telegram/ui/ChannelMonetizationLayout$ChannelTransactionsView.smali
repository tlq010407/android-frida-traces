.class public Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelMonetizationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelTransactionsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;,
        Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;

.field private final currentAccount:I

.field private final dialogId:J

.field private loadingTransactions:[Z

.field private starsLastOffset:Ljava/lang/String;

.field private final starsTransactions:Ljava/util/ArrayList;

.field private final tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field final synthetic this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

.field private final tonTransactions:Ljava/util/ArrayList;

.field private tonTransactionsLastOffset:Ljava/lang/String;

.field private final updateParentList:Ljava/lang/Runnable;

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public static synthetic $r8$lambda$8vRcRMoncGaVEu7vanb2C_4TXvw(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->lambda$loadTransactions$0(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IUNZ95VHofXtFeaFYqg_t4esIMg(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->lambda$loadTransactions$3(IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lG85felwUYtPPtG1Adb5xzU3Kxc(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->lambda$loadTransactions$2(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWQCRyxYOChC9ysJ5b3N_K6taWc(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->lambda$loadTransactions$1(IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;IJILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p1

    move-object/from16 v10, p8

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-direct {p0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    move/from16 v3, p3

    iput v3, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    move-wide/from16 v4, p4

    iput-wide v4, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->dialogId:J

    move-object/from16 v0, p7

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateParentList:Ljava/lang/Runnable;

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {v13, v9}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    iput-object v13, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v14, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Landroid/content/Context;IJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->adapter:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    const/4 v0, 0x3

    invoke-virtual {v13, v12, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v12}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadTransactions(I)V

    invoke-direct {p0, v11}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadTransactions(I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadTransactions(I)V

    return-void
.end method

.method private synthetic lambda$loadTransactions$0(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aput-boolean v1, p1, p2

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateLists(ZZ)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result p1

    if-eq p1, p4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateParentList:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions(I)Z

    move-result p1

    if-eq p1, p5, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateTabs()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadTransactions$1(IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTransactions$2(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aput-boolean v1, p1, p2

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateLists(ZZ)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result p1

    if-eq p1, p4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateParentList:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions(I)Z

    move-result p1

    if-eq p1, p5, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateTabs()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadTransactions$3(IZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;ZZ)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadTransactions(I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions(I)Z

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-boolean v5, v5, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aput-boolean v4, v5, p1

    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;-><init>()V

    iput-boolean v4, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->ton:Z

    iget v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->dialogId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x5

    :cond_2
    iput v2, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->limit:I

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;IZZ)V

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p1, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-boolean v5, v5, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueAvailable:Z

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aput-boolean v4, v5, p1

    new-instance v4, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->ton:Z

    iget v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x5

    :cond_6
    iput v2, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->limit:I

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;IZZ)V

    invoke-virtual {v2, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    nop

    :cond_7
    :goto_1
    return-void
.end method

.method private updateLists(ZZ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    invoke-static {v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->access$1000(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->checkMore()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTabs()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->adapter:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$PageAdapter;->fill()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateCurrent()V

    return-void
.end method


# virtual methods
.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->access$1000(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public hasTransactions()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasTransactions(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public reloadTransactions()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-string v3, ""

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->tonTransactionsLastOffset:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->starsLastOffset:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadingTransactions:[Z

    aput-boolean v1, v3, v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->loadTransactions(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateParentList:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateTabs()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->updateParentList:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
