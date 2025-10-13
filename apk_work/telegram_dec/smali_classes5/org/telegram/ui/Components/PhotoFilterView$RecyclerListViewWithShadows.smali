.class Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerListViewWithShadows"
.end annotation


# instance fields
.field private bottom:Z

.field private bottomAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final bottomPaint:Landroid/graphics/Paint;

.field private top:Z

.field private topAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final topPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->topPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottomPaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->topAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottomAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v8, v4

    const/high16 v13, -0x1000000

    const/4 v14, 0x0

    filled-new-array {v13, v14}, [I

    move-result-object v9

    const/4 v15, 0x2

    new-array v10, v15, [F

    fill-array-data v10, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    move-object/from16 v11, v23

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    filled-new-array {v14, v13}, [I

    move-result-object v21

    new-array v4, v15, [F

    fill-array-data v4, :array_1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAlphas()V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->top:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottom:Z

    if-eq v1, v2, :cond_1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->top:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottom:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->topAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->top:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->topPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v8, v0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v9, v1

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->topPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottomAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottom:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottomPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->bottomPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;->updateAlphas()V

    return-void
.end method
