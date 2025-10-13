.class public Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;
    }
.end annotation


# instance fields
.field private amplitude:F

.field private amplitude2:F

.field private animateAmplitudeDiff:F

.field private animateAmplitudeDiff2:F

.field private animateToAmplitude:F

.field currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field private lastUpdateTime:J

.field lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

.field paint:Landroid/graphics/Paint;

.field parents:Ljava/util/ArrayList;

.field path:Landroid/graphics/Path;

.field pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field progressToState:F

.field rect:Landroid/graphics/RectF;

.field private final selectedPaint:Landroid/graphics/Paint;

.field states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->rect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkColors()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->checkColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public addParent(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->checkColors()V

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    cmpl-float v3, p2, p4

    if-lez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v3, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v3

    if-ne v3, v10, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v3

    if-ne v3, v10, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    sub-long v5, v3, v5

    iput-wide v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    const-wide/16 v3, 0x14

    cmp-long v7, v5, v3

    if-lez v7, :cond_6

    const-wide/16 v5, 0x11

    :cond_6
    const-wide/16 v3, 0x3

    cmp-long v7, v5, v3

    if-gez v7, :cond_7

    move-wide v13, v5

    const/4 v12, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v12, v2

    move-wide v13, v5

    goto :goto_4

    :cond_8
    const-wide/16 v5, 0x0

    goto :goto_3

    :goto_4
    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v12, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_b

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    long-to-float v5, v13

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_9

    cmpl-float v3, v3, v2

    if-lez v3, :cond_a

    goto :goto_5

    :cond_9
    cmpg-float v3, v3, v2

    if-gez v3, :cond_a

    :goto_5
    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    :cond_a
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_b
    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_e

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    long-to-float v5, v13

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_c

    cmpl-float v3, v3, v2

    if-lez v3, :cond_d

    goto :goto_6

    :cond_c
    cmpg-float v3, v3, v2

    if-gez v3, :cond_d

    :goto_6
    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    :cond_d
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    long-to-float v3, v13

    const/high16 v4, 0x437a0000    # 250.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    cmpl-float v2, v2, v15

    if-lez v2, :cond_f

    iput v15, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :cond_f
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_10
    const/4 v8, 0x0

    :goto_7
    const/4 v1, 0x2

    if-ge v8, v1, :cond_1b

    if-nez v8, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v1, :cond_11

    move v15, v8

    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_11
    if-nez v8, :cond_12

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    sub-float v1, v15, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    move/from16 v16, v1

    goto :goto_a

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v2, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v1, :cond_14

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    goto :goto_9

    :cond_14
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_9
    if-eqz v12, :cond_15

    sub-float v3, p4, p2

    float-to-int v3, v3

    sub-float v4, p3, p1

    float-to-int v4, v4

    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    move-wide v5, v13

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->update(IIJF)V

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_8

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iput v9, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    if-ne v8, v10, :cond_16

    if-eqz v12, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    :cond_16
    const/16 v1, 0x200

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42980000    # 76.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float v2, v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float v18, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v3, p2, v2

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v15, v8

    move/from16 v8, p2

    const/16 v19, 0x0

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v3, p2, v18

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_b

    :cond_17
    move v15, v8

    const/16 v19, 0x0

    :goto_b
    if-ne v15, v10, :cond_18

    if-eqz v11, :cond_18

    goto :goto_d

    :cond_18
    if-ne v15, v10, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    :goto_c
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e

    :cond_19
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    goto :goto_c

    :goto_e
    if-ne v15, v10, :cond_1a

    if-eqz v11, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    sub-float v2, p4, p2

    div-float v2, v2, v17

    add-float v2, p2, v2

    sub-float v3, p3, p1

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    mul-float v3, v3, v16

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v9, p5

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p2

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p2

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    :goto_f
    add-int/lit8 v8, v15, 0x1

    const/4 v9, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_1b
    return-void
.end method

.method public removeParent(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :cond_0
    return-void
.end method

.method public setAmplitude(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    div-float v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    return-void
.end method

.method public updateState(Z)V
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
