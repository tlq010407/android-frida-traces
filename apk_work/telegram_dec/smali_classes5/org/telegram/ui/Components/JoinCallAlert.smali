.class public Lorg/telegram/ui/Components/JoinCallAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;,
        Lorg/telegram/ui/Components/JoinCallAlert$ListAdapter;,
        Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;
    }
.end annotation


# static fields
.field private static cachedChats:Ljava/util/ArrayList;

.field private static lastCacheDid:J

.field private static lastCacheTime:J

.field private static lastCachedAccount:I


# instance fields
.field private animationInProgress:Z

.field private chats:Ljava/util/ArrayList;

.field private currentPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field private currentType:I

.field private delegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

.field private doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

.field private ignoreLayout:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private location:[I

.field private messageTextView:Landroid/widget/TextView;

.field private schedule:Z

.field private scrollOffsetY:I

.field private selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0KTXojNZoxzQ37NO8si2x_aBbss(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$checkFewUsers$2(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JAf63IIftbx3LO-a3EKfwgfJKk(Lorg/telegram/ui/Components/JoinCallAlert;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$new$7(Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$70ZW1ygh4lEyGwNrbLJBvkhCsZQ(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$open$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CfMbXpJbAAye0f5VN-Cg9opDVkk(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$open$5(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8wCQsOEl6W8-m2mZMRyIDKFVxI(Lorg/telegram/ui/Components/JoinCallAlert;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V1wauqt2O0Je46IaESM-YiZZZ6M(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$checkFewUsers$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ve_JMhP7mYnC3dqafaHoLNlPvqA(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$checkFewUsers$1(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WulgJK5bRda5E1DckB3UPxblCDI(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$open$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNz9gBqLDLO8uAXSLPJBF1G_S1Y(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinCallAlert;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p7

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    iput-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->location:[I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v7, p4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    iput-object v3, v0, Lorg/telegram/ui/Components/JoinCallAlert;->delegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    iput v2, v0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_5

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v6

    iget-object v8, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-nez v13, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_3

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-object v8, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-nez v13, :cond_2

    :goto_2
    iput-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->currentPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_4
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    :cond_5
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_4
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget v6, v0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    const/4 v7, 0x1

    if-nez v6, :cond_6

    new-instance v6, Lorg/telegram/ui/Components/JoinCallAlert$1;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/JoinCallAlert$1;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v8, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    new-instance v6, Lorg/telegram/ui/Components/JoinCallAlert$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/JoinCallAlert$2;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v8, v9, v4, v9, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_5
    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-wide/from16 v9, p2

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/JoinCallAlert$3;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/JoinCallAlert$3;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, v0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    const/4 v12, 0x1

    :goto_6
    invoke-direct {v10, v11, v12, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/JoinCallAlert$ListAdapter;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/JoinCallAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/JoinCallAlert$4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/JoinCallAlert$4;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0, v8}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_8

    const/4 v15, 0x0

    const/high16 v16, 0x42a00000    # 80.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/high16 v14, 0x42c80000    # 100.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v11, v4, v10, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_7
    if-nez v2, :cond_9

    new-instance v9, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    sget v10, Lorg/telegram/messenger/R$raw;->utyan_schedule:I

    const/16 v11, 0x78

    invoke-virtual {v9, v10, v11, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v12, 0xa0

    const/16 v13, 0xa0

    const/16 v14, 0x31

    const/16 v15, 0x11

    const/16 v16, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    if-ne v2, v5, :cond_a

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    :goto_8
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_a
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_8

    :goto_9
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-nez v2, :cond_c

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->StartVoipChannelTitle:I

    :goto_a
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->StartVoipChatTitle:I

    goto :goto_a

    :goto_b
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    const/16 v15, 0x17

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    const/16 v13, 0x17

    const/16 v14, 0x10

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    :goto_c
    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_c
    if-ne v2, v5, :cond_d

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupDisplayAs:I

    :goto_d
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_d
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipChannelJoinAs:I

    goto :goto_d

    :cond_e
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupJoinAs:I

    goto :goto_d

    :goto_e
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    const/high16 v15, 0x41b80000    # 23.0f

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x33

    const/high16 v13, 0x41b80000    # 23.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    goto :goto_c

    :goto_f
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    if-ne v2, v5, :cond_f

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :goto_10
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    :cond_f
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    goto :goto_10

    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v5, :cond_12

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gez v14, :cond_11

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v12, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v10, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_13

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_13
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v10}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v9, 0x5

    if-nez v2, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-boolean v10, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v10, :cond_13

    sget v10, Lorg/telegram/messenger/R$string;->VoipChannelStart2:I

    :goto_14
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_13
    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupStart2:I

    goto :goto_14

    :goto_15
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v7, :cond_14

    const-string v10, "\n\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lorg/telegram/messenger/R$string;->VoipChatDisplayedAs:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_14
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :goto_16
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    const/16 v10, 0x31

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    const/16 v15, 0x17

    const/16 v16, 0x5

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    const/16 v13, 0x17

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    :goto_17
    invoke-virtual {v6, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_15
    if-eqz v5, :cond_16

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupStartAsInfoGroup:I

    :goto_18
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupStartAsInfo:I

    goto :goto_18

    :goto_19
    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_17

    const/4 v10, 0x5

    goto :goto_1a

    :cond_17
    const/4 v10, 0x3

    :goto_1a
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41b80000    # 23.0f

    const/high16 v16, 0x40a00000    # 5.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x33

    const/high16 v13, 0x41b80000    # 23.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    goto :goto_17

    :goto_1b
    if-nez v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v9, :cond_18

    const/4 v5, -0x2

    const/4 v9, -0x2

    goto :goto_1c

    :cond_18
    const/4 v5, -0x1

    const/4 v9, -0x1

    :goto_1c
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v10, 0x5f

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    new-instance v2, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->access$1300(Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    if-nez v2, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/16 v10, 0x32

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    invoke-direct {v2, v0, v1, v7}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;Z)V

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelScheduleVoiceChat:I

    :goto_1d
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1e

    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupScheduleVoiceChat:I

    goto :goto_1d

    :goto_1e
    invoke-static {v2}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->access$1300(Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/JoinCallAlert;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/16 v7, 0x32

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 p1, v5

    move/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v1

    move/from16 p7, v3

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/high16 v7, 0x42480000    # 50.0f

    const/16 v9, 0x53

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 p1, v5

    move/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    invoke-direct {v0, v4, v8}, Lorg/telegram/ui/Components/JoinCallAlert;->updateDoneButton(ZLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/JoinCallAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/JoinCallAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/JoinCallAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/JoinCallAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/JoinCallAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/JoinCallAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/JoinCallAlert;)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/JoinCallAlert;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/JoinCallAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/JoinCallAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/JoinCallAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->ignoreLayout:Z

    return p1
.end method

.method public static checkFewUsers(Landroid/content/Context;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 9

    sget v0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCachedAccount:I

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-wide v0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheDid:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3a980

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4, p1}, Lorg/telegram/messenger/MessagesStorage$BooleanCallback;->run(Z)V

    return-void

    :cond_1
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x3

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;-><init>()V

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object v1, v6

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    invoke-virtual {v7, p0, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p0

    new-instance p1, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3, p0}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/AccountInstance;I)V

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 p0, 0x1f4

    :try_start_0
    invoke-virtual {v6, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$checkFewUsers$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    sput-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    sput-wide p2, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheDid:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sput-wide p2, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheTime:J

    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p0

    sput p0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCachedAccount:I

    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->chats:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-interface {p5, p3}, Lorg/telegram/messenger/MessagesStorage$BooleanCallback;->run(Z)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$checkFewUsers$1(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda4;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$checkFewUsers$2(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->animationInProgress:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p3, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of p3, p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_1
    instance-of v1, p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p2, :cond_4

    if-eqz p3, :cond_3

    check-cast v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_2

    :cond_3
    instance-of v5, p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v5, :cond_4

    check-cast v4, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget p2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    if-eqz p2, :cond_6

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/JoinCallAlert;->updateDoneButton(ZLorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;Landroid/view/View;)V
    .locals 3

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, p2, v1, v2, v2}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->schedule:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$open$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 12

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    move-object v1, p3

    invoke-interface {p3, v0, v3, v3, v3}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    return-void

    :cond_0
    move-object v1, p3

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    sput-object v2, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    sput-wide p4, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheDid:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheTime:J

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v2

    sput v2, Lorg/telegram/ui/Components/JoinCallAlert;->lastCachedAccount:I

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_phone$joinAsPeers;->peers:Ljava/util/ArrayList;

    move-object/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object v11, p3

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/JoinCallAlert;->showAlert(Landroid/content/Context;JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$open$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    new-instance v11, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda8;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$open$5(Lorg/telegram/messenger/AccountInstance;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method public static open(Landroid/content/Context;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 14

    move-object v6, p0

    move-wide v4, p1

    move-object/from16 v7, p7

    if-eqz v6, :cond_3

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCachedAccount:I

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-wide v0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheDid:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/JoinCallAlert;->lastCacheTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    invoke-interface {v7, v0, v2, v2, v2}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/JoinCallAlert;->showAlert(Landroid/content/Context;JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    goto :goto_0

    :cond_2
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x3

    invoke-direct {v10, p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v11, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;

    invoke-direct {v11}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallJoinAs;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda0;

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;)V

    invoke-virtual {v12, v11, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    new-instance v1, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/JoinCallAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/AccountInstance;I)V

    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static processDeletedChat(IJ)V
    .locals 4

    sget v0, Lorg/telegram/ui/Components/JoinCallAlert;->lastCachedAccount:I

    if-ne v0, p0, :cond_3

    sget-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    sget-object v1, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    sget-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    sput-object p0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    :cond_3
    :goto_2
    return-void
.end method

.method public static resetCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/JoinCallAlert;->cachedChats:Ljava/util/ArrayList;

    return-void
.end method

.method private static showAlert(Landroid/content/Context;JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 10

    move-object v0, p4

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v8, p7

    if-nez p5, :cond_0

    invoke-static {p3, p4, p1, p2, v8}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->show(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    return-void

    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/JoinCallAlert;

    move-object v1, v9

    move-object v2, p0

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/JoinCallAlert;-><init>(Landroid/content/Context;JLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDoneButton(ZLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    if-nez v2, :cond_1

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelStartVoiceChat:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VoipChannelStartVoiceChat"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupStartVoiceChat:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VoipGroupStartVoiceChat"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p2

    const-string v4, "VoipGroupContinueAs"

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->VoipGroupContinueAs:I

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, p2, p1}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->doneButton:Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->VoipGroupContinueAs:I

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p2, ""

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :goto_3
    return-void
.end method

.method private updateLayout()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->currentType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->scrollOffsetY:I

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->messageTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissInternal()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinCallAlert;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinCallAlert;->delegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/JoinCallAlert;->schedule:Z

    invoke-interface {v1, v0, v4, v2, v3}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    :cond_1
    return-void
.end method
