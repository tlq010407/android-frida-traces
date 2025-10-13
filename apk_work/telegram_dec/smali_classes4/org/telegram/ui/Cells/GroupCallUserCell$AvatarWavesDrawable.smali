.class public Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/GroupCallUserCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarWavesDrawable"
.end annotation


# instance fields
.field amplitude:F

.field animateAmplitudeDiff:F

.field animateToAmplitude:F

.field private blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

.field private hasCustomColor:Z

.field invalidateColor:Z

.field private isMuted:I

.field private progressToMuted:F

.field showWaves:Z

.field wavesEnter:F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->invalidateColor:Z

    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    int-to-float p1, p1

    iput p1, v1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    int-to-float p2, p2

    iput p2, v1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iput p1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iput p2, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x26

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V
    .locals 7

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->showWaves:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->hasCustomColor:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->isMuted:I

    const v3, 0x3dda740e

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    iget v5, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    cmpl-float v6, v5, v1

    if-eqz v6, :cond_2

    add-float/2addr v5, v3

    iput v5, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    iput v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_4

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    cmpl-float v5, v0, v2

    if-eqz v5, :cond_4

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    :cond_3
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->invalidateColor:Z

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->invalidateColor:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->isMuted:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    goto :goto_2

    :cond_5
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    goto :goto_1

    :goto_2
    iget v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    const/16 v4, 0x26

    invoke-static {v0, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p1, v3}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p1, v1}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_8

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method public getAvatarScale()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    const v1, 0x3f666666    # 0.9f

    add-float/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public setAmplitude(D)V
    .locals 2

    double-to-float p1, p1

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->showWaves:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    cmpg-float p2, p1, v0

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->animateToAmplitude:F

    iget p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x43480000    # 200.0f

    div-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->animateAmplitudeDiff:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->hasCustomColor:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMuted(IZ)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->isMuted:I

    const/4 v0, 0x1

    if-nez p2, :cond_1

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->progressToMuted:F

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->invalidateColor:Z

    return-void
.end method

.method public setShowWaves(ZLandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->showWaves:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->showWaves:Z

    return-void
.end method

.method public update()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->animateAmplitudeDiff:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->amplitude:F

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->showWaves:Z

    const v1, 0x3d3b3ee7

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    add-float/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    cmpl-float v0, v3, v4

    if-lez v0, :cond_3

    iput v4, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->wavesEnter:F

    :cond_3
    :goto_1
    return-void
.end method
