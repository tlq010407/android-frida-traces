.class public Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static TYPE_GIFT_LOCK:I = 0x3

.field public static TYPE_GIFT_PIN:I = 0x4

.field public static TYPE_REACTIONS:I = 0x0

.field public static TYPE_REACTIONS_LOCK:I = 0x2

.field public static TYPE_STICKERS_PREMIUM_LOCKED:I = 0x1


# instance fields
.field attachedToWindow:Z

.field private blendColor:Ljava/lang/Integer;

.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field color1:I

.field color2:I

.field private colorFloat:[F

.field colorRetrieved:Z

.field public currentColor:I

.field emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private iconScale:F

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public isEnter:Z

.field private locked:Z

.field oldShaderPaint:Landroid/graphics/Paint;

.field public paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field shader:Landroid/graphics/Shader;

.field shaderCrossfadeProgress:F

.field starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private final type:I

.field waitingImage:Z

.field wasDrawn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->iconScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_premium_lock2:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    const/4 p2, 0x4

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    const/4 p2, 0x2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p2, 0x3dcccccd    # 0.1f

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    goto :goto_2

    :cond_1
    sget p1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS_LOCK:I

    if-ne p2, p1, :cond_2

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->iconScale:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    sget p1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_LOCK:I

    if-ne p2, p1, :cond_3

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_PIN:I

    if-ne p2, p1, :cond_4

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private updateGradient()V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->attachedToWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->locked:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    mul-float v2, v2, v3

    aput v2, v0, v1

    const/4 v2, 0x2

    aget v3, v0, v2

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    aput v4, v0, v2

    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color1:I

    if-ne v2, v0, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    if-eq v2, v3, :cond_5

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    :cond_4
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v6, v2

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color1:I

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    filled-new-array {v0, v3}, [I

    move-result-object v9

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method


# virtual methods
.method public done()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    return v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->attachedToWindow:Z

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->attachedToWindow:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS_LOCK:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDominantColor(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)I

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v5, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS_LOCK:I

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_4
    sget v5, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v10, v0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-nez v0, :cond_6

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v4, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_8

    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    :cond_8
    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v5, v5, v7

    float-to-int v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const v4, 0x3dda740e

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_a
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->iconScale:F

    const/4 v4, 0x1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->iconScale:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v0, v0, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget p2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    const v3, 0x40b66666    # 5.7f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, p1, v0, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    :goto_0
    return-void
.end method

.method public play(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->isEnter:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public resetAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->isEnter:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public resetColor()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS_LOCK:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBlendWithColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->blendColor:Ljava/lang/Integer;

    return-void
.end method

.method public setColor(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->blendColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS_LOCK:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_mini_stickerstar:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setWaitingImage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
