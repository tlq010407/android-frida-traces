.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;,
        Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;
    }
.end annotation


# static fields
.field private static blurQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static drawingBlur:Z


# instance fields
.field private final DOWN_SCALE:F

.field private final TOP_CLIP_OFFSET:I

.field public adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private animationInProgress:Z

.field attached:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundMotion:Z

.field private backgroundTranslationY:I

.field protected backgroundView:Landroid/view/View;

.field private bgAngle:F

.field final blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

.field public blurBehindViews:Ljava/util/ArrayList;

.field blurCrossfade:Landroid/animation/ValueAnimator;

.field public blurCrossfadeProgress:F

.field public blurGeneratingTuskIsRunning:Z

.field public blurIsRunning:Z

.field private blurNodeInvalidated:[Z

.field private blurNodeInvalidatedThisFrame:[Z

.field private blurNodes:[Landroid/graphics/RenderNode;

.field public blurPaintBottom:Landroid/graphics/Paint;

.field public blurPaintBottom2:Landroid/graphics/Paint;

.field public blurPaintTop:Landroid/graphics/Paint;

.field public blurPaintTop2:Landroid/graphics/Paint;

.field private bottomClip:I

.field count:I

.field count2:I

.field currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field protected delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

.field protected final delegates:Ljava/util/ArrayList;

.field private drawnBottomOffset:F

.field private emojiHeight:I

.field private emojiOffset:F

.field public invalidateBlur:Z

.field protected keyboardHeight:I

.field private lastDrawnBottomBlurOffset:F

.field private final lastViews:Ljava/util/ArrayList;

.field matrix:Landroid/graphics/Matrix;

.field matrix2:Landroid/graphics/Matrix;

.field public needBlur:Z

.field public needBlurBottom:Z

.field private occupyStatusBar:Z

.field private oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private oldBackgroundMotion:Z

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private paused:Z

.field prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

.field private rect:Landroid/graphics/Rect;

.field private selectedBlurPaint:Landroid/graphics/Paint;

.field private selectedBlurPaint2:Landroid/graphics/Paint;

.field private skipBackgroundDrawing:Z

.field snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private themeAnimationValue:F

.field times:I

.field times2:I

.field private translationX:F

.field private translationY:F

.field public unusedBitmaps:Ljava/util/ArrayList;

.field private final views:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$-JMVdveNAG11TpQatuumc7lS6-w(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$checkMotion$0(IIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ijoaTb1Cype_8aW1C5XYf1Hd-s(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lambda$notifyHeightChanged$1(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DOWN_SCALE:F

    const/16 p1, 0x22

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->TOP_CLIP_OFFSET:I

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    new-instance p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    const/4 p1, 0x2

    new-array v0, p1, [Z

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkSnowflake(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->themeAnimationValue:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    return p0
.end method

.method private checkLayerType()V
    .locals 0

    return-void
.end method

.method private checkMotion()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundMotion:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundMotion:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkSnowflake(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->canStartHolidayAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawListWithCallbacks(Landroid/graphics/Canvas;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateOptimized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;->listenInvalidate(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    invoke-interface {p2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;->listenInvalidate(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private getBlurRadius()F
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    return v0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method private getRenderNodeScale()F
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    return v0

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0
.end method

.method private synthetic lambda$checkMotion$0(IIF)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationX:F

    int-to-float p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->translationY:F

    iput p3, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bgAngle:F

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyHeightChanged$1(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-interface {v1, v2, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateBlurShaderPosition(FZ)V
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    const/high16 v1, 0x42080000    # 34.0f

    if-nez p2, :cond_3

    neg-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr v2, p1

    iget v3, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr p2, v3

    sub-float/2addr v2, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    add-float/2addr p1, v2

    iget v2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    sub-float/2addr p1, v1

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    :goto_2
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    sub-float/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v3, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz p2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    sub-float/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix2:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->prevBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    iget v0, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    iget p2, p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public DRAW_USING_RENDERNODE()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blurWasDrawn()Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->startBlur()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBlurCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Z)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p2, p7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurShaderPosition(FZ)V

    const/16 p2, 0xff

    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p7

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, p3, p5

    sub-float v3, p4, p5

    add-float v4, p3, p5

    add-float v5, p4, p5

    iget p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 p7, 0x437f0000    # 255.0f

    mul-float p2, p2, p7

    float-to-int v6, p2

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    if-ne v3, v4, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v3

    const/16 v7, 0xff

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    if-nez v3, :cond_3

    new-array v3, v4, [Landroid/graphics/RenderNode;

    iput-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getRenderNodeScale()F

    move-result v3

    xor-int/lit8 v4, v2, 0x1

    const/4 v12, 0x1

    if-nez v2, :cond_4

    iget-object v13, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aget-boolean v13, v13, v4

    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v13

    iget v14, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3dcccccd    # 0.1f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    iget-object v13, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v12, v13, v4

    :cond_4
    const/high16 v13, 0x42100000    # 36.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-ge v11, v7, :cond_7

    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aget-boolean v15, v15, v4

    if-eqz v15, :cond_7

    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_7

    iget-object v15, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v16, v15, v4

    if-nez v16, :cond_5

    new-instance v5, Landroid/graphics/RenderNode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blurNode"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    aput-object v5, v15, v4

    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v7, v7, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBlurRadius()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBlurRadius()F

    move-result v15

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/Shader$TileMode;

    move-result-object v6

    invoke-static {v14, v15, v6}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v6

    new-instance v14, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v14, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-static {v14}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v7, v7, v4

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v6

    int-to-float v14, v14

    div-float/2addr v14, v3

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v7, v15, v15, v5, v14}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v5

    sput-boolean v12, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v14, v7, v3

    invoke-static {v5, v14, v14}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RecordingCanvas;FF)V

    invoke-static {v5, v10}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V

    int-to-float v7, v13

    const/4 v14, 0x0

    invoke-static {v5, v14, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RecordingCanvas;FF)V

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawnBottomOffset:F

    neg-float v6, v7

    invoke-static {v5, v14, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RecordingCanvas;FF)V

    :cond_6
    invoke-direct {v0, v5, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawListWithCallbacks(Landroid/graphics/Canvas;Z)V

    sput-boolean v15, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidatedThisFrame:[Z

    aput-boolean v12, v5, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v15, v5, v4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateOptimized()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    aput-boolean v12, v5, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v5, v5, v4

    if-eqz v5, :cond_a

    const/16 v6, 0xff

    if-ge v11, v6, :cond_a

    int-to-float v6, v11

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;F)Z

    if-eqz v2, :cond_9

    neg-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    neg-float v1, v1

    iget v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawnBottomOffset:F

    add-float/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->lastDrawnBottomBlurOffset:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getListTranslationY()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    sub-float/2addr v1, v5

    goto :goto_1

    :goto_2
    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v8, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodes:[Landroid/graphics/RenderNode;

    aget-object v1, v1, v4

    invoke-static {v8, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-nez v3, :cond_c

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_c
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurShaderPosition(FZ)V

    const/16 v1, 0xff

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint2:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfadeProgress:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_d
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->selectedBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundSizeY()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    neg-int v2, v0

    goto :goto_0

    :cond_3
    instance-of v0, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_5

    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public getBackgroundTranslationY()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return v0

    :cond_2
    instance-of v0, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomOffset()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomTranslation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeightWithKeyboard()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getNewDrawableMotion()Z
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    return v0
.end method

.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateBackground()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidateBlur()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public invalidateBlurredViews()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurNodeInvalidated:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    aput-boolean v2, v0, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected invalidateOptimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    return v0
.end method

.method public notifyHeightChanged()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxScale:F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintTop2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurPaintBottom2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurCrossfade:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    iput-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->currentBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->recycle()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->paused:Z

    return-void
.end method

.method public removeDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-nez p2, :cond_1

    new-instance p2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BackgroundView;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->attached:Z

    if-eqz p2, :cond_4

    instance-of p2, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkMotion()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->checkLayerType()V

    return-void
.end method

.method public setBackgroundTranslation(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundTranslationY:I

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomClip(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->bottomClip:I

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    return-void
.end method

.method public setEmojiKeyboardHeight(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiHeight:I

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEmojiOffset(ZF)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    if-eq v0, p1, :cond_1

    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->emojiOffset:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->animationInProgress:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->occupyStatusBar:Z

    return-void
.end method

.method public setSkipBackgroundDrawing(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->skipBackgroundDrawing:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startBlur()V
    .locals 16

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurIsRunning:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlphaSlow:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v2, :cond_9

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurGeneratingTuskIsRunning:Z

    int-to-float v6, v3

    const/high16 v0, 0x41400000    # 12.0f

    div-float v7, v6, v0

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x22

    int-to-float v8, v2

    div-float v0, v8, v0

    float-to-int v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    if-lez v11, :cond_3

    iget-object v11, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    goto :goto_0

    :cond_3
    move-object v11, v12

    :goto_0
    if-nez v11, :cond_4

    new-instance v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;)V

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    new-instance v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    iget-object v15, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    iget-boolean v14, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v14, :cond_5

    invoke-static {v0, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    :cond_4
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_5
    :goto_1
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x22

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget-object v13, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getScrollOffset()I

    move-result v14

    rem-int/lit8 v14, v14, 0x18

    iput v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    iget-object v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    const/high16 v15, 0x41200000    # 10.0f

    mul-float v4, v7, v15

    iget-object v15, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    iget-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    int-to-float v12, v12

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5, v4, v15, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v0, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v12, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    iget v14, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v14, v14

    add-float/2addr v4, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v4}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v0, v5, v0

    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleX:F

    div-float v0, v5, v7

    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topScaleY:F

    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v4, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    :try_start_0
    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->topCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    iget-boolean v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlurBottom:Z

    if-eqz v0, :cond_6

    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x22

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v7, 0x1

    iput-boolean v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v7

    sub-float/2addr v7, v6

    iput v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomOffset()F

    move-result v6

    iput v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->drawnListTranslationY:F

    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v15, v4, v7

    iget-object v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v6, v5, v15, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v6, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    iget v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomOffset:F

    sub-float/2addr v15, v7

    iget v7, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->pixelFixOffset:I

    int-to-float v7, v7

    add-float/2addr v15, v7

    invoke-virtual {v6, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    div-float v0, v5, v0

    iput v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleX:F

    div-float/2addr v5, v4

    iput v5, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomScaleY:F

    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->bottomCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;->needBlurBottom:Z

    :goto_3
    iget v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    int-to-long v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    iget v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    const/16 v4, 0x14

    if-lt v0, v4, :cond_7

    const/4 v4, 0x0

    iput v4, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->count2:I

    iput v4, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->times2:I

    :cond_7
    sget-object v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_8

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "BlurQueue"

    invoke-direct {v0, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit16 v2, v2, 0xb4

    const/4 v3, 0x6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurRadius:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->radius:I

    iget-object v0, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBackgroundTask:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;

    iput-object v11, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBackgroundTask;->finalBitmap:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$BlurBitmap;

    sget-object v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method public updateBlurContent()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->DRAW_USING_RENDERNODE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    :cond_0
    return-void
.end method

.method protected useRootView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
