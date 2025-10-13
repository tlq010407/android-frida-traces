.class Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpansChunk"
.end annotation


# instance fields
.field private allowBackgroundRendering:Z

.field backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

.field holders:Ljava/util/ArrayList;

.field layout:Landroid/text/Layout;

.field final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/text/Layout;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->view:Landroid/view/View;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->allowBackgroundRendering:Z

    return-void
.end method

.method private checkBackgroundRendering()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->allowBackgroundRendering:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    if-nez v0, :cond_0

    const/16 v0, 0x4004

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->padding:I

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->spansChunk:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->checkBackgroundRendering()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/util/List;JFFFFLandroid/graphics/ColorFilter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    if-nez v6, :cond_0

    move/from16 v15, p7

    move-object/from16 v14, p9

    goto :goto_3

    :cond_0
    iget-object v4, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-object/from16 v14, p9

    if-eqz v4, :cond_1

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v4, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean v7, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    if-nez v7, :cond_2

    move/from16 v15, p7

    goto :goto_3

    :cond_2
    iget v7, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v5, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    iget v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    iget-object v8, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    sub-float v9, v5, v7

    float-to-int v9, v9

    sub-float v10, v4, v7

    float-to-int v10, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v8, v9, v10, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v1, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    if-eqz v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1
    move/from16 v15, p7

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    iput v15, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawingYOffset:F

    iput v4, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    if-nez v4, :cond_4

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v6 .. v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->draw(Landroid/graphics/Canvas;JFFFLandroid/graphics/ColorFilter;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->backgroundThreadDrawable:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    if-eqz v4, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v9, v1, v2

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move/from16 v10, p8

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    :cond_6
    return-void
.end method

.method public remove(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->spansChunk:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->checkBackgroundRendering()V

    return-void
.end method
