.class public Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final darkPaint:Landroid/graphics/Paint;

.field private final darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private final darkVideoPaint:Landroid/graphics/Paint;

.field private degree:I

.field private hasVideo:Z

.field private isReveal:Z

.field private final lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private revealDarkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private revealShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field public final scale:F

.field private totalHeight:I

.field private totalWidth:I

.field private final views:Ljava/util/List;

.field private final whiteVideoPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$L1LSd_WXei80B3Enj5rYixrVATM(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lambda$setHasVideo$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMudu5aswTbVewGRgDTvmdq1UEM(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lambda$setHasVideo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/BitmapShaderTools;

    const/16 v1, 0x50

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    new-instance v2, Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-direct {v2, v1, v1}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->whiteVideoPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkVideoPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->views:Ljava/util/List;

    const v3, 0x3f8f5c29    # 1.12f

    iput v3, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->scale:F

    const/4 v3, 0x0

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3, v3, v6, v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    invoke-virtual {v0, v3, v3, v6, v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x66

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v2, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->hasVideo:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkVideoPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->whiteVideoPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$setHasVideo$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkVideoPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42cc0000    # 102.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->whiteVideoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method

.method private synthetic lambda$setHasVideo$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x43340000    # 180.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detach(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDarkCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getDarkPaint()Landroid/graphics/Paint;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->hasVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkVideoPaint:Landroid/graphics/Paint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDarkPaint(Z)Landroid/graphics/Paint;
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkPaint:Landroid/graphics/Paint;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkPaint()Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getDegree()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->degree:I

    return v0
.end method

.method public getLightCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getLightPaint()Landroid/graphics/Paint;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->hasVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->whiteVideoPaint:Landroid/graphics/Paint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRevealCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getRevealDarkPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealDarkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRevealDrakCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealDarkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getRevealPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isReveal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->isReveal:Z

    return v0
.end method

.method public setDarkTranslation(FF)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float v0, v0

    const v1, 0x3f8f5c29    # 1.12f

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->darkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    neg-float v4, p1

    sub-float v2, v4, v2

    neg-float v5, p2

    sub-float v0, v5, v0

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->degree:I

    int-to-float v6, v6

    invoke-virtual {v3, v2, v0, v1, v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->setMatrix(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealDarkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {v0, v4, v5, v1, p1}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    return-void
.end method

.method public setDegree(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->degree:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method

.method public setHasVideo(Z)V
    .locals 4

    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->hasVideo:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x50

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    invoke-virtual {p1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->hasVideo:Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setLightTranslation(FF)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float v0, v0

    const v1, 0x3f8f5c29    # 1.12f

    mul-float v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->lightShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    neg-float v4, p1

    sub-float v3, v4, v3

    neg-float v5, p2

    sub-float v1, v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->degree:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v1, v0, v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->setMatrix(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {v0, v4, v5, v1, p1}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    return-void
.end method

.method public setReveal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->isReveal:Z

    return-void
.end method

.method public setTotalSize(II)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->totalHeight:I

    new-instance v0, Lorg/telegram/ui/Components/BitmapShaderTools;

    div-int/lit8 p1, p1, 0x4

    div-int/lit8 p2, p2, 0x4

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    new-instance v0, Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->revealDarkShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object p1, v0, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/16 p2, 0xb4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
