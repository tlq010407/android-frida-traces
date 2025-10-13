.class public Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BotPreviewsEditLangContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;,
        Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

.field private allowStoriesSingleColumn:Z

.field private animateToColumnsCount:I

.field private columnsAnimation:Z

.field private columnsAnimationProgress:F

.field private columnsCount:I

.field private final emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private final emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final emptyViewOr:Landroid/widget/TextView;

.field private final footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

.field isInPinchToZoomTouchMode:Z

.field private final itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private final layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

.field private final listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

.field maybePinchToZoomTouchMode:Z

.field maybePinchToZoomTouchMode2:Z

.field pinchCenterOffset:I

.field pinchCenterPosition:I

.field pinchCenterX:I

.field pinchCenterY:I

.field pinchScale:F

.field pinchScaleUp:Z

.field pinchStartDistance:F

.field private pointerId1:I

.field private pointerId2:I

.field private final progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field rect:Landroid/graphics/Rect;

.field private reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private storiesColumnsCountSet:Z

.field private final supportingAdapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

.field private final supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

.field final synthetic this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;


# direct methods
.method public static synthetic $r8$lambda$5DMNcAkV1cZvreBNXpuFaAmxJ3c(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$new$4(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7gUW4SiTeCe8OL8kAsNpKNN8oFg(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$new$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ChVuz5yOLsPu0eiyIcIbuFvdhvY(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$updateFooter$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PbY7DccQtGmm4JcpfKTc2fVbbL8(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDXAPm1EybWHkcBQjKLVRqKyFb8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$new$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Yu2Y7QbzoxyFKlmRvT8uYhd6EPE(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$updateFooter$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3iLN-lcjIDsSOZX-CIhCO0DT3M(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->lambda$updateFooter$1(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    sget v3, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->storiesColumnsCountSet:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->rect:Landroid/graphics/Rect;

    new-instance v4, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$1;

    const/16 v6, 0x64

    invoke-direct {v4, v0, v2, v6, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$1;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;ILorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v6, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$2;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget v6, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v7, 0x118

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    new-instance v6, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$3;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$3;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    invoke-virtual {v6, v3, v3, v3, v3}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v5, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$4;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$4;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v9, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v9, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    new-instance v10, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;

    const/4 v11, 0x3

    invoke-direct {v10, v0, v2, v11, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;ILorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v10, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v11, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$6;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$6;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget v11, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;

    invoke-direct {v11, v0, v2, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->makeSupporting()Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingAdapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v9, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$8;

    invoke-direct {v9, v0, v2, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$8;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v9, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    new-instance v11, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v11, v2, v9, v7}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda2;

    invoke-direct {v12}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v11, v7, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v12, v11, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v11, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v12, Lorg/telegram/messenger/R$string;->ProfileBotPreviewEmptyTitle:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v11, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/MessagesController;->botPreviewMediasMax:I

    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "ProfileBotPreviewEmptyText"

    invoke-static {v14, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v11, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v12, Lorg/telegram/messenger/R$string;->ProfileBotPreviewEmptyButton:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v10, v11, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v11, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v12, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$9;

    invoke-direct {v10, v0, v2, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$9;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    iput-object v10, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewOr:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$2400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    sget v12, Lorg/telegram/messenger/R$string;->ProfileBotOr:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v10, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/view/View;->setTextAlignment(I)V

    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v13, v11, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v14, 0xa5

    const/4 v15, -0x2

    const/16 v16, 0x11

    const/16 v17, 0x0

    const/16 v18, 0x11

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$2400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-direct {v10, v2, v3, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v13, 0x43480000    # 200.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setMinWidth(I)V

    iget-object v13, v11, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x2c

    invoke-static {v15, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v13, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v11, v9, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    new-instance v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v4, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$2400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    const/16 v1, 0x30

    invoke-static {v5, v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingAdapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->storiesColumnsCountSet:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->storiesColumnsCountSet:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->updateFooter()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->saveScrollPosition()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    return-object p0
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private finishPinchToMediaColumnsCount()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-nez v5, :cond_3

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    iput v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1202(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;I)I

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStoriesColumnsCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    iget v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterOffset:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->saveScrollPosition()V

    :goto_1
    return-void

    :cond_3
    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-nez v6, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v1

    aput v4, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$12;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$13;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$13;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)V
    .locals 4

    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->unselect(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->select(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ProfileActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/ProfileActivity;->myProfile:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip(I)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v1, v2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->unselect(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->select(Lorg/telegram/messenger/MessageObject;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private static synthetic lambda$new$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->createStory(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateFooter$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->createStory(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateFooter$1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->addTranslation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->deleteLang(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFooter$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->deleteLang(Ljava/lang/String;)V

    return-void
.end method

.method private saveScrollPosition()V
    .locals 0

    return-void
.end method

.method private selectPinchPosition(II)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    iget v0, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterOffset:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startPinchToMediaColumnsCount(Z)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->getNextMediaColumnsCount(IZ)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    if-eq p1, v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingAdapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$11;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    iget p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterOffset:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->saveScrollPosition()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateFooter()V
    .locals 13

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->getCount()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    const/16 v5, 0x8

    if-lez v1, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    if-eqz v3, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterGeneral:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v8, v4

    goto :goto_5

    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterLanguage:I

    iget-object v6, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :goto_5
    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotAddPreview:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-lez v1, :cond_5

    move-object v11, v4

    goto :goto_7

    :cond_5
    if-eqz v3, :cond_6

    sget v6, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterCreateTranslation:I

    goto :goto_6

    :cond_6
    sget v6, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterDeleteTranslation:I

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_7
    if-nez v3, :cond_7

    if-lez v1, :cond_7

    move-object v12, v4

    goto :goto_8

    :cond_7
    new-instance v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Z)V

    move-object v12, v1

    :goto_8
    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;->set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    if-eqz v3, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ProfileBotPreviewEmptyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->botPreviewMediasMax:I

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ProfileBotPreviewEmptyText"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->ProfileBotPreviewEmptyButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewOr:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterLanguage:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->ProfileBotPreviewEmptyButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewOr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->ProfileBotPreviewFooterDeleteTranslation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyViewButton2:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->getItemCount()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->botPreviewMediasMax:I

    if-lt v1, v3, :cond_9

    const/16 v2, 0x8

    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkPinchToZoom(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimation:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode2:Z

    if-eqz v0, :cond_15

    :cond_3
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v3, v9, :cond_6

    iget v9, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v7, v3

    :cond_4
    iget v9, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_5

    move v8, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eq v7, v0, :cond_14

    if-ne v8, v0, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v9, v0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v7, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchStartDistance:F

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-nez v3, :cond_a

    const v3, 0x3f8147ae    # 1.01f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_8

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    :cond_8
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScaleUp:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->startPinchToMediaColumnsCount(Z)V

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScaleUp:Z

    if-eqz v0, :cond_b

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_c

    :cond_b
    if-nez v0, :cond_d

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    :cond_c
    iput v5, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float v0, v6, v4

    goto :goto_2

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    sub-float v0, v6, v0

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v0, v3

    :goto_2
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_f

    cmpl-float v3, v0, v5

    if-nez v3, :cond_13

    :cond_f
    cmpl-float v0, v0, v6

    if-nez v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getStartedTrackingX()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v3, v6

    div-float/2addr v4, v3

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->animateToColumnsCount:I

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    mul-int v0, v0, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->getItemCount()I

    move-result v3

    if-lt v0, v3, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    :cond_10
    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterPosition:I

    :cond_11
    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->finishPinchToMediaColumnsCount()V

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsAnimationProgress:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScaleUp:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScaleUp:Z

    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScaleUp:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->startPinchToMediaColumnsCount(Z)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchStartDistance:F

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_14
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode2:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->finishPinchToMediaColumnsCount()V

    return v1

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_16

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_1a

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode2:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->finishPinchToMediaColumnsCount()V

    goto/16 :goto_6

    :cond_18
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_19

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v7, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchStartDistance:F

    iput v6, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchScale:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pointerId2:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v3, v6

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterY:I

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->pinchCenterX:I

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->selectPinchPosition(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode2:Z

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1a

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->maybePinchToZoomTouchMode:Z

    :cond_1a
    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->isInPinchToZoomTouchMode:Z

    return p1

    :cond_1b
    :goto_7
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getNextMediaColumnsCount(IZ)I
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    add-int/2addr p1, v1

    const/4 v1, 0x6

    if-le p1, v1, :cond_2

    if-nez p2, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    :cond_2
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    :goto_2
    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    iget v1, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;->topPadding:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->footer:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$FooterView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    return-void
.end method

.method public setList(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->allowStoriesSingleColumn:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->storiesColumnsCountSet:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1200(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->columnsCount:I

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->adapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->setList(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->supportingAdapter:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->setList(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->updateFooter()V

    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    neg-int p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateSelection(Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
