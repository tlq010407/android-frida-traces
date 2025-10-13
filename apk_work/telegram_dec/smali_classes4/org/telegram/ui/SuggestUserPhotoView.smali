.class public Lorg/telegram/ui/SuggestUserPhotoView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field arrowDrawable:Landroid/graphics/drawable/Drawable;

.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field containterView:Landroid/view/View;

.field currentPhoto:Lorg/telegram/messenger/ImageReceiver;

.field newPhoto:Lorg/telegram/messenger/ImageReceiver;

.field path:Landroid/graphics/Path;

.field photoCropView:Lorg/telegram/ui/Components/PhotoCropView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_arrow_avatar:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private setImageCoords(Lorg/telegram/messenger/ImageReceiver;II)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v6, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0, v6, v5, v2}, Lorg/telegram/ui/SuggestUserPhotoView;->setImageCoords(Lorg/telegram/messenger/ImageReceiver;II)V

    iget-object v5, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0, v5, v4, v2}, Lorg/telegram/ui/SuggestUserPhotoView;->setImageCoords(Lorg/telegram/messenger/ImageReceiver;II)V

    iget-object v5, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget-object v7, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v2, v7

    iget-object v8, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    iget-object v8, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v7, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->path:Landroid/graphics/Path;

    int-to-float v5, v4

    int-to-float v6, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->containterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    sub-float v0, v5, v0

    iget-object v6, p0, Lorg/telegram/ui/SuggestUserPhotoView;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v5, v6

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/SuggestUserPhotoView;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v8, v8, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget v9, v8, Lorg/telegram/ui/Components/Crop/CropAreaView;->size:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    iget v9, v8, Lorg/telegram/ui/Components/Crop/CropAreaView;->top:F

    sub-float/2addr v0, v9

    iget v8, v8, Lorg/telegram/ui/Components/Crop/CropAreaView;->left:F

    sub-float/2addr v6, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, p0, Lorg/telegram/ui/SuggestUserPhotoView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, v7, v7, v5, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/PhotoViewer;->skipLastFrameDraw:Z

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->containterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/PhotoViewer;->skipLastFrameDraw:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/SuggestUserPhotoView;->containterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object p2, p0, Lorg/telegram/ui/SuggestUserPhotoView;->newPhoto:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/high16 p2, 0x42ac0000    # 86.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setImages(Lorg/telegram/tgnet/TLObject;Landroid/view/View;Lorg/telegram/ui/Components/PhotoCropView;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    iget-object v0, p0, Lorg/telegram/ui/SuggestUserPhotoView;->currentPhoto:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/SuggestUserPhotoView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lorg/telegram/ui/SuggestUserPhotoView;->containterView:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/SuggestUserPhotoView;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-void
.end method
