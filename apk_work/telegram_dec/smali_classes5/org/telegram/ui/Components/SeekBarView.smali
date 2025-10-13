.class public Lorg/telegram/ui/Components/SeekBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;
    }
.end annotation


# static fields
.field private static tmpPath:Landroid/graphics/Path;

.field private static tmpRadii:[F


# instance fields
.field private final TIMESTAMP_GAP:F

.field private animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

.field private bufferedProgress:F

.field captured:Z

.field private currentRadius:F

.field private currentTimestamp:I

.field public delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

.field private hoverDrawable:Landroid/graphics/drawable/Drawable;

.field private innerPaint1:Landroid/graphics/Paint;

.field private lastCaption:Ljava/lang/CharSequence;

.field private lastDuration:J

.field private lastTimestamp:I

.field private lastTimestampLabelWidth:I

.field private lastTimestampUpdate:J

.field private lastTimestampsAppearingUpdate:J

.field private lastUpdateTime:J

.field lastValue:I

.field private lastWidth:F

.field private lineWidthDp:I

.field private minProgress:F

.field private outerPaint1:Landroid/graphics/Paint;

.field private pressed:Z

.field private pressedDelayed:Z

.field private pressedState:[I

.field private progressToSet:F

.field private rect:Landroid/graphics/RectF;

.field private reportChanges:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field private selectorWidth:I

.field private separatorsCount:I

.field sx:F

.field sy:F

.field private final textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private thumbDX:I

.field private thumbSize:I

.field private thumbX:I

.field private timestampChangeDirection:I

.field private timestampChangeT:F

.field private timestampIndex:I

.field private timestampLabel:[Landroid/text/StaticLayout;

.field private timestampLabelPaint:Landroid/text/TextPaint;

.field private timestamps:Ljava/util/ArrayList;

.field private timestampsAppearing:F

.field private transitionProgress:F

.field private transitionThumbX:I

.field private twoSided:Z


# direct methods
.method public static synthetic $r8$lambda$DKaoQUBqneV1c7vIlMZENnVP2eg(Lorg/telegram/ui/Components/SeekBarView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->lambda$onTouch$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$krRqn86cNzSUGZ63XNeyzAeauiE(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->lambda$updateTimestamps$1(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3c

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/SeekBarView;->animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    const v1, 0x101009e

    const v2, 0x10100a7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedState:[I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    const/4 v2, 0x3

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->TIMESTAMP_GAP:F

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestamp:I

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampIndex:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v0

    const/16 v3, 0x28

    invoke-static {v0, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    new-instance p3, Lorg/telegram/ui/Components/SeekBarView$1;

    invoke-direct {p3, p0, p1, p1}, Lorg/telegram/ui/Components/SeekBarView$1;-><init>(Lorg/telegram/ui/Components/SeekBarView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setIsCenter()V

    const/high16 p1, -0x40000000    # -2.0f

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Lorg/telegram/ui/Components/SeekBarView$2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/SeekBarView$2;-><init>(Lorg/telegram/ui/Components/SeekBarView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SeekBarView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/SeekBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SeekBarView;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_e

    :cond_0
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    sub-float/2addr v7, v8

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v8, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    sget-object v4, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    sput-object v4, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    :cond_1
    sget-object v4, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v10, v7, v6

    div-float/2addr v4, v10

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, -0x1

    if-ge v11, v12, :cond_3

    iget-object v12, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v4

    if-ltz v12, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, -0x1

    :goto_1
    if-gez v11, :cond_4

    const/4 v11, 0x0

    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    :goto_2
    if-ltz v12, :cond_6

    iget-object v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float v15, v9, v15

    cmpl-float v15, v15, v4

    if-ltz v15, :cond_5

    add-int/lit8 v13, v12, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-gez v13, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    :cond_7
    move v12, v11

    :goto_4
    if-gt v12, v13, :cond_16

    if-ne v12, v11, :cond_8

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    iget-object v9, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_5
    if-ne v12, v13, :cond_9

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    iget-object v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    :goto_6
    if-eq v12, v13, :cond_a

    if-eqz v12, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v14

    if-ge v12, v10, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v10, v9

    cmpg-float v10, v10, v4

    if-gtz v10, :cond_a

    add-int/lit8 v12, v12, 0x1

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    goto :goto_6

    :cond_a
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v6, v7, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    if-lez v12, :cond_b

    move/from16 v17, v8

    goto :goto_7

    :cond_b
    const/16 v17, 0x0

    :goto_7
    add-float v9, v9, v17

    iput v9, v10, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v7, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    if-ge v12, v13, :cond_c

    move v15, v8

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    sub-float/2addr v9, v15

    iput v9, v10, Landroid/graphics/RectF;->right:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v15

    if-lez v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_e

    iput v15, v10, Landroid/graphics/RectF;->right:F

    :cond_e
    iget v15, v10, Landroid/graphics/RectF;->right:F

    iget v14, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v15, v15, v14

    if-gez v15, :cond_f

    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_f
    iget v15, v10, Landroid/graphics/RectF;->left:F

    cmpg-float v15, v15, v14

    if-gez v15, :cond_10

    iput v14, v10, Landroid/graphics/RectF;->left:F

    :cond_10
    sget-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    if-nez v14, :cond_11

    const/16 v14, 0x8

    new-array v14, v14, [F

    sput-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    :cond_11
    const/16 v17, 0x4

    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v20, 0x7

    const v21, 0x3f333333    # 0.7f

    if-eq v12, v11, :cond_12

    if-eqz v9, :cond_13

    iget v14, v10, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_13

    :cond_12
    const/4 v15, 0x1

    const/16 v16, 0x0

    goto :goto_a

    :cond_13
    if-lt v12, v13, :cond_14

    sget-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    mul-float v21, v21, v5

    iget v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v21, v21, v15

    aput v21, v14, v20

    aput v21, v14, v19

    const/4 v15, 0x1

    aput v21, v14, v15

    const/4 v15, 0x0

    aput v21, v14, v15

    aput v5, v14, v18

    aput v5, v14, v17

    const/4 v15, 0x3

    aput v5, v14, v15

    const/16 v22, 0x2

    aput v5, v14, v22

    const/16 v16, 0x0

    goto :goto_b

    :cond_14
    const/4 v15, 0x3

    const/16 v22, 0x2

    sget-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    mul-float v21, v21, v5

    iget v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v21, v21, v15

    aput v21, v14, v18

    aput v21, v14, v17

    const/4 v15, 0x3

    aput v21, v14, v15

    aput v21, v14, v22

    aput v21, v14, v20

    aput v21, v14, v19

    const/4 v15, 0x1

    aput v21, v14, v15

    const/16 v16, 0x0

    aput v21, v14, v16

    goto :goto_b

    :goto_a
    sget-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    aput v5, v14, v20

    aput v5, v14, v19

    aput v5, v14, v15

    aput v5, v14, v16

    mul-float v21, v21, v5

    iget v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v21, v21, v15

    aput v21, v14, v18

    aput v21, v14, v17

    const/4 v15, 0x3

    aput v21, v14, v15

    const/4 v15, 0x2

    aput v21, v14, v15

    :goto_b
    sget-object v14, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    sget-object v15, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v14, v10, v15, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    :goto_c
    add-int/lit8 v12, v12, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_16
    :goto_d
    sget-object v0, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_17
    :goto_e
    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_f
    return-void
.end method

.method private drawTimestampLabel(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-ltz v1, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTimestampIndex(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-nez v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/StaticLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget-wide v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    const/high16 v7, 0x42280000    # 42.0f

    const-wide/32 v8, 0x927c0

    const/4 v10, 0x0

    cmp-long v11, v5, v8

    if-lez v11, :cond_4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget-wide v11, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    cmp-long v6, v11, v8

    if-lez v6, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_7

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v8, v6, v10

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    float-to-int v9, v5

    invoke-direct {p0, v8, v9}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v8

    aput-object v8, v6, v10

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v8, v6, v2

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    float-to-int v9, v5

    invoke-direct {p0, v8, v9}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v8

    aput-object v8, v6, v2

    :cond_7
    iput v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    if-eq v1, v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v8, v6, v10

    aput-object v8, v6, v2

    iget-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v6, :cond_8

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_8
    const/4 v6, 0x0

    if-ltz v1, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    if-nez v8, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v6, v5, v10

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    float-to-int v5, v5

    invoke-direct {p0, v8, v5}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v5

    aput-object v5, v6, v10

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v6, v5, v10

    :goto_4
    iput v7, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    if-ne v1, v3, :cond_b

    goto :goto_5

    :cond_b
    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    if-ne v5, v3, :cond_c

    goto :goto_6

    :cond_c
    if-ge v1, v5, :cond_d

    :goto_5
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    goto :goto_7

    :cond_d
    if-le v1, v5, :cond_e

    :goto_6
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    :cond_e
    :goto_7
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestamp:I

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    :cond_f
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    const-wide/16 v5, 0x11

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v11, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    sub-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v11, 0x8

    if-le v1, v11, :cond_10

    const/high16 v1, 0x43200000    # 160.0f

    goto :goto_8

    :cond_10
    const/high16 v1, 0x435c0000    # 220.0f

    :goto_8
    iget v11, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    long-to-float v8, v8

    div-float/2addr v8, v1

    add-float/2addr v11, v8

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    :cond_11
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v11, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    sub-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    long-to-float v5, v5

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampsAppearingUpdate:J

    :cond_12
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v2

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    if-eqz v0, :cond_13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v11, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    neg-int v11, v11

    mul-int v9, v9, v11

    int-to-float v9, v9

    mul-float v9, v9, v1

    add-float/2addr v0, v9

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sub-float v2, v3, v1

    mul-float v2, v2, v5

    iget v9, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v10

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    if-eqz v0, :cond_15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    mul-int v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v3, v1

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    mul-float v1, v1, v5

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    :goto_9
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getTimestampLabelWidth()I
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    const/4 v4, 0x0

    const/high16 v5, 0x42280000    # 42.0f

    const-wide/32 v6, 0x927c0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-wide v8, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :cond_1
    int-to-float v1, v4

    sub-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private synthetic lambda$onTouch$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedDelayed:Z

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

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

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

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

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

    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

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

.method private minThumbX()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private setSeekBarDrag(ZF)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarDrag(ZF)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastValue:I

    if-eq p2, p1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastValue:I

    :cond_2
    return-void
.end method

.method private setTimestampIndex(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampIndex:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampIndex:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearTimestamps()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    return-void
.end method

.method public getProgress()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    return v0
.end method

.method public isTwoSided()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    if-le v2, v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    int-to-float v3, v3

    sub-float/2addr v3, v9

    div-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarView;->animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    :cond_0
    move v10, v1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->needVisuallyDivideSteps()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->getStepsCount()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v9

    div-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v11, v1, 0x2

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float v5, v1, v5

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v7, v6, v12}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressCachedBackground:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget v13, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v13, v13

    div-float/2addr v13, v2

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v2, v2, v14

    add-float/2addr v13, v2

    invoke-virtual {v6, v3, v5, v13, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v7, v2, v6}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/high16 v13, 0x40c00000    # 6.0f

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v10, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    :goto_2
    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    cmpl-float v6, v2, v12

    if-ltz v6, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    int-to-float v14, v10

    add-float/2addr v14, v3

    invoke-virtual {v6, v2, v5, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v7, v2, v6}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget v14, v0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    mul-float v14, v14, v4

    add-float/2addr v14, v3

    invoke-virtual {v6, v3, v5, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v7, v1, v3}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v10

    add-float/2addr v4, v3

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v7, v1, v2}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v1, :cond_7

    const/high16 v13, 0x41000000    # 8.0f

    :cond_7
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/Components/SeekBarView;->lastUpdateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    const-wide/16 v2, 0x10

    :cond_8
    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    int-to-float v1, v1

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_b

    const/high16 v5, 0x42700000    # 60.0f

    cmpg-float v6, v4, v1

    if-gez v6, :cond_9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    long-to-float v13, v2

    div-float/2addr v13, v5

    mul-float v6, v6, v13

    add-float/2addr v4, v6

    iput v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_a

    goto :goto_4

    :cond_9
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    long-to-float v13, v2

    div-float/2addr v13, v5

    mul-float v6, v6, v13

    sub-float/2addr v4, v6

    iput v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a

    :goto_4
    iput v1, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    :cond_a
    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v5, v4, v9

    if-gez v5, :cond_d

    long-to-float v2, v2

    const/high16 v3, 0x43610000    # 225.0f

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v2, v4, v9

    if-gez v2, :cond_c

    goto :goto_6

    :cond_c
    iput v9, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    :cond_d
    move v8, v1

    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v2, v1, v9

    if-gez v2, :cond_f

    sget-object v2, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v9, v1

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    cmpl-float v2, v9, v12

    if-lez v2, :cond_e

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionThumbX:I

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    mul-float v4, v4, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v10, v2

    int-to-float v2, v10

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    int-to-float v3, v11

    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    mul-float v4, v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v10, v1

    int-to-float v1, v10

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v11, v2

    int-to-float v2, v11

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_7
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SeekBarView;->drawTimestampLabel(Landroid/graphics/Canvas;)V

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 p2, p2, 0x2

    iget-wide p3, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    const-wide/32 v0, 0x927c0

    cmp-long p5, p3, v0

    if-lez p5, :cond_0

    const/high16 p3, 0x42280000    # 42.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p2, p3

    const/high16 p3, 0x41c80000    # 25.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p1, p4

    iget-object p5, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p2, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->getTimestampLabelWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampLabelWidth:I

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarView;->textViewSwitcher:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    const/high16 p2, -0x3d380000    # -100.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    :cond_0
    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->sx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_17

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->sx:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_17

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_17

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    int-to-float v0, v3

    cmpg-float v0, v2, v0

    if-lez v0, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/2addr v2, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedDelayed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarPressed(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedState:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v2, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v7

    if-ge v0, v7, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v0

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v7, v8

    if-le v0, v7, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    goto :goto_2

    :cond_9
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->reportChanges:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v5, v5

    cmpl-float v7, v5, v0

    if-ltz v7, :cond_a

    sub-float/2addr v5, v0

    div-float/2addr v5, v0

    invoke-direct {p0, v6, v5}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_5

    :cond_a
    sub-float v5, v0, v5

    div-float/2addr v5, v0

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    :goto_4
    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_5

    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_4

    :cond_c
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v2, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_e
    :goto_6
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v5

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    sub-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v9, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    int-to-float v0, v8

    cmpg-float v0, v7, v0

    if-lez v0, :cond_11

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/2addr v7, v5

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v7

    if-ge v0, v7, :cond_10

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result v0

    :goto_7
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_8

    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v7, v8

    if-le v0, v7, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    goto :goto_7

    :cond_11
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedDelayed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v5

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v0, v0

    cmpl-float v5, v0, p1

    if-ltz v5, :cond_13

    sub-float/2addr v0, p1

    div-float/2addr v0, p1

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_9

    :cond_13
    sub-float v0, p1, v0

    div-float/2addr v0, p1

    sub-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, v6, p1}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_9

    :cond_14
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    :cond_15
    :goto_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-interface {p1, v6}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarPressed(Z)V

    iput-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    new-instance p1, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SeekBarView;)V

    const-wide/16 v2, 0x32

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_17
    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBufferedProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    return-void
.end method

.method public setInnerColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->minProgress:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOuterColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/16 v1, 0x28

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    return-void

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    neg-float p1, p1

    :cond_1
    mul-float p1, p1, v0

    add-float/2addr v0, p1

    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p1

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-eq v0, p1, :cond_6

    if-eqz p2, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionThumbX:I

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->minThumbX()I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public setReportChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->reportChanges:Z

    return-void
.end method

.method public setSeparatorsCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    return-void
.end method

.method public setTwoSided(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    return-void
.end method

.method public updateTimestamps(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V
    .locals 10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->clearTimestamps()V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    double-to-long v2, v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->clearTimestamps()V

    return-void

    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isYouTubeVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    iput-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int v7, v5

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addUrlsByPattern(ZLjava/lang/CharSequence;ZIIZ)V

    :cond_3
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    iget-wide v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    return-void

    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long v5, v5, v7

    iput-wide v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->getTimestampLabelWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampLabelWidth:I

    if-eq v5, v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    instance-of v5, v2, Landroid/text/Spanned;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-nez v5, :cond_9

    iput-object v8, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    iput v7, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_8

    aput-object v8, p1, v3

    aput-object v8, p1, v4

    :cond_8
    return-void

    :cond_9
    check-cast v2, Landroid/text/Spanned;

    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v9, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v2, v4, v5, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_b

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_b
    const/4 p1, 0x0

    :goto_1
    array-length v3, v2

    if-ge p1, v3, :cond_d

    aget-object v3, v2, p1

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v0

    long-to-float v5, v5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v3, v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    iput v7, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_e

    aput-object v8, p1, v3

    aput-object v8, p1, v4

    :cond_e
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
