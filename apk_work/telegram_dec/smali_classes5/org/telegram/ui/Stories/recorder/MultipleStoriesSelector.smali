.class public abstract Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;
    }
.end annotation


# instance fields
.field private animatedHint:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final buttonBounds:Landroid/graphics/RectF;

.field private final buttonTouchBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private final closePath:Landroid/graphics/Path;

.field private counter:Lorg/telegram/ui/Components/Text;

.field private final darkenBackground:Landroid/graphics/Paint;

.field private final hideHint:Ljava/lang/Runnable;

.field private hint:Lorg/telegram/ui/Components/Text;

.field private final hintArc:Landroid/graphics/RectF;

.field private final hintBounds:Landroid/graphics/RectF;

.field private final hintClipPath:Landroid/graphics/Path;

.field private hintShown:Z

.field private final listBounds:Landroid/graphics/RectF;

.field private listShown:Z

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedOrder:Ljava/util/ArrayList;

.field private selectedStories:Ljava/util/ArrayList;

.field private selectedStory:I

.field private stories:Ljava/util/ArrayList;

.field private final strokePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$8nIDLcGaS14RqKZHEuh0qqJveEw(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bwq1YshajCf_a3YYHTLM8WjAVks(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->lambda$showList$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJZE59CpY53mJg-uaA6KCuYzbyU(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdCj-hFGO0deaP4r_YAigmZnDGw(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$iP6saSPjNR4ILdhYQAD3QBdWUOQ(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->lambda$fillItems$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lHkKEmnJSDx2_w_YKtBtEdPF-jM(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->lambda$setSelected$3(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLhX0fiLt76UPkXm4nBQnMwwJto(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->lambda$updateItemsAnimated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oCmhGPLtVDpHX_R_KASdOz9iUKo(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->whenReordered(ILjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v7, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->stories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda1;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hideHint:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonTouchBounds:Landroid/graphics/RectF;

    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->closePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->darkenBackground:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->animatedHint:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->clipPath:Landroid/graphics/Path;

    iput-boolean v14, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    move-object/from16 v9, p2

    iput-object v9, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v7, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    const v0, 0x408a8f5c    # 4.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->customBlur()Z

    move-result v1

    xor-int/2addr v1, v14

    const/4 v15, 0x0

    invoke-direct {v0, v7, v12, v15, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    iput-object v0, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v12, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda2;

    invoke-direct {v6, v12}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    new-instance v7, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda3;

    invoke-direct {v7, v12}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v14, v12, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v14, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v14, v1, v15, v0, v15}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x78

    const/16 v1, 0x55

    const/4 v2, -0x2

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    invoke-virtual {v14, v1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;Z)V

    invoke-virtual {v12, v15, v15}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    invoke-virtual {v12, v15}, Landroid/view/View;->setWillNotDraw(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->getPositionOf(I)I

    move-result p0

    return p0
.end method

.method private drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 15

    .line 0
    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v14

    if-gez v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p4

    float-to-int v0, v0

    const/16 v1, 0x1f

    invoke-virtual {v11, v12, v0, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->darkenBackground:Landroid/graphics/Paint;

    const/16 v1, 0x26

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->darkenBackground:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v13, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaints(FFF)[Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    aget-object v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {v11, v12, v13, v13, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {v11, v12, v13, v13, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->darkenBackground:Landroid/graphics/Paint;

    const/high16 v1, 0x424c0000    # 51.0f

    mul-float v1, v1, p4

    float-to-int v1, v1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->darkenBackground:Landroid/graphics/Paint;

    const/16 v1, 0x80

    goto :goto_0

    :goto_2
    cmpg-float v0, p4, v14

    if-gez v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$Factory;->asStoryEntry(IILorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStory:I

    if-ne v6, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;I)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    return-void
.end method

.method private getPositionOf(I)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private synthetic lambda$fillItems$1(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->updateItemsAnimated()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setSelected$3(ILandroid/view/View;)V
    .locals 4

    instance-of v0, p2, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->getPositionOf(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setPosition(I)V

    iget v0, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setSelected(ZZ)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showList$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateItemsAnimated$0(Landroid/view/View;)V
    .locals 6

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->getPositionOf(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setPosition(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStory:I

    iget v3, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v5}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setSelected(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0, v5}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setChecked(ZZ)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    return-void
.end method

.method private onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->onSwitchToStory(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method private updateItemsAnimated()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private whenReordered(ILjava/util/ArrayList;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/UItem;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->updateItemsAnimated()V

    return-void
.end method


# virtual methods
.method protected abstract customBlur()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonTouchBounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonTouchBounds:Landroid/graphics/RectF;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v1, v2, v11}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v10

    const v4, 0x3f666666    # 0.9f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->counter:Lorg/telegram/ui/Components/Text;

    const v12, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->counter:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    div-float/2addr v3, v10

    sub-float v3, v2, v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    sub-float v6, v11, v2

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->closePath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hint:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->animatedHint:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    cmpl-float v1, v6, v2

    if-lez v1, :cond_2

    invoke-static {v12, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hint:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v4

    iget v13, v13, Landroid/graphics/RectF;->top:F

    const v15, 0x411a8f5c    # 9.66f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v13, v10

    sub-float/2addr v13, v5

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    invoke-virtual {v12, v14, v13, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float v10, v10, v1

    sub-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v12, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float v10, v10, v1

    sub-float/2addr v12, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v13, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v12, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v11, v6

    mul-float v8, v8, v11

    invoke-virtual {v3, v2, v8}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v3, v8

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float v11, v10, v3

    add-float v12, v9, v3

    invoke-virtual {v8, v10, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->right:F

    sub-float v13, v10, v3

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float v14, v9, v3

    invoke-virtual {v8, v13, v9, v10, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->right:F

    sub-float v13, v10, v3

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v14, v9, v3

    invoke-virtual {v8, v13, v14, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v2, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x41680000    # 14.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    const v10, 0x40b51eb8    # 5.66f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v9, v13

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v13, v8, v3

    add-float v14, v9, v3

    invoke-virtual {v2, v9, v13, v14, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintArc:Landroid/graphics/RectF;

    invoke-virtual {v2, v8, v11, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintClipPath:Landroid/graphics/Path;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v2, v3, v6}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v1, v1, v3, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hint:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    sub-float v4, v2, v5

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->clipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    return v0

    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/high16 p3, 0x41700000    # 15.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x43300000    # 176.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected abstract onSwitchToStory(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    if-nez v0, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public set(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->stories:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedOrder:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStories:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p2, p3, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->counter:Lorg/telegram/ui/Components/Text;

    new-instance p2, Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string p3, "HintViewStoriesMultiple"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hint:Lorg/telegram/ui/Components/Text;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public setSelected(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStory:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->selectedStory:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;I)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public showHint()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "multistorieshint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hideHint:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hideHint:Ljava/lang/Runnable;

    const-wide/16 v1, 0x157c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showList(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listShown:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const v0, 0x3f266666    # 0.65f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$2;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0x168

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const v0, 0x3f266666    # 0.65f

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    if-eqz p1, :cond_9

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->hintShown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
