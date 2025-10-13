.class public Lorg/telegram/ui/Components/EditCoverButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private final blur:Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final imageBounds:Landroid/graphics/RectF;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private listener:Landroid/view/View$OnClickListener;

.field private final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public static synthetic $r8$lambda$dPCRBaElTZySyVkFqzpYjFgETN4(Lorg/telegram/ui/Components/EditCoverButton;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditCoverButton;->lambda$setImage$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pysu0SFoxHhWHjB2ZrE7IuiCJ28(Lorg/telegram/ui/Components/EditCoverButton;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditCoverButton;->lambda$setImage$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer;Ljava/lang/CharSequence;Z)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageBounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v1, 0x41b547ae    # 22.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    new-instance v0, Lorg/telegram/ui/Components/Text;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {v0, p3, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->text:Lorg/telegram/ui/Components/Text;

    new-instance p3, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    iget-object v0, p2, Lorg/telegram/ui/PhotoViewer;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {p3, p2, v0, p0}, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->setApplyBounds(Z)Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EditCoverButton;->blur:Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const p4, -0x66000001

    invoke-direct {p2, p4, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method private synthetic lambda$setImage$0(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditCoverButton;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$setImage$1(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/telegram/ui/Components/EditCoverButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EditCoverButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditCoverButton;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x41f2a3d7    # 30.33f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_0
    const v1, 0x413547ae    # 11.33f

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EditCoverButton;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, v1

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/Components/EditCoverButton;->blur:Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v5, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditCoverButton;->blur:Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageBounds:Landroid/graphics/RectF;

    const v3, 0x3f28f5c3    # 0.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v6, 0x41b547ae    # 22.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    int-to-float v7, v7

    const v8, 0x41ba8f5c    # 23.32f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EditCoverButton;->text:Lorg/telegram/ui/Components/Text;

    add-int/2addr v4, v1

    int-to-float v8, v4

    int-to-float v9, v5

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v2, v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->blur:Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->listener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return v2

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    return p1
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditCoverButton;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/EditCoverButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EditCoverButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditCoverButton;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;)V
    .locals 12

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditCoverButton;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v4, v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditCoverButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v1, p1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "24_24"

    const-string v6, "24_24"

    const-wide/16 v7, 0x0

    move-object v10, p2

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditCoverButton;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method
