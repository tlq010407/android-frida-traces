.class public Lorg/telegram/ui/Components/VideoPlayerSeekBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;
    }
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static strokePaint:Landroid/graphics/Paint;

.field private static thumbWidth:I

.field private static tmpPath:Landroid/graphics/Path;

.field private static tmpRadii:[F


# instance fields
.field private final TIMESTAMP_GAP:F

.field private animateFromBufferedProgress:F

.field private animateResetBuffering:Z

.field private animateThumbLoopBackProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animateThumbProgress:F

.field private animatedThumbX:F

.field private backgroundColor:I

.field private backgroundSelectedColor:I

.field private bufferedAnimationValue:F

.field private bufferedProgress:F

.field private cacheColor:I

.field private circleColor:I

.field private currentRadius:F

.field private currentTimestamp:I

.field private delegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

.field private draggingThumbX:I

.field private fromThumbX:I

.field private height:I

.field private horizontalPadding:I

.field private lastCaption:Ljava/lang/CharSequence;

.field private lastTimestamp:I

.field private lastTimestampUpdate:J

.field private lastTimestampsAppearingUpdate:J

.field private lastUpdateTime:J

.field private lastVideoDuration:J

.field private lastWidth:F

.field private lineHeight:I

.field private loopBackWasThumbX:F

.field private parentView:Landroid/view/View;

.field private pressed:Z

.field private pressedDelayed:Z

.field private progress:F

.field private progressColor:I

.field private rect:Landroid/graphics/RectF;

.field private selected:Z

.field private smallLineColor:I

.field private smallLineHeight:I

.field private thumbDX:I

.field private thumbX:I

.field private timestampChangeDirection:I

.field private timestampChangeT:F

.field private timestampLabel:[Landroid/text/StaticLayout;

.field private timestampLabelPaint:Landroid/text/TextPaint;

.field private timestamps:Ljava/util/ArrayList;

.field private timestampsAppearing:F

.field private transitionProgress:F

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$HXVmQpXV-OaIWcPyBzGpiNnNuIE(Lorg/telegram/ui/Components/VideoPlayerSeekBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lambda$onTouch$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o3EHnMr9BcAI-6WfiUzSrQzpwFA(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lambda$updateTimestamps$1(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbDX:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressedDelayed:Z

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lineHeight:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->fromThumbX:I

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->TIMESTAMP_GAP:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestamp:I

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastWidth:F

    sget-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbLoopBackProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_f

    :cond_0
    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget v7, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v7, v7

    sget v8, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    const/4 v11, 0x0

    invoke-static {v8, v11, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    int-to-float v10, v10

    sget v12, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v9

    sub-float/2addr v10, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v13, v13

    mul-float v13, v13, v9

    sub-float/2addr v12, v13

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v10, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    add-float/2addr v8, v10

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v10, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v10, v10, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    sget-object v9, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpPath:Landroid/graphics/Path;

    if-nez v9, :cond_1

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    sput-object v9, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpPath:Landroid/graphics/Path;

    :cond_1
    sget-object v9, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v13, v8, v7

    div-float/2addr v9, v13

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, -0x1

    if-ge v14, v15, :cond_3

    iget-object v15, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v9

    if-ltz v15, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, -0x1

    :goto_1
    if-gez v14, :cond_4

    const/4 v14, 0x0

    :cond_4
    iget-object v15, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v6

    :goto_2
    if-ltz v15, :cond_6

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v12, v11

    cmpl-float v11, v11, v9

    if-ltz v11, :cond_5

    add-int/lit8 v16, v15, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v15, v15, -0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    if-gez v16, :cond_7

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    :cond_7
    move/from16 v11, v16

    move v15, v14

    :goto_4
    if-gt v15, v11, :cond_16

    if-ne v15, v14, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    add-int/lit8 v5, v15, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_5
    if-ne v15, v11, :cond_9

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    :goto_7
    if-eq v15, v11, :cond_a

    if-eqz v15, :cond_a

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v6

    if-ge v15, v13, :cond_a

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sub-float/2addr v13, v5

    cmpg-float v13, v13, v9

    if-gtz v13, :cond_a

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_a
    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v7, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    if-lez v15, :cond_b

    move/from16 v19, v10

    goto :goto_8

    :cond_b
    const/16 v19, 0x0

    :goto_8
    add-float v5, v5, v19

    iput v5, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    if-ge v15, v11, :cond_c

    move v12, v10

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_9
    sub-float/2addr v5, v12

    iput v5, v13, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_e

    iput v12, v13, Landroid/graphics/RectF;->right:F

    :cond_e
    iget v12, v13, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v6

    if-gez v12, :cond_f

    const/16 v18, 0x0

    goto/16 :goto_d

    :cond_f
    iget v12, v13, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v6

    if-gez v12, :cond_10

    iput v6, v13, Landroid/graphics/RectF;->left:F

    :cond_10
    sget-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    if-nez v6, :cond_11

    const/16 v6, 0x8

    new-array v6, v6, [F

    sput-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    :cond_11
    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x7

    const v23, 0x3f333333    # 0.7f

    if-eq v15, v14, :cond_12

    if-eqz v5, :cond_13

    iget v6, v13, Landroid/graphics/RectF;->left:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_13

    :cond_12
    const/4 v12, 0x1

    const/16 v18, 0x0

    goto :goto_b

    :cond_13
    if-lt v15, v11, :cond_14

    sget-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    mul-float v23, v23, v4

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    mul-float v23, v23, v12

    aput v23, v6, v22

    aput v23, v6, v21

    const/4 v12, 0x1

    aput v23, v6, v12

    const/4 v12, 0x0

    aput v23, v6, v12

    aput v4, v6, v20

    const/4 v12, 0x4

    aput v4, v6, v12

    const/16 v24, 0x3

    aput v4, v6, v24

    const/16 v17, 0x2

    aput v4, v6, v17

    const/4 v12, 0x2

    const/16 v18, 0x0

    goto :goto_c

    :cond_14
    const/4 v12, 0x4

    const/16 v17, 0x2

    const/16 v24, 0x3

    sget-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    mul-float v23, v23, v4

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    mul-float v23, v23, v12

    aput v23, v6, v20

    const/4 v12, 0x4

    aput v23, v6, v12

    aput v23, v6, v24

    aput v23, v6, v17

    aput v23, v6, v22

    aput v23, v6, v21

    const/4 v12, 0x1

    aput v23, v6, v12

    const/16 v18, 0x0

    aput v23, v6, v18

    const/4 v12, 0x2

    goto :goto_c

    :goto_b
    sget-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    aput v4, v6, v22

    aput v4, v6, v21

    aput v4, v6, v12

    aput v4, v6, v18

    mul-float v23, v23, v4

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    mul-float v23, v23, v12

    aput v23, v6, v20

    const/4 v12, 0x4

    aput v23, v6, v12

    const/4 v12, 0x3

    aput v23, v6, v12

    const/4 v12, 0x2

    aput v23, v6, v12

    :goto_c
    sget-object v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpPath:Landroid/graphics/Path;

    sget-object v12, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpRadii:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v13, v12, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    if-eqz v5, :cond_15

    goto :goto_e

    :cond_15
    :goto_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_16
    :goto_e
    sget-object v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_17
    :goto_f
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_10
    return-void
.end method

.method private drawTimestampLabel(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressedDelayed:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    :goto_0
    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v4, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    int-to-float v2, v2

    goto :goto_0

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_3
    const/4 v5, -0x1

    if-ltz v3, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    if-nez v2, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    :cond_5
    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v2, v2

    sget v6, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    const/4 v9, 0x0

    invoke-static {v6, v9, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v2, v6

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v6, v6

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    int-to-float v8, v8

    sget v10, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sub-float/2addr v8, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v11, v11

    mul-float v11, v11, v7

    sub-float/2addr v10, v11

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v8, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    add-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    int-to-float v10, v10

    sget v11, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    sub-float/2addr v10, v11

    add-float/2addr v8, v10

    sub-float v10, v2, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastWidth:F

    const/4 v13, 0x0

    cmpl-float v14, v12, v9

    if-lez v14, :cond_7

    sub-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v14, 0x3c23d70a    # 0.01f

    cmpl-float v12, v12, v14

    if-lez v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v14, v12, v13

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    float-to-int v15, v10

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v14

    aput-object v14, v12, v13

    :cond_6
    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v14, v12, v4

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    float-to-int v15, v10

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v14

    aput-object v14, v12, v4

    :cond_7
    iput v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastWidth:F

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    if-eq v3, v12, :cond_f

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v14, v12, v13

    aput-object v14, v12, v4

    iget-boolean v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz v12, :cond_8

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_8
    const/4 v12, 0x0

    if-ltz v3, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    if-nez v14, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v12, v10, v13

    goto :goto_5

    :cond_9
    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    float-to-int v10, v10

    invoke-direct {v0, v14, v10}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v10

    aput-object v10, v12, v13

    goto :goto_5

    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v12, v10, v13

    :goto_5
    iput v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    if-ne v3, v5, :cond_b

    goto :goto_6

    :cond_b
    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    if-ne v10, v5, :cond_c

    goto :goto_7

    :cond_c
    if-ge v3, v10, :cond_d

    :goto_6
    iput v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    goto :goto_8

    :cond_d
    if-le v3, v10, :cond_e

    :goto_7
    iput v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    :cond_e
    :goto_8
    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    iput v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestamp:I

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    :cond_f
    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    const-wide/16 v14, 0x11

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-wide v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestampUpdate:J

    sub-long v16, v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v3, 0x8

    if-le v12, v3, :cond_10

    const/high16 v3, 0x43200000    # 160.0f

    goto :goto_9

    :cond_10
    const/high16 v3, 0x435c0000    # 220.0f

    :goto_9
    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    long-to-float v9, v9

    div-float/2addr v9, v3

    add-float/2addr v12, v9

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestampUpdate:J

    :cond_11
    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestampUpdate:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    long-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    div-float/2addr v9, v10

    add-float/2addr v3, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastTimestampsAppearingUpdate:J

    :cond_12
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeT:F

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->height:I

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lineHeight:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v10, v7

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v3, v11

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v10, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    sub-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    mul-float v6, v6, v8

    add-float/2addr v2, v6

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v4

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    if-eqz v2, :cond_13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    neg-int v3, v3

    mul-int v10, v10, v3

    int-to-float v3, v10

    mul-float v3, v3, v9

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v10, v5, v10

    mul-float v10, v10, v6

    sub-float v11, v5, v9

    mul-float v10, v10, v11

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v13

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    if-eqz v2, :cond_15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampChangeDirection:I

    mul-int v4, v4, v8

    int-to-float v4, v4

    sub-float v8, v5, v9

    mul-float v4, v4, v8

    add-float/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v13

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float/2addr v5, v3

    mul-float v5, v5, v6

    mul-float v5, v5, v9

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v2, v2, v13

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    :goto_c
    return-void
.end method

.method private synthetic lambda$onTouch$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressedDelayed:Z

    return-void
.end method

.method private static synthetic lambda$updateTimestamps$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 15

    move-object v0, p0

    move/from16 v6, p2

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    if-nez p1, :cond_1

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/high16 v5, 0x43c80000    # 400.0f

    if-lt v1, v4, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-static {v3, v7, v1, v4, v6}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v13, Landroid/text/StaticLayout;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v1, v13

    move-object v2, v3

    move v3, v5

    move-object v5, v7

    move/from16 v6, p2

    move-object v7, v8

    move v8, v14

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v13
.end method

.method private setPaintColor(IF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearTimestamps()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastCaption:Ljava/lang/CharSequence;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastVideoDuration:J

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v3, v3

    sget v4, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->height:I

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lineHeight:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineHeight:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v4, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->height:I

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lineHeight:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ba3d70a    # 0.005f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v4

    if-eqz v6, :cond_2

    const v6, 0x3d94f209

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iput v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->fromThumbX:I

    int-to-float v6, v6

    sub-float v8, v4, v3

    mul-float v6, v6, v8

    mul-float v2, v2, v3

    add-float/2addr v2, v6

    :cond_2
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbLoopBackProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    int-to-float v9, v9

    sget v10, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v11, v11

    mul-float v11, v11, v5

    sub-float/2addr v10, v11

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v6, Landroid/graphics/RectF;->right:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->selected:Z

    if-eqz v6, :cond_4

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundSelectedColor:I

    goto :goto_1

    :cond_4
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundColor:I

    :goto_1
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v8, v4, v8

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v8, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    cmpl-float v8, v6, v4

    if-eqz v8, :cond_6

    const v8, 0x3e23d70a    # 0.16f

    add-float/2addr v6, v8

    iput v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_5

    iput v4, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    goto :goto_2

    :cond_5
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateResetBuffering:Z

    if-eqz v6, :cond_9

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateFromBufferedProgress:F

    cmpl-float v8, v6, v7

    if-lez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v9, v9

    sget v10, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v11, v10

    div-float/2addr v11, v5

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    sub-float/2addr v6, v10

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v11, v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v9, v6

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->selected:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundSelectedColor:I

    goto :goto_3

    :cond_7
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->cacheColor:I

    :goto_3
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v8, v4, v8

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    sub-float v9, v4, v9

    mul-float v8, v8, v9

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v8, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedProgress:F

    cmpl-float v8, v6, v7

    if-lez v8, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v9, v9

    sget v10, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v11, v10

    div-float/2addr v11, v5

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    sub-float/2addr v6, v10

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v11, v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v9, v6

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->selected:Z

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_9
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateFromBufferedProgress:F

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    sub-float v9, v4, v8

    mul-float v6, v6, v9

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedProgress:F

    mul-float v9, v9, v8

    add-float/2addr v6, v9

    cmpl-float v8, v6, v7

    if-lez v8, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v9, v9

    sget v10, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v11, v10

    div-float/2addr v11, v5

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    sub-float/2addr v6, v10

    iget v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v11, v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v9, v6

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->selected:Z

    if-eqz v6, :cond_a

    :goto_4
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundSelectedColor:I

    goto :goto_5

    :cond_a
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->cacheColor:I

    :goto_5
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v8, v4, v8

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v8, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v6, v8}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_b
    iget-boolean v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz v6, :cond_c

    const/high16 v6, 0x41000000    # 8.0f

    goto :goto_6

    :cond_c
    const/high16 v6, 0x40c00000    # 6.0f

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    int-to-float v6, v6

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastUpdateTime:J

    sub-long v10, v8, v10

    iput-wide v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastUpdateTime:J

    const-wide/16 v8, 0x12

    cmp-long v12, v10, v8

    if-lez v12, :cond_d

    const-wide/16 v10, 0x10

    :cond_d
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v12, v8, v6

    if-gez v12, :cond_e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    long-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v12, v12, v10

    add-float/2addr v8, v12

    iput v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_f

    goto :goto_7

    :cond_e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    long-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v12, v12, v10

    sub-float/2addr v8, v12

    iput v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_f

    :goto_7
    iput v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_10
    iget v6, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentRadius:F

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v10, 0x437f0000    # 255.0f

    cmpl-float v11, v3, v7

    if-lez v11, :cond_13

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v13, v13

    sget v14, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v15, v14

    div-float/2addr v15, v5

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sub-int/2addr v8, v14

    int-to-float v8, v8

    add-float/2addr v15, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v14, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v14, v14

    mul-float v14, v14, v5

    sub-float/2addr v8, v14

    iget v14, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v15, v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    add-float/2addr v13, v8

    iput v13, v11, Landroid/graphics/RectF;->right:F

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->right:F

    sub-float v13, v4, v3

    invoke-static {v12, v11, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    iput v11, v8, Landroid/graphics/RectF;->left:F

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_11

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_11

    sget-object v8, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    mul-float v11, v11, v10

    mul-float v11, v11, v9

    float-to-int v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v11, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v8, v11}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_11
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->progressColor:I

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineColor:I

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v8, v11, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    invoke-direct {v0, v8, v4}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v11, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v8, v11}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iput v12, v8, Landroid/graphics/RectF;->left:F

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->circleColor:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getProgress()F

    move-result v11

    cmpl-float v11, v11, v7

    if-nez v11, :cond_12

    const/4 v11, 0x0

    goto :goto_8

    :cond_12
    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineColor:I

    :goto_8
    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v8, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v11, v4, v11

    invoke-direct {v0, v8, v11}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v8, v8

    sget v11, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v5

    iget v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->loopBackWasThumbX:F

    add-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v13, v13

    mul-float v13, v13, v5

    sub-float/2addr v12, v13

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->loopBackWasThumbX:F

    iget v14, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v15, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    div-float/2addr v13, v14

    mul-float v12, v12, v13

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    add-float/2addr v8, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    mul-float v12, v6, v3

    sget-object v13, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_13
    iget-object v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    iget-boolean v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz v13, :cond_14

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    int-to-float v2, v2

    :cond_14
    add-float/2addr v12, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v13, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    int-to-float v13, v13

    mul-float v13, v13, v5

    sub-float/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getProgress()F

    move-result v5

    mul-float v2, v2, v5

    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v12, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    add-float/2addr v11, v2

    iput v11, v8, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_15

    sget-object v2, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    mul-float v5, v5, v10

    mul-float v5, v5, v9

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v5, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_15
    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->progressColor:I

    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineColor:I

    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v2, v5, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    sget-object v5, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->circleColor:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getProgress()F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_16

    const/4 v8, 0x0

    goto :goto_9

    :cond_16
    iget v8, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineColor:I

    :goto_9
    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    invoke-static {v2, v8, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    sub-float v5, v4, v5

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setPaintColor(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->rect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v4, v3

    mul-float v6, v6, v4

    sget-object v3, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->drawTimestampLabel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getProgress()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v2, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getThumbX()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    :goto_0
    sget v1, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v1, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    return v1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->height:I

    sget v4, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int v5, p1, v4

    div-int/2addr v5, v0

    neg-int v0, v5

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    add-int v6, v0, v5

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_c

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_c

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_c

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    sub-int p3, p1, v5

    int-to-float p3, p3

    cmpg-float p3, p3, p2

    if-gtz p3, :cond_1

    add-int/2addr p1, v4

    add-int/2addr p1, v5

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_4

    :cond_1
    float-to-int p1, p2

    div-int/lit8 p3, v4, 0x2

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    if-gez p1, :cond_2

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    goto :goto_0

    :cond_2
    sub-int p3, v0, v4

    if-le p1, p3, :cond_3

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressedDelayed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbDX:I

    return v2

    :cond_5
    if-eq p1, v2, :cond_a

    const/4 p3, 0x3

    if-ne p1, p3, :cond_6

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbDX:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    if-gez p1, :cond_7

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    goto :goto_1

    :cond_7
    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget p3, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_8

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->delegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

    if-eqz p1, :cond_9

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;->onSeekBarContinuousDrag(F)V

    :cond_9
    return v2

    :cond_a
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    if-eqz p2, :cond_c

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->draggingThumbX:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    if-ne p1, v2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->delegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

    if-eqz p1, :cond_b

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->pressed:Z

    new-instance p1, Lorg/telegram/ui/Components/VideoPlayerSeekBar$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/VideoPlayerSeekBar;)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v2

    :cond_c
    return v1
.end method

.method public setBufferedProgress(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedProgress:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateFromBufferedProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateResetBuffering:Z

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedProgress:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->bufferedAnimationValue:F

    :cond_1
    return-void
.end method

.method public setColors(IIIIII)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundColor:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->cacheColor:I

    iput p4, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->circleColor:I

    iput p3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->progressColor:I

    iput p5, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->backgroundSelectedColor:I

    iput p6, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->smallLineColor:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->delegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->horizontalPadding:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3d23d70a    # 0.04f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbLoopBackProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->loopBackWasThumbX:F

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->progress:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v2, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    if-le p2, v0, :cond_1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    iget v3, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->fromThumbX:I

    int-to-float v3, v3

    sub-float/2addr v1, p2

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    float-to-int p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->fromThumbX:I

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    cmpl-float p2, p2, v1

    if-nez p2, :cond_2

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animateThumbProgress:F

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->fromThumbX:I

    :cond_2
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    goto :goto_1

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    sget v0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbWidth:I

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_4

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    :cond_4
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->thumbX:I

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->animatedThumbX:F

    :cond_5
    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->transitionProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateTimestamps(Lorg/telegram/messenger/MessageObject;J)V
    .locals 7

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isYouTubeVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    long-to-int v5, p2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MessageObject;->addUrlsByPattern(ZLjava/lang/CharSequence;ZIIZ)V

    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastCaption:Ljava/lang/CharSequence;

    if-ne v0, p1, :cond_3

    iget-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastVideoDuration:J

    cmp-long p1, v1, p2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastCaption:Ljava/lang/CharSequence;

    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->lastVideoDuration:J

    instance-of p1, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_5

    iput-object v5, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_4

    aput-object v5, p1, v3

    aput-object v5, p1, v4

    :cond_4
    return-void

    :cond_5
    check-cast v0, Landroid/text/Spanned;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v6, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v0, v4, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_6

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    aget-object v1, p1, v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v5, 0x3e8

    mul-long v2, v2, v5

    long-to-float v2, v2

    long-to-float v3, p2

    div-float/2addr v2, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Components/VideoPlayerSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestamps:Ljava/util/ArrayList;

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->currentTimestamp:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampsAppearing:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_9

    aput-object v5, p1, v3

    aput-object v5, p1, v4

    :cond_9
    return-void

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->clearTimestamps()V

    return-void
.end method
