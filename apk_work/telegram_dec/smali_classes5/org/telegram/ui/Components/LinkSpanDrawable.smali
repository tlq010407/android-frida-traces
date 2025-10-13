.class public Lorg/telegram/ui/Components/LinkSpanDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;,
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;,
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;,
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    }
.end annotation


# static fields
.field private static final pathCache:Ljava/util/ArrayList;


# instance fields
.field private final circlePath:Landroid/graphics/Path;

.field private color:I

.field private cornerRadius:I

.field private final isLite:Z

.field private mBounds:Landroid/graphics/Rect;

.field private final mDuration:J

.field private final mLongPressDuration:J

.field private mMaxRadius:F

.field private final mPathes:Ljava/util/ArrayList;

.field private mPathesCount:I

.field private mReleaseStart:J

.field private final mResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private mRippleAlpha:I

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mSelectionAlpha:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private final mSpan:Landroid/text/style/CharacterStyle;

.field private mStart:J

.field private final mSupportsLongPress:Z

.field private final mTouchX:F

.field private final mTouchY:F

.field private final rippleAlpha:F

.field private final selectionAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V
    .locals 6

    .line 0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FFZ)V

    return-void
.end method

.method public constructor <init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FFZ)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    const/4 p5, 0x0

    iput p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->selectionAlpha:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->rippleAlpha:F

    const v1, 0x181e0

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->isLite:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSpan:Landroid/text/style/CharacterStyle;

    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    iput p3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    iput p4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-long p3, p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    long-to-float p1, p1

    const p2, 0x3fe66666    # 1.8f

    mul-float p1, p1, p2

    long-to-float p2, p3

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    iput-boolean p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/LinkSpanDrawable;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    return-wide v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->isLite:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_0
    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    const/4 v5, 0x1

    if-eq v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_2

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v6, :cond_3

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    :cond_3
    if-eqz v4, :cond_5

    iput v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    if-gtz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/CornerPathEffect;

    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    int-to-float v6, v6

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/CornerPathEffect;

    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    int-to-float v6, v6

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-lez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/LinkPath;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v2, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v2, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    :goto_4
    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v2, v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/LinkPath;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v2, v4

    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    iput v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mMaxRadius:F

    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->isLite:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v2, v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    return v3

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_a

    iput-wide v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    :cond_a
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-wide v8, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v8, v6, v8

    long-to-float v4, v8

    iget-wide v8, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    long-to-float v8, v8

    div-float/2addr v4, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    iget-wide v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    const/4 v4, 0x0

    cmp-long v9, v12, v10

    if-gez v9, :cond_b

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    const-wide/16 v14, 0x4b

    sub-long v14, v6, v14

    sub-long/2addr v14, v12

    long-to-float v9, v14

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v9, v12

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_6
    iget-boolean v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    if-eqz v12, :cond_d

    iget-wide v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v12, v6, v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-float v12, v12

    iget-wide v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    sub-long/2addr v10, v14

    long-to-float v10, v10

    div-float/2addr v12, v10

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpl-float v10, v4, v8

    if-lez v10, :cond_c

    iget-wide v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v10, v6, v10

    iget-wide v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    sub-long/2addr v10, v12

    long-to-float v4, v10

    iget-wide v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    long-to-float v10, v10

    div-float/2addr v4, v10

    sub-float v4, v8, v4

    goto :goto_7

    :cond_c
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v4, v4, v10

    :goto_7
    sub-float v10, v8, v9

    mul-float v4, v4, v10

    goto :goto_8

    :cond_d
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_8
    iget-object v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    int-to-float v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float v11, v11, v12

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float v13, v2, v12

    invoke-static {v8, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v11, v11, v13

    sub-float v9, v8, v9

    mul-float v11, v11, v9

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    sub-float v4, v8, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v11, v11, v13

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v10, 0x0

    :goto_9
    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v10, v11, :cond_e

    iget-object v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    iget-object v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    iget-object v13, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    iget-object v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    int-to-float v11, v11

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, v13

    mul-float v11, v11, v9

    float-to-int v9, v11

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float v4, v4, v10

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    cmpg-float v4, v2, v8

    if-gez v4, :cond_10

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mMaxRadius:F

    mul-float v4, v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget-object v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    iget v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v10, v11, v4, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v4, 0x0

    :goto_a
    iget v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v4, v9, :cond_f

    iget-object v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_b
    iget v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v4, v9, :cond_11

    iget-object v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    :goto_c
    cmpg-float v1, v2, v8

    if-ltz v1, :cond_12

    iget-wide v1, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    const-wide/16 v8, 0x0

    cmp-long v4, v1, v8

    if-gez v4, :cond_12

    iget-boolean v1, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    if-eqz v1, :cond_13

    iget-wide v1, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long/2addr v6, v1

    iget-wide v1, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    iget-wide v8, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    add-long/2addr v1, v8

    cmp-long v4, v6, v1

    if-gez v4, :cond_13

    :cond_12
    const/4 v3, 0x1

    :cond_13
    return v3
.end method

.method public getSpan()Landroid/text/style/CharacterStyle;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSpan:Landroid/text/style/CharacterStyle;

    return-object v0
.end method

.method public obtainNewPath()Lorg/telegram/ui/Components/LinkPath;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/LinkPath;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->isLite:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CornerPath;->setUseCornerPathImplementation(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkPath;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    return-object v0
.end method

.method public release()V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    :cond_1
    return-void
.end method
