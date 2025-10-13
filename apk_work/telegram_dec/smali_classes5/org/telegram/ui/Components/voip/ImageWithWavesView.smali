.class public Lorg/telegram/ui/Components/voip/ImageWithWavesView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;
    }
.end annotation


# instance fields
.field private final allowAnimations:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

.field private final backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isConnectedCalled:Z

.field private isMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const/high16 v1, 0x42d00000    # 104.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x42de0000    # 111.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;-><init>(IIII)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p1, 0x87

    const/16 v2, 0x11

    invoke-static {p1, p1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, p1

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->allowAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onConnected()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->isConnectedCalled:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->isConnectedCalled:Z

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v6

    const v7, 0x3f866666    # 1.05f

    const/high16 v8, 0x3f800000    # 1.0f

    new-array v9, v0, [F

    aput v6, v9, v2

    aput v7, v9, v3

    aput v8, v9, v1

    invoke-static {p0, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v9

    new-array v0, v0, [F

    aput v9, v0, v2

    aput v7, v0, v3

    aput v8, v0, v1

    invoke-static {p0, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v5, v1, v2

    aput-object v0, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->allowAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->update()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, p1, v0, v1, p0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onNeedRating()V
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setShowWaves(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    new-array v8, v2, [F

    aput v6, v8, v3

    aput v7, v8, v1

    invoke-static {p0, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    neg-float v9, v9

    new-array v10, v2, [F

    aput v8, v10, v3

    aput v9, v10, v1

    invoke-static {p0, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v9

    const v10, 0x3f666666    # 0.9f

    new-array v11, v0, [F

    aput v9, v11, v3

    aput v10, v11, v1

    aput v7, v11, v2

    invoke-static {p0, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v11

    new-array v12, v0, [F

    aput v11, v12, v3

    aput v10, v12, v1

    aput v7, v12, v2

    invoke-static {p0, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v5, v9, v3

    aput-object v6, v9, v1

    aput-object v8, v9, v2

    aput-object v7, v9, v0

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setAmplitude(D)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->isMuted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    :goto_0
    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method public setMute(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->isMuted:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->isMuted:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setMuteToStatic(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    return-void
.end method

.method public setShowWaves(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    return-void
.end method
