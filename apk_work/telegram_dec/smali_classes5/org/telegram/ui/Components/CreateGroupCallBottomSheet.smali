.class public Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$TopCell;
    }
.end annotation


# instance fields
.field private final canRtmpStream:Z

.field private final chats:Ljava/util/List;

.field private final dialogId:J

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final isChannelOrGiga:Z

.field private isScheduleSelected:Z

.field private final joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

.field private final needSelector:Z

.field private selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public static synthetic $r8$lambda$AqPyUcpcBSvQZbXifhcrSL4Jmws(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->lambda$new$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYAEiO_2cpVXuO37hNPmhrHj-Wo(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHvArFx-BCULSOIdXzQEcgjei4E(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;JLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v4}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v1, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-wide v2, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->dialogId:J

    const v1, 0x3e851eb8    # 0.26f

    iput v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->chats:Ljava/util/List;

    move-object/from16 v2, p5

    iput-object v2, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->isChannelOrGiga:Z

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v3, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->needSelector:Z

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->canRtmpStream:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$1;-><init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;Landroid/content/Context;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42f00000    # 120.0f

    const/16 v9, 0x50

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v5, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v2, :cond_1

    sget v9, Lorg/telegram/messenger/R$string;->VoipChannelStartVoiceChat:I

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    sget v9, Lorg/telegram/messenger/R$string;->VoipGroupStartVoiceChat:I

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    const/16 v14, 0x78

    invoke-static {v13, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-static {v10, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v20, 0x41800000    # 16.0f

    const/high16 v21, 0x42700000    # 60.0f

    const/4 v15, -0x1

    const/high16 v16, 0x42400000    # 48.0f

    const/16 v17, 0x50

    const/high16 v18, 0x41800000    # 16.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v10, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v2, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelScheduleVoiceChat:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupScheduleVoiceChat:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    const v1, 0x3ccccccd    # 0.025f

    invoke-static {v10, v1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TextView;F)V

    :cond_3
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x40c00000    # 6.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x50

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->needSelector:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->isChannelOrGiga:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->chats:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->canRtmpStream:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->isScheduleSelected:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)V
    .locals 4

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->chats:Ljava/util/List;

    add-int/lit8 p2, p2, -0x4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p2, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :cond_1
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_2

    instance-of v3, v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static show(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 7

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;JLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet$2;-><init>(Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;)V

    return-object p1
.end method

.method public dismissInternal()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    iget-object v2, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->chats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->isScheduleSelected:Z

    invoke-interface {v1, v0, v4, v2, v3}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    :cond_1
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CreateGroupCallBottomSheet;->isChannelOrGiga:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->StartVoipChannelTitle:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->StartVoipChatTitle:I

    goto :goto_0
.end method
