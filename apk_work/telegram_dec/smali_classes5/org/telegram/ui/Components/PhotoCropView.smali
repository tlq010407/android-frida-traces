.class public Lorg/telegram/ui/Components/PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    }
.end annotation


# instance fields
.field public final ANIMATION_VALUE:Landroid/util/Property;

.field public final PROGRESS_VALUE:Landroid/util/Property;

.field private circlePaint:Landroid/graphics/Paint;

.field public cropView:Lorg/telegram/ui/Components/Crop/CropView;

.field private delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

.field private flashAlpha:F

.field private inBubbleMode:Z

.field public isReset:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private thumbAnimation:Landroid/animation/AnimatorSet;

.field private thumbAnimationProgress:F

.field private thumbImageView:Lorg/telegram/messenger/ImageReceiver;

.field private thumbImageVisible:Z

.field private thumbImageVisibleOverride:Z

.field private thumbImageVisibleProgress:F

.field private thumbOverrideAnimation:Landroid/animation/AnimatorSet;

.field public wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->isReset:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->flashAlpha:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$1;

    const-string v1, "thumbAnimationProgress"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PhotoCropView$1;-><init>(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->ANIMATION_VALUE:Landroid/util/Property;

    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$2;

    const-string v1, "thumbImageVisibleProgress"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PhotoCropView$2;-><init>(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->PROGRESS_VALUE:Landroid/util/Property;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of p2, p1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->inBubbleMode:Z

    new-instance p2, Lorg/telegram/ui/Components/Crop/CropView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Crop/CropView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoCropView$3;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Crop/CropView;->setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Crop/CropView;->setBottomPadding(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    new-instance p1, Lorg/telegram/ui/Components/PhotoCropView$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PhotoCropView$4;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoCropView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PhotoCropView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoCropView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleProgress:F

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PhotoCropView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleProgress:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PhotoCropView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/PhotoCropView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public cancelThumbAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-boolean p4, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-ne p2, p4, :cond_1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/Crop/CropView;->getActualRect()Landroid/graphics/RectF;

    move-result-object p2

    const/high16 p4, 0x42000000    # 32.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getVideoThumbX()I

    move-result v0

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x431c0000    # 156.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    sub-float/2addr v5, v4

    iget v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/RectF;->top:F

    int-to-float v7, v3

    sub-float/2addr v7, v5

    mul-float v7, v7, v6

    add-float/2addr v5, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    div-float v8, v6, v2

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v4, v5, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleProgress:F

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->flashAlpha:F

    const/4 v5, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->flashAlpha:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoCropView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimationProgress:F

    mul-float v2, v2, v6

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleProgress:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    const/16 v4, 0xff

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/2addr v0, v1

    int-to-float p2, v0

    add-int/2addr v3, p4

    const/high16 p4, 0x41000000    # 8.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr v3, p4

    int-to-float p4, v3

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return p3
.end method

.method public getRectSizeX()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getRectSizeY()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getRectX()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropLeft()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectY()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropTop()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->inBubbleMode:Z

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->isReady()Z

    move-result v0

    return v0
.end method

.method public makeCrop(Lorg/telegram/messenger/MediaController$MediaEditState;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->makeCrop(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    return-void
.end method

.method public mirror()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->mirror()Z

    move-result v0

    return v0
.end method

.method public onAppear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->willShow()V

    return-void
.end method

.method public onAppeared()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->show()V

    return-void
.end method

.method public onDisappear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->hide()V

    return-void
.end method

.method public onHide()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onHide()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onVideoThumbClick()V

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropView;->updateLayout()V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onShow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onVideoThumbClick()V

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->reset(Z)V

    return-void
.end method

.method public rotate(F)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->rotate(F)Z

    move-result p1

    return p1
.end method

.method public setAspectRatio(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setAspectRatio(F)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZZLorg/telegram/ui/Components/PaintingOverlay;Lorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/ui/Components/VideoEditTextureView;Lorg/telegram/messenger/MediaController$CropState;)V
    .locals 13

    move-object v0, p0

    move/from16 v10, p3

    move-object/from16 v11, p8

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v12, 0x0

    iput-boolean v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/Crop/CropView;->setBitmap(Landroid/graphics/Bitmap;IZZLorg/telegram/ui/Components/PaintingOverlay;Lorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/ui/Components/VideoEditTextureView;Lorg/telegram/messenger/MediaController$CropState;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setFreeform(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    if-eqz v11, :cond_1

    iget v3, v11, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v1, v3, v12}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget v3, v11, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget-boolean v2, v11, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x4

    :goto_2
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    return-void
.end method

.method public setFreeform(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setFreeform(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoThumb(Landroid/graphics/Bitmap;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisible:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleProgress:F

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->ANIMATION_VALUE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3f8147ae    # 1.01f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/PhotoCropView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoCropView$5;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setVideoThumbFlashAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->flashAlpha:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    return-void
.end method

.method public setVideoThumbVisible(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbImageVisibleOverride:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->PROGRESS_VALUE:Landroid/util/Property;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    new-array v4, v1, [F

    aput p1, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoCropView$6;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->thumbOverrideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
