.class public abstract Lorg/telegram/ui/Components/CacheChart;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CacheChart$Sector;,
        Lorg/telegram/ui/Components/CacheChart$SegmentSize;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLORS:[I

.field private static final DEFAULT_PARTICLES:[I

.field private static loadedStart:Ljava/lang/Long;

.field private static particlesStart:J

.field private static start:Ljava/lang/Long;


# instance fields
.field private bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private chartBounds:Landroid/graphics/RectF;

.field private chartInnerBounds:Landroid/graphics/RectF;

.field private chartMeasureBounds:Landroid/graphics/RectF;

.field private final colorKeys:[I

.field private complete:Z

.field private completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private completeGradient:Landroid/graphics/LinearGradient;

.field private completeGradientMatrix:Landroid/graphics/Matrix;

.field private completePaint:Landroid/graphics/Paint;

.field private completePaintStroke:Landroid/graphics/Paint;

.field private completePath:Landroid/graphics/Path;

.field private completePathBounds:Landroid/graphics/RectF;

.field private completeTextGradient:Landroid/graphics/LinearGradient;

.field private completeTextGradientMatrix:Landroid/graphics/Matrix;

.field private interceptTouch:Z

.field private isAttached:Z

.field private loading:Z

.field private loadingBackgroundPaint:Landroid/graphics/Paint;

.field public loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final particles:[I

.field private roundingRect:Landroid/graphics/RectF;

.field private final sectionsCount:I

.field private sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

.field private segmentsTmp:[F

.field private selectedIndex:I

.field private final svgParticles:Z

.field private tempFloat:[F

.field private tempPercents:[I

.field private topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$F1itvNXkHMowpMO6Vdwm17HfEig(Lorg/telegram/ui/Components/CacheChart$SegmentSize;Lorg/telegram/ui/Components/CacheChart$SegmentSize;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/CacheChart;->lambda$setSegments$0(Lorg/telegram/ui/Components/CacheChart$SegmentSize;Lorg/telegram/ui/Components/CacheChart$SegmentSize;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 12

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    move v3, v8

    move v9, v10

    filled-new-array/range {v0 .. v10}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/CacheChart;->DEFAULT_COLORS:[I

    sget v1, Lorg/telegram/messenger/R$raw;->cache_photos:I

    sget v5, Lorg/telegram/messenger/R$raw;->cache_videos:I

    sget v11, Lorg/telegram/messenger/R$raw;->cache_documents:I

    sget v6, Lorg/telegram/messenger/R$raw;->cache_music:I

    sget v7, Lorg/telegram/messenger/R$raw;->cache_stickers:I

    sget v8, Lorg/telegram/messenger/R$raw;->cache_profile_photos:I

    sget v10, Lorg/telegram/messenger/R$raw;->cache_other:I

    move v2, v5

    move v3, v11

    move v4, v6

    move v9, v10

    filled-new-array/range {v1 .. v11}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/CacheChart;->DEFAULT_PARTICLES:[I

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/ui/Components/CacheChart;->particlesStart:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 0
    sget-object v3, Lorg/telegram/ui/Components/CacheChart;->DEFAULT_COLORS:[I

    sget-object v5, Lorg/telegram/ui/Components/CacheChart;->DEFAULT_PARTICLES:[I

    const/16 v2, 0xb

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/CacheChart;-><init>(Landroid/content/Context;I[II[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[II[I)V
    .locals 30

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x4

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/CacheChart;->chartInnerBounds:Landroid/graphics/RectF;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v7, 0x2ee

    invoke-direct {v6, v0, v7, v8, v14}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v8, 0x28a

    invoke-direct {v7, v0, v8, v9, v14}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v15, 0x2

    new-array v7, v15, [F

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->roundingRect:Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->completePaint:Landroid/graphics/Paint;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v7, v6, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v7, v6, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v7, v6, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v7, v6, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/CacheChart;->interceptTouch:Z

    const/4 v7, -0x1

    iput v7, v0, Lorg/telegram/ui/Components/CacheChart;->selectedIndex:I

    const/4 v7, 0x0

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput v1, v0, Lorg/telegram/ui/Components/CacheChart;->sectionsCount:I

    iput-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->colorKeys:[I

    move-object/from16 v7, p5

    iput-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->particles:[I

    iput v3, v0, Lorg/telegram/ui/Components/CacheChart;->type:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/CacheChart;->svgParticles:Z

    new-array v1, v1, [Lorg/telegram/ui/Components/CacheChart$Sector;

    iput-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x6ed556

    const v10, -0x912aaa

    const v11, -0xbe458f

    const v12, 0x41ba71

    filled-new-array {v9, v10, v11, v12}, [I

    move-result-object v21

    new-array v13, v4, [F

    fill-array-data v13, :array_0

    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v8

    move-object/from16 v22, v13

    move-object/from16 v23, v29

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completeGradient:Landroid/graphics/LinearGradient;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    filled-new-array {v9, v10, v11, v12}, [I

    move-result-object v27

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v1

    move/from16 v26, v7

    move-object/from16 v28, v4

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradient:Landroid/graphics/LinearGradient;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completeGradientMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradientMatrix:Landroid/graphics/Matrix;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->completeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->completeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1c2

    const v8, 0x3e4ccccd    # 0.2f

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v3, v1

    if-ge v6, v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Components/CacheChart$Sector;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/CacheChart$Sector;-><init>(Lorg/telegram/ui/Components/CacheChart;)V

    aput-object v3, v1, v6

    aget v1, v2, v6

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v4, 0x3000000

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    aget v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const v7, 0x30ffffff

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->gradientWidth:I

    new-instance v7, Landroid/graphics/RadialGradient;

    const/high16 v8, 0x42ac0000    # 86.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v11, v8

    filled-new-array {v4, v1}, [I

    move-result-object v12

    new-array v13, v15, [F

    fill-array-data v13, :array_2

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->gradient:Landroid/graphics/RadialGradient;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->paint:Landroid/graphics/Paint;

    iget-object v3, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3d8f5c29    # 0.07f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3d8f5c29    # 0.07f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CacheChart;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CacheChart;->roundingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(F)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/CacheChart;->toRad(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/graphics/RectF;DDF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/CacheChart;->setCircleBounds(Landroid/graphics/RectF;DDF)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lorg/telegram/ui/Components/CacheChart;->particlesStart:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    sput-wide p0, Lorg/telegram/ui/Components/CacheChart;->particlesStart:J

    return-wide p0
.end method

.method static synthetic access$400(Landroid/graphics/RectF;FFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/CacheChart;->setCircleBounds(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method private drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p6, p6, v0

    float-to-int p6, p6

    invoke-virtual {p2, p6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    invoke-virtual {p2, v1, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isAnimating()Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$setSegments$0(Lorg/telegram/ui/Components/CacheChart$SegmentSize;Lorg/telegram/ui/Components/CacheChart$SegmentSize;)I
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    iget-wide p0, p1, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static setCircleBounds(Landroid/graphics/RectF;DDF)V
    .locals 0

    .line 0
    double-to-float p1, p1

    double-to-float p2, p3

    invoke-static {p0, p1, p2, p5}, Lorg/telegram/ui/Components/CacheChart;->setCircleBounds(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method private static setCircleBounds(Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 0
    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static toRad(F)F
    .locals 4

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v7, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CacheChart;->padInsideDp()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartInnerBounds:Landroid/graphics/RectF;

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v17, 0x41200000    # 10.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v1, v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v15, 0x0

    invoke-static {v15, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    sget-object v8, Lorg/telegram/ui/Components/CacheChart;->start:Ljava/lang/Long;

    if-nez v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sput-object v8, Lorg/telegram/ui/Components/CacheChart;->start:Ljava/lang/Long;

    :cond_2
    iget-boolean v8, v7, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    if-nez v8, :cond_3

    sget-object v9, Lorg/telegram/ui/Components/CacheChart;->loadedStart:Ljava/lang/Long;

    if-nez v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_2
    sput-object v8, Lorg/telegram/ui/Components/CacheChart;->loadedStart:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    sget-object v8, Lorg/telegram/ui/Components/CacheChart;->loadedStart:Ljava/lang/Long;

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_3
    sget-object v8, Lorg/telegram/ui/Components/CacheChart;->loadedStart:Ljava/lang/Long;

    if-nez v8, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_4
    sget-object v10, Lorg/telegram/ui/Components/CacheChart;->start:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float v18, v8, v9

    const v19, 0x45a8c000    # 5400.0f

    rem-float v8, v18, v19

    iget-object v9, v7, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    iget-object v8, v7, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    aget v14, v8, v15

    const/4 v13, 0x1

    aget v12, v8, v13

    const/high16 v20, 0x40000000    # 2.0f

    cmpl-float v8, v0, v4

    if-lez v8, :cond_6

    iget-object v8, v7, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v7, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v9, v7, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v10, v8

    mul-float v10, v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v11, v2

    div-float v11, v11, v20

    iget-object v5, v7, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9, v10, v11, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, v7, Lorg/telegram/ui/Components/CacheChart;->loadingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    cmpl-float v5, v0, v4

    if-gtz v5, :cond_8

    cmpl-float v5, v3, v4

    if-lez v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v5, 0x1

    :goto_6
    move v8, v5

    const/4 v5, 0x0

    :goto_7
    iget-object v9, v7, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v10, v9

    if-ge v5, v10, :cond_e

    aget-object v9, v9, v5

    mul-int/lit8 v10, v5, 0x50

    int-to-float v10, v10

    add-float v10, v18, v10

    rem-float v10, v10, v19

    iget-object v11, v7, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    iget-object v10, v7, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    aget v10, v10, v15

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v11, v7, Lorg/telegram/ui/Components/CacheChart;->segmentsTmp:[F

    aget v11, v11, v13

    invoke-static {v11, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v22, v0, v16

    if-ltz v22, :cond_9

    cmpl-float v16, v10, v11

    if-ltz v16, :cond_9

    move/from16 v23, v12

    move/from16 v22, v14

    goto/16 :goto_c

    :cond_9
    add-float v16, v10, v11

    div-float v13, v16, v20

    sub-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float v10, v10, v20

    cmpg-float v11, v0, v4

    if-gtz v11, :cond_a

    iget-object v10, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v11, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    iget-object v11, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSizeAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v13, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    move v13, v11

    move/from16 v23, v12

    move v12, v10

    goto :goto_9

    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v16, v0, v11

    if-gez v16, :cond_b

    iget-object v11, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    const/high16 v11, 0x43b40000    # 360.0f

    div-float v15, v12, v11

    move/from16 v23, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float v11, v11, v12

    add-float/2addr v4, v11

    invoke-static {v4, v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v11, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSizeAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v12, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    invoke-static {v11, v10, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    move v12, v4

    :goto_8
    move v13, v10

    goto :goto_9

    :cond_b
    move/from16 v23, v12

    move v12, v13

    goto :goto_8

    :goto_9
    iget-object v4, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v9, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSizeAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v4, 0x1

    :goto_b
    iget-object v10, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    iget-object v11, v7, Lorg/telegram/ui/Components/CacheChart;->chartInnerBounds:Landroid/graphics/RectF;

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v15, v8, v3

    sub-float v24, v8, v0

    move-object v8, v9

    move-object/from16 v9, p1

    move/from16 v22, v14

    move v14, v1

    move/from16 v16, v24

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/ui/Components/CacheChart$Sector;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFF)V

    move v8, v4

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v22

    move/from16 v12, v23

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_e
    iget v1, v7, Lorg/telegram/ui/Components/CacheChart;->type:I

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v4, 0x40a00000    # 5.0f

    if-nez v1, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v0

    sub-float/2addr v5, v3

    mul-float v10, v0, v5

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v4, v0, v1

    iget-object v11, v7, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v2

    move-object v2, v11

    move v11, v3

    move v3, v5

    const/4 v14, 0x0

    move v5, v12

    move-object v12, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CacheChart;->drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z

    move-result v0

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float v4, v0, v1

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v10

    :goto_d
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CacheChart;->drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z

    goto/16 :goto_12

    :cond_f
    move v13, v2

    move v11, v3

    move-object v12, v6

    const/4 v10, 0x1

    const/4 v14, 0x0

    if-ne v1, v10, :cond_14

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v15, v1, v0

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v14, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    sub-float v16, v0, v1

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v1, v14, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    sub-float v18, v0, v1

    const/high16 v0, 0x40100000    # 2.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v19

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v21, v15, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v4, v18

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v5, v19

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CacheChart;->drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v8, :cond_10

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v8, 0x1

    :goto_f
    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sub-float v5, v10, v11

    mul-float v15, v15, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CacheChart;->drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v8, :cond_12

    goto :goto_10

    :cond_12
    const/4 v8, 0x0

    goto :goto_11

    :cond_13
    :goto_10
    const/4 v8, 0x1

    :goto_11
    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v14, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float v16, v0, v1

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float v9, v0, v1

    const v0, 0x3fb33333    # 1.4f

    invoke-static {v10, v0, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move v4, v9

    move v5, v10

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CacheChart;->drawAnimatedText(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;FFFF)Z

    move-result v0

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    move v4, v9

    move v5, v10

    move v6, v15

    goto/16 :goto_d

    :cond_14
    :goto_12
    cmpl-float v0, v11, v14

    if-lez v0, :cond_1d

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-nez v0, :cond_15

    new-instance v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    const/16 v1, 0x12

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->distributionAlgorithm:Z

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRadius:F

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    goto :goto_13

    :cond_15
    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePathBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_16

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v14, v14, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v1, v1, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v2, v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v14, v14, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, v12, v11}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v3, v11, v1

    float-to-int v6, v3

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v7, Lorg/telegram/ui/Components/CacheChart;->completePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v13

    div-float v2, v2, v20

    iget-object v3, v7, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePathBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_18

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_18
    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePathBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_19

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePathBounds:Landroid/graphics/RectF;

    :cond_19
    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePathBounds:Landroid/graphics/RectF;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget v0, v7, Lorg/telegram/ui/Components/CacheChart;->type:I

    if-nez v0, :cond_1a

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3eb22d0e    # 0.348f

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f09ba5e    # 0.538f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3ee4dd2f    # 0.447f

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f22d0e5    # 0.636f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3f2d9168    # 0.678f

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3ecdd2f2    # 0.402f

    :goto_14
    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_15

    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3e95f6fd    # 0.2929f

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3edfb15b    # 0.4369f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3ec3126f    # 0.381f

    mul-float v1, v1, v2

    iget-object v4, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, 0x3eb33333    # 0.35f

    mul-float v4, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v4, 0x3ef02de0    # 0.4691f

    mul-float v1, v1, v4

    iget-object v4, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    iget-object v3, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f27a0f9    # 0.6548f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3f057a78    # 0.5214f

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f150481    # 0.5821f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3f1c0831    # 0.6095f

    mul-float v1, v1, v2

    iget-object v4, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, 0x3f2b4396    # 0.669f

    mul-float v4, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v4, 0x3f3295ea    # 0.6976f

    mul-float v1, v1, v4

    iget-object v4, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    iget-object v3, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3eba8588    # 0.3643f

    goto/16 :goto_14

    :cond_1b
    :goto_15
    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    :cond_1c
    iget v0, v7, Lorg/telegram/ui/Components/CacheChart;->type:I

    if-nez v0, :cond_1d

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/CacheChart;->completePath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Components/CacheChart;->completePaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1d
    iget-boolean v0, v7, Lorg/telegram/ui/Components/CacheChart;->isAttached:Z

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v3

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget v3, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    sub-float v6, v3, v2

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    add-float/2addr v3, v2

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/CacheChart;->setSelected(I)V

    if-ltz v1, :cond_4

    if-eq v1, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/CacheChart;->onSectionDown(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/CacheChart;->interceptTouch:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    if-eq v1, v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/CacheChart;->onSectionDown(IZ)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/CacheChart;->setSelected(I)V

    if-eq v1, v5, :cond_a

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    if-eq v1, v5, :cond_8

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/CacheChart;->onSectionClick(I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/CacheChart;->setSelected(I)V

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/CacheChart;->onSectionDown(IZ)V

    if-eqz v0, :cond_a

    return v2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/CacheChart;->setSelected(I)V

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/CacheChart;->onSectionDown(IZ)V

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected heightDp()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CacheChart;->isAttached:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/telegram/ui/Components/CacheChart$Sector;->particle:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/CacheChart;->svgParticles:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/CacheChart;->particles:[I

    aget v2, v2, v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, -0x1

    invoke-static {v2, v4, v3, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lorg/telegram/ui/Components/CacheChart$Sector;->particle:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CacheChart;->particles:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CacheChart;->isAttached:Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Components/CacheChart$Sector;->particle:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/Components/CacheChart$Sector;->particle:Landroid/graphics/Bitmap;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CacheChart;->heightDp()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x432c0000    # 172.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    sub-int v2, p1, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-int v4, p2, v0

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-int v5, p1, v0

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-int/2addr v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeGradientMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->completeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradientMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->chartMeasureBounds:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Components/CacheChart;->completeTextGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CacheChart;->completeDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSectionClick(I)V
    .locals 0

    return-void
.end method

.method protected abstract onSectionDown(IZ)V
.end method

.method protected padInsideDp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setInterceptTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CacheChart;->interceptTouch:Z

    return-void
.end method

.method public varargs setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "KB"

    const-string v4, "0"

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    array-length v11, v2

    if-nez v11, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_1b

    :cond_1
    iput-boolean v9, v0, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    if-nez v1, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v11, v8, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    new-instance v11, Landroid/text/SpannableString;

    const-string v12, "%"

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    array-length v12, v2

    move-wide v14, v5

    const/4 v13, 0x0

    :goto_0
    array-length v7, v2

    if-ge v13, v7, :cond_7

    aget-object v7, v2, v13

    if-nez v7, :cond_3

    new-instance v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    invoke-direct {v7}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;-><init>()V

    aput-object v7, v2, v13

    iput-wide v5, v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    :cond_3
    aget-object v7, v2, v13

    iput v13, v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->index:I

    iget-boolean v8, v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->selected:Z

    if-eqz v8, :cond_4

    iget-wide v9, v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    add-long/2addr v14, v9

    :cond_4
    iget-wide v9, v7, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    cmp-long v7, v9, v5

    if-lez v7, :cond_6

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :goto_3
    add-int/2addr v13, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    cmp-long v7, v14, v5

    if-gtz v7, :cond_d

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    cmp-long v2, p1, v5

    if-gtz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-nez v1, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-eqz v5, :cond_9

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v9, 0x0

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v3, v2

    if-ge v9, v3, :cond_c

    aget-object v2, v2, v9

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    if-nez v1, :cond_b

    iget-object v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_7

    :cond_b
    const/4 v4, 0x1

    :goto_7
    add-int/2addr v9, v4

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    array-length v6, v2

    const v7, 0x3ca3d70a    # 0.02f

    if-ge v4, v6, :cond_11

    aget-object v6, v2, v4

    if-eqz v6, :cond_f

    iget-boolean v8, v6, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->selected:Z

    if-nez v8, :cond_e

    goto :goto_a

    :cond_e
    iget-wide v8, v6, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    long-to-float v6, v8

    long-to-float v8, v14

    div-float/2addr v6, v8

    :goto_9
    const/4 v8, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v6, 0x0

    goto :goto_9

    :goto_b
    cmpl-float v9, v6, v8

    if-lez v9, :cond_10

    cmpg-float v7, v6, v7

    if-gez v7, :cond_10

    const/4 v7, 0x1

    add-int/2addr v5, v7

    add-float/2addr v3, v6

    goto :goto_c

    :cond_10
    const/4 v7, 0x1

    :goto_c
    add-int/2addr v4, v7

    goto :goto_8

    :cond_11
    array-length v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->tempPercents:[I

    if-eqz v4, :cond_12

    array-length v4, v4

    array-length v6, v2

    if-eq v4, v6, :cond_13

    :cond_12
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->tempPercents:[I

    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->tempFloat:[F

    if-eqz v4, :cond_14

    array-length v4, v4

    array-length v6, v2

    if-eq v4, v6, :cond_15

    :cond_14
    array-length v4, v2

    new-array v4, v4, [F

    iput-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->tempFloat:[F

    :cond_15
    const/4 v4, 0x0

    :goto_d
    array-length v6, v2

    if-ge v4, v6, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/Components/CacheChart;->tempFloat:[F

    aget-object v8, v2, v4

    if-eqz v8, :cond_17

    iget-boolean v9, v8, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->selected:Z

    if-nez v9, :cond_16

    goto :goto_e

    :cond_16
    iget-wide v8, v8, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    long-to-float v8, v8

    long-to-float v9, v14

    div-float/2addr v8, v9

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v8, 0x0

    :goto_f
    aput v8, v6, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_d

    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->tempFloat:[F

    iget-object v6, v0, Lorg/telegram/ui/Components/CacheChart;->tempPercents:[I

    invoke-static {v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    iget v4, v0, Lorg/telegram/ui/Components/CacheChart;->type:I

    if-nez v4, :cond_1a

    new-instance v4, Lorg/telegram/ui/Components/CacheChart$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Components/CacheChart$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_10
    array-length v6, v2

    if-gt v4, v6, :cond_1a

    aget-object v6, v2, v4

    iget v8, v6, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->index:I

    array-length v9, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_19

    const/4 v8, 0x0

    aget-object v9, v2, v8

    aput-object v6, v2, v8

    aput-object v9, v2, v4

    goto :goto_11

    :cond_19
    add-int/2addr v4, v10

    goto :goto_10

    :cond_1a
    :goto_11
    const/4 v4, 0x2

    if-ge v12, v4, :cond_1b

    const/4 v12, 0x0

    :cond_1b
    int-to-float v4, v12

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v4, v4, v6

    const/high16 v8, 0x43b40000    # 360.0f

    sub-float/2addr v8, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_12
    array-length v12, v2

    if-ge v9, v12, :cond_26

    aget-object v12, v2, v9

    iget v13, v12, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->index:I

    iget-boolean v6, v12, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->selected:Z

    if-nez v6, :cond_1c

    move v6, v8

    const/4 v7, 0x0

    goto :goto_13

    :cond_1c
    move v6, v8

    iget-wide v7, v12, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    long-to-float v7, v7

    long-to-float v8, v14

    div-float/2addr v7, v8

    :goto_13
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v12, v0, Lorg/telegram/ui/Components/CacheChart;->tempPercents:[I

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-wide/from16 v17, v14

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    const-string v2, "%d"

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    float-to-double v14, v7

    const-wide v19, 0x3fa999999999999aL    # 0.05

    cmpl-double v12, v14, v19

    if-lez v12, :cond_1d

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v14, v7, v12

    if-gez v14, :cond_1d

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_1d
    const/4 v12, 0x0

    :goto_14
    iput v12, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    const v14, 0x3da3d70a    # 0.08f

    cmpg-float v14, v7, v14

    if-ltz v14, :cond_1f

    iget-object v14, v0, Lorg/telegram/ui/Components/CacheChart;->tempPercents:[I

    aget v14, v14, v13

    const/16 v15, 0x64

    if-lt v14, v15, :cond_1e

    goto :goto_15

    :cond_1e
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1f
    :goto_15
    const v14, 0x3f59999a    # 0.85f

    :goto_16
    iput v14, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->particlesAlpha:F

    if-nez v1, :cond_20

    iget-object v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v14, 0x1

    invoke-virtual {v2, v12, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v12, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textScaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textScale:F

    invoke-virtual {v12, v2, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v12, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->particlesAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->particlesAlpha:F

    invoke-virtual {v12, v2, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget v12, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_21

    iget-object v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v8, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_21
    const v2, 0x3ca3d70a    # 0.02f

    cmpg-float v8, v7, v2

    if-gez v8, :cond_22

    cmpl-float v8, v7, v14

    if-lez v8, :cond_22

    const v7, 0x3ca3d70a    # 0.02f

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_22
    int-to-float v8, v5

    mul-float v8, v8, v2

    sub-float/2addr v8, v3

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v8, v12, v8

    mul-float v7, v7, v8

    :goto_17
    mul-float v8, v4, v6

    int-to-float v14, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v14, v14, v15

    add-float/2addr v8, v14

    mul-float v14, v7, v6

    add-float/2addr v14, v8

    const/16 v16, 0x0

    cmpg-float v19, v7, v16

    if-gtz v19, :cond_24

    iget-object v7, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v7, v7, v13

    add-float v16, v8, v14

    div-float v2, v16, v15

    iput v2, v7, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    sub-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v15

    iput v2, v7, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    const/4 v7, 0x0

    iput v7, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    if-nez v1, :cond_23

    iget-object v7, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v7, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSizeAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    invoke-virtual {v7, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v7, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    invoke-virtual {v7, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_23
    const/4 v14, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_19

    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    add-float v15, v8, v14

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    iput v15, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    sub-float/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v8, v8, v16

    iput v8, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    if-nez v1, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v8, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenterAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleCenter:F

    const/4 v14, 0x1

    invoke-virtual {v8, v2, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    aget-object v2, v2, v13

    iget-object v8, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSizeAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    invoke-virtual {v8, v2, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_18

    :cond_25
    const/4 v14, 0x1

    :goto_18
    add-float/2addr v4, v7

    add-int/2addr v10, v14

    :goto_19
    add-int/2addr v9, v14

    move-object/from16 v2, p4

    move v8, v6

    move-wide/from16 v14, v17

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3ca3d70a    # 0.02f

    goto/16 :goto_12

    :cond_26
    move-wide v7, v14

    const/4 v14, 0x1

    invoke-static {v7, v8, v14, v14}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const-string v4, ""

    if-lez v3, :cond_27

    const/4 v3, 0x0

    aget-object v5, v2, v3

    goto :goto_1a

    :cond_27
    const/4 v3, 0x0

    move-object v5, v4

    :goto_1a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x4

    if-lt v6, v9, :cond_28

    const-wide/32 v9, 0x40000000

    cmp-long v6, v7, v9

    if-gez v6, :cond_28

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    array-length v5, v2

    const/4 v6, 0x1

    if-le v5, v6, :cond_29

    aget-object v4, v2, v6

    :cond_29
    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_1b
    iput-boolean v2, v0, Lorg/telegram/ui/Components/CacheChart;->loading:Z

    cmp-long v2, p1, v5

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v2, 0x0

    :goto_1c
    iput-boolean v2, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-nez v1, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->completeFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/CacheChart;->complete:Z

    if-eqz v5, :cond_2d

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_2d
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v2, v7, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->topCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->bottomCompleteText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v9, 0x0

    :goto_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v3, v2

    if-ge v9, v3, :cond_30

    aget-object v2, v2, v9

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlpha:F

    if-nez v1, :cond_2f

    iget-object v2, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->textAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_1f

    :cond_2f
    const/4 v4, 0x1

    :goto_1f
    add-int/2addr v9, v4

    goto :goto_1e

    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(I)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/CacheChart;->selectedIndex:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/CacheChart;->sectors:[Lorg/telegram/ui/Components/CacheChart$Sector;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    if-ne p1, v1, :cond_1

    aget-object v3, v2, v1

    iget v3, v3, Lorg/telegram/ui/Components/CacheChart$Sector;->angleSize:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    const/4 p1, -0x1

    :cond_1
    aget-object v2, v2, v1

    if-ne p1, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lorg/telegram/ui/Components/CacheChart$Sector;->selected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/CacheChart;->selectedIndex:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
