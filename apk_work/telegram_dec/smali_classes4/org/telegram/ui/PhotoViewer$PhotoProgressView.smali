.class abstract Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoProgressView"
.end annotation


# instance fields
.field private alphas:[F

.field private animAlphas:[F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private final playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field private final playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    const/4 v1, -0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7502(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7602(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->resetAlphas()V

    new-instance p2, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v0, 0x1c

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setDuration(I)V

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->circle_big:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    return-void
.end method

.method static synthetic access$24500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    return-object p0
.end method

.method static synthetic access$26700(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    return p0
.end method

.method static synthetic access$30900(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    return p0
.end method

.method static synthetic access$33200(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    return p0
.end method

.method private calculateAlpha()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    :goto_1
    mul-float v0, v0, v2

    goto :goto_2

    :cond_0
    aget v2, v2, v1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkVisibility()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    if-eq v0, v1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onVisibilityChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateAnimation(Z)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    const/4 v0, 0x0

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    const-wide/16 v7, 0x168

    mul-long v7, v7, v2

    long-to-float v7, v7

    const v8, 0x453b8000    # 3000.0f

    div-float/2addr v7, v8

    add-float/2addr p1, v7

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    sub-float/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_4

    iget-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    const-wide/16 v9, 0x12c

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    goto :goto_1

    :cond_3
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    long-to-float v9, v9

    const/high16 v10, 0x43960000    # 300.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float p1, p1, v8

    add-float/2addr v7, p1

    iput v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpl-float v8, v7, v6

    if-lez v8, :cond_7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_7

    long-to-float p1, v2

    div-float/2addr p1, v1

    sub-float/2addr v7, p1

    iput v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpg-float p1, v7, v6

    if-gtz p1, :cond_5

    iput v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    :cond_5
    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v8, v7

    if-ge v0, v8, :cond_a

    aget v7, v7, v0

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    aget v9, v8, v0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_8

    long-to-float p1, v2

    div-float/2addr p1, v1

    add-float/2addr v9, p1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v8, v0

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    cmpg-float v7, v7, v9

    if-gez v7, :cond_9

    long-to-float p1, v2

    div-float/2addr p1, v1

    sub-float/2addr v9, p1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v8, v0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_b
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getY()I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    return v0
.end method

.method protected abstract onBackgroundStateUpdated(I)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->getX()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->getY()I

    move-result v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->calculateAlpha()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 v5, 0x437f0000    # 255.0f

    if-ltz v4, :cond_1

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    aget-object v4, v4, v6

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    :goto_0
    if-eqz v4, :cond_1

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float v6, v6, v5

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int v6, v1, v0

    add-int v7, v2, v0

    invoke-virtual {v4, v1, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/4 v6, -0x2

    if-ltz v4, :cond_4

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7900()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    aget-object v4, v4, v7

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    :goto_1
    if-eqz v4, :cond_4

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v7, v6, :cond_3

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    mul-float v8, v8, v5

    mul-float v8, v8, v3

    float-to-int v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_3
    mul-float v7, v3, v5

    float-to-int v7, v7

    goto :goto_2

    :goto_3
    add-int v7, v1, v0

    add-int v8, v2, v0

    invoke-virtual {v4, v1, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v7, :cond_6

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eqz v4, :cond_6

    if-ne v4, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation(Z)V

    goto :goto_7

    :cond_6
    :goto_4
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v9, v6, :cond_7

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v6

    iget v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float v9, v9, v5

    mul-float v9, v9, v3

    float-to-int v3, v9

    :goto_5
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v6

    mul-float v3, v3, v5

    float-to-int v3, v3

    goto :goto_5

    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v5, v1, v8

    int-to-float v5, v5

    add-int v6, v2, v8

    int-to-float v6, v6

    add-int/2addr v1, v0

    sub-int/2addr v1, v8

    int-to-float v1, v1

    add-int/2addr v2, v0

    sub-int/2addr v2, v8

    int-to-float v0, v2

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float v10, v0, v1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7600()Landroid/graphics/Paint;

    move-result-object v13

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation(Z)V

    :goto_7
    return-void
.end method

.method protected abstract onVisibilityChanged(Z)V
.end method

.method public resetAlphas()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->checkVisibility()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setIndexedAlpha(IFZ)V

    return-void
.end method

.method public setBackgroundState(IZZ)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz p3, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-ne p1, v5, :cond_3

    invoke-virtual {v1, v2, p3}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    invoke-virtual {v1, v3, p3}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    :cond_4
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setParent(Landroid/view/View;)V

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq p2, p1, :cond_6

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    goto :goto_2

    :cond_6
    const/4 p2, -0x2

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    :goto_2
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onBackgroundStateUpdated(I)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndexedAlpha(IFZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    aput p2, v0, p1

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    aput p2, p3, p1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->checkVisibility()V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    return-void
.end method
