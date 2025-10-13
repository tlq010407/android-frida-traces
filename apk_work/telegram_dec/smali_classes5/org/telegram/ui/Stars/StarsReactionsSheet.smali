.class public Lorg/telegram/ui/Stars/StarsReactionsSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;,
        Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;,
        Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;,
        Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;
    }
.end annotation


# instance fields
.field private final balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

.field private final buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private final checkLayout:Landroid/widget/LinearLayout;

.field private final checkSeparatorView:Landroid/view/View;

.field private final checkTextView:Landroid/widget/TextView;

.field private checkedVisiblity:Z

.field private final closeView:Landroid/widget/ImageView;

.field private final currentAccount:I

.field private final dialogImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final dialogSelectorIconView:Landroid/widget/ImageView;

.field private final dialogSelectorInnerLayout:Landroid/widget/FrameLayout;

.field private final dialogSelectorLayout:Landroid/widget/FrameLayout;

.field private final icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private iconAnimator:Landroid/animation/ValueAnimator;

.field public lastSelectedPeer:J

.field private final layout:Landroid/widget/LinearLayout;

.field private messageCell:Landroid/view/View;

.field private messageId:I

.field private final messageObject:Lorg/telegram/messenger/MessageObject;

.field public peer:J

.field private final reactors:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sending:Z

.field private final separatorView:Landroid/view/View;

.field private final slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

.field private final starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final statusView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;

.field private final topLayout:Landroid/widget/FrameLayout;

.field private final topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

.field private final toptopLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$-E-6RLksgp7v7zt85hGr0xpoYJY(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ChatActivity;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$2(ILorg/telegram/ui/ChatActivity;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1zFVrFa1MWGXfcjyZPARvSWfMZI(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2swoOKCzqrAjVq_Br0V_X5QUQ-0(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$checkVisibility$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BnWurg8S9iDRSht6QuIfzuqBXHA(Lorg/telegram/ui/Stars/StarsReactionsSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$7(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4QXY7uJURGVWb6QwlYC46LJ-oo(Landroid/view/View;[ILandroid/graphics/RectF;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$animate3dIcon$13(Landroid/view/View;[ILandroid/graphics/RectF;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ICYp_Lfaz3Se5WBvd2A6_Lfst-4(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J_GVgs30CMlN3Qiknu1rmt2srK4(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$8(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pcl833S89BxDHWpClD3dY2pdbe0(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$5(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKbMrHS9VUOowEizV35YKOvIXIU(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$animate3dIcon$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$bfFmTLBSaoQw-QZ7YLwkTvTpWtE(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGuTsmZhVg60l-0nUnkPJkh8Wrg(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$4(Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lL0WIqOTFR6uXDm3cFUmmsVx0Mk(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$9(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdQ5S8ikANBx3y_6ilONOrOmYvc(Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$updateSenders$10(Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vsDVjLoOAEUplLIRG5UQBjc4_w4(Lorg/telegram/ui/Stars/StarsReactionsSheet;Ljava/lang/Runnable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;[ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$animate3dIcon$14(Ljava/lang/Runnable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;[ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkJhvZkfsMETB-ULNWLZUsL3ins(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 34

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v2, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    const/16 v0, 0x9

    const/4 v14, 0x0

    invoke-direct {v8, v9, v14, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v15, 0x1

    new-array v3, v15, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-boolean v14, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkedVisiblity:Z

    iput-object v12, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v10, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    iput-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v11, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->reactors:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-direct {v3, v9, v10, v12}, Lorg/telegram/ui/Stars/BalanceCloud;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x2

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x31

    const/16 v19, 0x0

    const/high16 v20, 0x42400000    # 48.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda0;

    invoke-direct {v4, v9, v12}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    if-eqz v11, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v18

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;->anonymous:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    if-eqz v5, :cond_1

    move-wide/from16 v18, v3

    :cond_1
    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    if-nez v5, :cond_2

    cmp-long v5, v18, v3

    if-nez v5, :cond_0

    :cond_2
    move-object v7, v13

    goto :goto_0

    :cond_3
    move-object v13, v7

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    if-eqz v11, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Stars/StarsController;->getPaidReactionsDialogId(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v6

    iput-wide v6, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    const-wide/32 v18, 0x28ae10

    cmp-long v20, v6, v18

    if-nez v20, :cond_6

    goto :goto_3

    :cond_6
    move-wide v3, v6

    :goto_3
    iput-wide v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lastSelectedPeer:J

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topLayout:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;

    invoke-direct {v3, v8, v9}, Lorg/telegram/ui/Stars/StarsReactionsSheet$1;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, v4, Lorg/telegram/messenger/MessagesController;->starsPaidReactionAmountMax:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v0, :cond_9

    aget v0, v3, v14

    int-to-long v1, v0

    cmp-long v25, v1, v6

    if-lez v25, :cond_7

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v0, v3, v14

    int-to-long v0, v0

    cmp-long v2, v0, v6

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    add-int/2addr v14, v15

    move-object/from16 v2, p6

    const/16 v0, 0x9

    goto :goto_4

    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/2addr v1, v15

    goto :goto_6

    :cond_a
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->setSteps(I[I)V

    if-eqz p8, :cond_b

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->toptopLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topLayout:Landroid/widget/FrameLayout;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x1

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v24, 0x37

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorInnerLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v4, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updatePeerDialog()V

    const/16 v4, 0x73

    const/16 v6, 0x1c

    invoke-static {v6, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorIconView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v2, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v30, 0x40800000    # 4.0f

    const/16 v31, 0x0

    const/16 v25, 0x12

    const/high16 v26, 0x41900000    # 18.0f

    const/16 v27, 0x15

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x34

    const/16 v14, 0x11

    invoke-static {v2, v6, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v3, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v32, 0x6

    const/16 v33, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x1

    const/16 v29, 0x73

    const/16 v30, 0x6

    const/16 v31, 0x4

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedChannels()V

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$2;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stars/StarsReactionsSheet$2;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsReactionTitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v32, 0x2

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x77

    const/16 v30, 0x2

    const/16 v31, 0x0

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updateCanSwitchPeer(Z)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-static {v4, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-direct {v3, v4, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v32, 0x6

    const/16 v26, 0x30

    const/16 v27, 0x30

    const/16 v28, 0x0

    const/16 v29, 0x35

    const/16 v30, 0x0

    const/16 v31, 0x6

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topLayout:Landroid/widget/FrameLayout;

    if-eqz p8, :cond_c

    const/high16 v3, 0x43330000    # 179.0f

    const/high16 v30, 0x43330000    # 179.0f

    goto :goto_7

    :cond_c
    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v30, 0x42340000    # 45.0f

    :goto_7
    const/16 v31, 0x0

    const/high16 v32, 0x41700000    # 15.0f

    const/16 v26, -0x1

    const/high16 v27, -0x40000000    # -2.0f

    const/16 v28, 0x37

    const/16 v29, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-wide/from16 v3, p3

    neg-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->statusView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x1

    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v1, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v13, :cond_d

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    const-string v15, "StarsReactionTextSent"

    invoke-static {v15, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    sget v6, Lorg/telegram/messenger/R$string;->StarsReactionText:I

    if-nez v14, :cond_e

    const-string v15, ""

    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_8

    :goto_9
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p8, :cond_f

    const/16 v32, 0x28

    const/16 v33, 0x0

    const/16 v27, -0x1

    const/16 v28, -0x2

    const/16 v29, 0x37

    const/16 v30, 0x28

    const/16 v31, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v5, :cond_11

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$3;

    invoke-direct {v1, v8, v9, v12}, Lorg/telegram/ui/Stars/StarsReactionsSheet$3;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->separatorView:Landroid/view/View;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x1e

    const/16 v29, 0x37

    const/16 v30, 0x0

    const/16 v31, 0x14

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;

    move-object/from16 v3, p5

    invoke-direct {v1, v8, v10, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->setOnSenderClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    const/16 v4, 0x6e

    const/4 v6, -0x1

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkSeparatorView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez p8, :cond_10

    if-eqz v13, :cond_12

    :cond_10
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v28, v15, v4

    const/16 v32, 0x18

    const/16 v33, 0x0

    const/16 v27, -0x1

    const/16 v29, 0x7

    const/16 v30, 0x18

    const/16 v31, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_11
    move-object/from16 v3, p5

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->separatorView:Landroid/view/View;

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkSeparatorView:Landroid/view/View;

    :cond_12
    :goto_b
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v1, 0x15

    invoke-direct {v0, v9, v1, v12}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v1, v4, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-wide v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    cmp-long v1, v3, v18

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    goto :goto_c

    :goto_d
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    if-eqz v1, :cond_14

    iget-wide v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->setMyPrivacy(J)V

    :cond_14
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkTextView:Landroid/widget/TextView;

    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/messenger/R$string;->StarsReactionShowMeInTopSenders:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v16, 0x41000000    # 8.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v2, v6, v1, v4, v15}, Landroid/view/View;->setPadding(IIII)V

    const/16 v32, 0x9

    const/16 v33, 0x0

    const/16 v27, 0x15

    const/16 v28, 0x15

    const/16 v29, 0x10

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    const/4 v1, -0x2

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p8, :cond_15

    if-eqz v13, :cond_17

    :cond_15
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_16

    const/16 v31, 0xa

    goto :goto_e

    :cond_16
    const/16 v31, 0x4

    :goto_e
    const/16 v32, 0x0

    const/16 v33, 0xa

    const/16 v27, -0x2

    const/16 v28, -0x2

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v6, v9, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p8, :cond_18

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    const/high16 v31, 0x41600000    # 14.0f

    const/16 v32, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x30

    const/high16 v29, 0x41600000    # 14.0f

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    const-wide/16 v4, 0x0

    invoke-virtual {v8, v4, v5}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updateSenders(J)V

    sget v0, Lorg/telegram/messenger/R$string;->StarsReactionSend:I

    const-wide/16 v1, 0x32

    const/16 v3, 0x2c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v3, v16

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object v15, v3

    move-object/from16 v3, p5

    move-wide/from16 v20, v4

    move/from16 v4, p2

    move-object/from16 v5, p1

    move-object v10, v6

    move-object/from16 v6, p9

    move-object/from16 v22, v13

    move-object v13, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v10, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda5;

    move-object v0, v6

    move/from16 v2, p2

    move-object/from16 v3, p9

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/messenger/R$string;->StarsReactionTerms:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    if-eqz p8, :cond_19

    iget-object v1, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    const/16 v30, 0xe

    const/16 v31, 0xc

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x11

    const/16 v28, 0xe

    const/16 v29, 0xe

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$6;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v8, v9, v2, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$6;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;II)V

    iput-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->white:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v2, 0x96

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->setValue(I)V

    if-eqz v11, :cond_1d

    move-wide/from16 v4, v20

    const/4 v14, 0x0

    :goto_f
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_1b

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageReactor;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    int-to-long v0, v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1a

    move-wide v4, v0

    :cond_1a
    const/4 v0, 0x1

    add-int/2addr v14, v0

    goto :goto_f

    :cond_1b
    if-eqz v22, :cond_1c

    move-object/from16 v7, v22

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    :cond_1c
    cmp-long v0, v4, v20

    if-lez v0, :cond_1d

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    const-wide/16 v1, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->setStarsTop(J)V

    :cond_1d
    return-void

    :array_0
    .array-data 4
        0x1
        0x32
        0x64
        0x1f4
        0x3e8
        0x7d0
        0x1388
        0x1d4c
        0x2710
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/StarsReactionsSheet;)[Lorg/telegram/ui/Components/ColoredImageSpan;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    return-object p0
.end method

.method static synthetic access$401(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stars/StarsReactionsSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private animate3dIcon(Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v8, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_9

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageCell:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->asStar()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v4

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_9

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    if-nez v4, :cond_6

    iget-object v6, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_2

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/BaseCell;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    return-void

    :cond_5
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_6

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->asStar()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v4

    :cond_6
    move-object/from16 v16, v2

    move-object v13, v3

    move-object v15, v4

    if-nez v15, :cond_7

    return-void

    :cond_7
    new-array v11, v0, [I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->access$200(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    aget v2, v11, v5

    int-to-float v2, v2

    aget v4, v11, v1

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    new-instance v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda14;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->whenReady(Ljava/lang/Runnable;)V

    iput-boolean v5, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->invalidate()V

    new-instance v17, Landroid/graphics/RectF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/RectF;-><init>()V

    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda15;

    move-object v9, v2

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda15;-><init>(Landroid/view/View;[ILandroid/graphics/RectF;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    const/high16 v7, 0x43160000    # 150.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    new-array v9, v1, [Z

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda16;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v4, v17

    move-object v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Ljava/lang/Runnable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;[ZLjava/lang/Runnable;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;

    move-object v0, v10

    move-object v2, v15

    move-object/from16 v3, v16

    move-object v4, v9

    move-object/from16 v5, v17

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsReactionsSheet$7;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Landroid/view/View;[ZLandroid/graphics/RectF;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$8;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$8;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private canSwitchPeer()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getAdminedChannels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkVisibility()V
    .locals 9

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkedVisiblity:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkedVisiblity:Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMyPaidReactionPeer()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->setMyPaidReactionDialogId(J)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController$MessageId;->from(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarsController$MessageId;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;-><init>()V

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/ui/Stars/StarsController$MessageId;->did:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v3, v1, Lorg/telegram/ui/Stars/StarsController$MessageId;->mid:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;->msg_id:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyDefault;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyDefault;-><init>()V

    :goto_0
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;->privacy:Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;

    goto :goto_1

    :cond_3
    const-wide/32 v5, 0x28ae10

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyAnonymous;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyAnonymous;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyPeer;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$paidReactionPrivacyPeer;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_togglePaidReactionPrivacy;->privacy:Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;

    iget v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->starReactionAnonymousUpdate:I

    iget-wide v5, v1, Lorg/telegram/ui/Stars/StarsController$MessageId;->did:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v1, v1, Lorg/telegram/ui/Stars/StarsController$MessageId;->mid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v6, v7, v0

    invoke-virtual {v3, v4, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    return-void
.end method

.method private synthetic lambda$animate3dIcon$12()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->drawCounterImage:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$animate3dIcon$13(Landroid/view/View;[ILandroid/graphics/RectF;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    aget v0, p1, p0

    iget v1, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    add-int/2addr v0, v1

    iget v1, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    add-int/2addr v2, v3

    iget v3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    aget p0, p1, p0

    iget v3, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    add-int/2addr p0, v3

    iget v3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr p0, v3

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr p0, v3

    int-to-float p0, p0

    aget p1, p1, v1

    iget p3, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    add-int/2addr p1, p3

    iget p3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr p1, p3

    int-to-float p1, p1

    iget p3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, v5

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, v2, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private synthetic lambda$animate3dIcon$14(Ljava/lang/Runnable;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;[ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-static {p2, p3, p7, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p7

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p1, p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->icon3dView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float p2, p2, p7

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p2, p2, p7

    sub-float/2addr p4, p2

    const/4 p2, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->white:F

    const/4 p1, 0x0

    aget-boolean p2, p5, p1

    if-nez p2, :cond_0

    const p2, 0x3f733333    # 0.95f

    cmpl-float p2, p7, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    aput-boolean p2, p5, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    const/high16 p5, 0x3fc00000    # 1.5f

    invoke-static {p4, p3, p5}, Lorg/telegram/ui/LaunchActivity;->makeRipple(FFF)V

    :try_start_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkVisibility$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(ILorg/telegram/ui/ChatActivity;Ljava/lang/Long;)V
    .locals 5

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const-string p1, "my_profile"

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$4;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$4;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dismiss()V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    const-string p3, "chat_id"

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p3, Lorg/telegram/ui/Stars/StarsReactionsSheet$5;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$5;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/os/Bundle;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lastSelectedPeer:J

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x28ae10

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updatePeerDialog()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->setMyPrivacy(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->sending:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->animate3dIcon(Ljava/lang/Runnable;)V

    new-instance p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;)V

    const-wide/16 v0, 0xf0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;J)V
    .locals 10

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Stars/StarsController;->sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v0

    int-to-long v11, v0

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v9

    new-instance v15, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda10;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;J)V

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v2, v0, v11

    if-gez v2, :cond_3

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    if-nez v8, :cond_2

    const-string v1, ""

    :goto_0
    move-object v14, v1

    goto :goto_1

    :cond_2
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v13, 0x5

    move-object v8, v0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_2

    :cond_3
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$7(J)V
    .locals 2

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->lastSelectedPeer:J

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updatePeerDialog()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->setMyPrivacy(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLandroid/view/View;)V
    .locals 9

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/ui/Stars/BotStarsController;->getAdminedChannels()Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorInnerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p2, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    :goto_1
    cmp-long v4, v2, p3

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    new-instance v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v2, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;J)V

    invoke-virtual {p2, v0, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addChat(Lorg/telegram/tgnet/TLObject;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$new$9(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsReactionTermsLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateSenders$10(Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;)I
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->stars:J

    iget-wide p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->stars:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private updateCanSwitchPeer(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->canSwitchPeer()Z

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->canSwitchPeer()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->canSwitchPeer()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogSelectorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    new-instance p1, Landroid/transition/ChangeBounds;

    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->toptopLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_3
    return-void
.end method

.method private updatePeerDialog()V
    .locals 6

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const v1, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    const-wide/32 v3, 0x28ae10

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    iget v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    if-ltz v5, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->dialogImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    :cond_1
    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected appendOpenAnimator(ZLjava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v5, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v6, 0x3f19999a    # 0.6f

    :goto_1
    new-array v7, v1, [F

    aput v6, v7, v0

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const v4, 0x3f19999a    # 0.6f

    :goto_2
    new-array p1, v1, [F

    aput v4, p1, v0

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->slider:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->access$500(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->adminedChannelsLoaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->updateCanSwitchPeer(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->sending:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->checkVisibility()V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->iconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method protected isTouchOutside(FF)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isTouchOutside(FF)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->adminedChannelsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->adminedChannelsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setMessageCell(Lorg/telegram/ui/ChatActivity;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageId:I

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->messageCell:Landroid/view/View;

    return-void
.end method

.method public updateSenders(J)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->reactors:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-wide v10, v3

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->reactors:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->reactors:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;

    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    iget-boolean v14, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->anonymous:Z

    if-eqz v14, :cond_1

    iget-boolean v12, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    if-eqz v12, :cond_0

    move-wide/from16 v16, v5

    goto :goto_1

    :cond_0
    neg-int v12, v2

    sub-int/2addr v12, v7

    int-to-long v12, v12

    :cond_1
    move-wide/from16 v16, v12

    :goto_1
    iget-boolean v12, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    if-nez v12, :cond_3

    cmp-long v12, v16, v5

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    int-to-long v12, v8

    const/4 v15, 0x0

    move-wide/from16 v18, v12

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->of(ZZJJ)Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    int-to-long v10, v8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-long v10, v10, p1

    cmp-long v2, v10, v3

    if-lez v2, :cond_6

    iget-wide v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    const-wide/32 v12, 0x28ae10

    cmp-long v4, v2, v12

    if-nez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x1

    move-wide v7, v10

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->of(ZZJJ)Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet;->topSendersView:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->setSenders(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
