.class Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarImageView"
.end annotation


# instance fields
.field private firstDrawTime:J

.field public isVideo:Z

.field private final placeholderPaint:Landroid/graphics/Paint;

.field private final position:I

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private radialProgressHideAnimator:Landroid/animation/ValueAnimator;

.field private radialProgressHideAnimatorStartValue:F

.field private final radialProgressSize:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ProfileGalleryView;


# direct methods
.method public static synthetic $r8$lambda$3uw5SvvWiJV0D56Wgq17nQH1zxc(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->lambda$onDraw$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;ILandroid/graphics/Paint;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressSize:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->firstDrawTime:J

    iput p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->position:I

    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2700(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Lorg/telegram/ui/Components/RadialProgress2;)Lorg/telegram/ui/Components/RadialProgress2;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    return-object p1
.end method

.method private synthetic lambda$onDraw$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimatorStartValue:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2100(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->position:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition(I)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    const-wide/16 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$1800(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_5

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    if-eqz v5, :cond_3

    instance-of v5, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_5

    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getDurationMs()I

    move-result v4

    if-lez v4, :cond_5

    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress2;->getProgress()F

    move-result v4

    cmpg-float v4, v4, v9

    if-gez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v4, v9, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    const-wide/16 v7, 0x64

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress2;->getOverrideAlpha()F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimatorStartValue:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimatorStartValue:F

    mul-float v5, v5, v6

    float-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView$1;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_5
    iget-wide v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->firstDrawTime:J

    cmp-long v2, v4, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-gez v2, :cond_6

    iput-wide v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->firstDrawTime:J

    goto :goto_2

    :cond_6
    iget-wide v7, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->firstDrawTime:J

    sub-long/2addr v4, v7

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    const-wide/16 v7, 0xfa

    if-eqz v2, :cond_7

    move-wide v9, v7

    goto :goto_1

    :cond_7
    const-wide/16 v9, 0x2ee

    :goto_1
    add-long/2addr v7, v9

    cmp-long v2, v4, v7

    if-gtz v2, :cond_8

    cmp-long v2, v4, v9

    if-lez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-long/2addr v4, v9

    long-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2100(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->invalidate()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->invalidate()V

    :cond_a
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2400(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2400(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v4

    if-ne v2, v4, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v5, v4, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    invoke-static {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v5, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v5, v4, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    add-int/lit8 v6, v2, 0x4

    invoke-static {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2400(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v5, v6

    add-int/2addr v2, v1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    iget-object v0, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    :goto_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getOverrideAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView;->access$2800(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/high16 p4, 0x42a00000    # 80.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->radialProgressSize:I

    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    sub-int p4, p2, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    invoke-virtual {v0, v2, p4, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    :cond_1
    return-void
.end method
