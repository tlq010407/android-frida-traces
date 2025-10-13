.class public Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private goldenAnimator:Landroid/animation/ValueAnimator;

.field private final iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private final paints:[Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field private final subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0qnKBGaLK8PXfa2mKFqOQYJL8Zo(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->lambda$setGiftLinkToUserText$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPcGChIXs94YZvbIdiyKzxTLPwQ(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Ljava/lang/Integer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->lambda$new$0(Ljava/lang/Integer;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yxHak-WKcnYuCIiACk6m96TS_Sc(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;[FFFZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->lambda$setStars$2([FFFZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$1;

    invoke-direct {v5, v0, v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Landroid/content/Context;I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x32

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v9, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iput v8, v6, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    iput v7, v6, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    const/16 v6, 0xa0

    invoke-static {v6, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/16 v7, 0x14

    new-array v7, v7, [Landroid/graphics/Paint;

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->updatePaints(F)V

    iget-object v7, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useGradient:Z

    iput-boolean v8, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean v4, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    iput-boolean v4, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    new-instance v9, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)V

    iput-object v9, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->getPaint:Lorg/telegram/messenger/Utilities$CallbackReturn;

    iget-object v7, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/16 v13, 0x18

    const/4 v14, -0x8

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v5, v1, v9, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41900000    # 18.0f

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x11

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/16 v1, 0xea

    const/16 v2, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->updatePaints(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static synthetic lambda$setGiftLinkToUserText$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStars$2([FFFZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/4 v0, 0x0

    aget v1, p1, v0

    sub-float v1, p5, v1

    aput p5, p1, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-static {p2, p3, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->golden:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX3:F

    const/high16 p3, 0x43b40000    # 360.0f

    mul-float v1, v1, p3

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    int-to-float p3, p3

    mul-float v1, v1, p3

    add-float/2addr p2, v1

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX3:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->golden:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->updatePaints(F)V

    return-void
.end method

.method private updatePaints(F)V
    .locals 7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, -0x5abea

    invoke-static {v0, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    const/16 v2, -0x37c9

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    int-to-float v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->paints:[Landroid/graphics/Paint;

    array-length v6, v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v5, v4

    invoke-static {v0, p1, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setBoostViaGifsText(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingBoostsViaGifts:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingBoostsViaGifts"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoost2:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoostGroup:I

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setGiftLinkText()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkAllows:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkAllows"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGiftLinkToUserText(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingGiftLink"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/messenger/R$string;->BoostingLinkAllowsToUser:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, 0x2

    invoke-static {p2, v1, p3, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string p3, "%1$s"

    invoke-static {p3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public setStars(Z)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->golden:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    new-array v8, v1, [F

    const/4 v1, 0x0

    aput v2, v8, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->cancelIdleAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->cancelAnimatons()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startBackAnimation()V

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v5, v7

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;[FFFZ)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$4;

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;[FFFZ)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x2a8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->goldenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setUnclaimedText()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkAllowsAnyone:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkAllowsAnyone"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUsedGiftLinkText()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingUsedGiftLink:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BoostingUsedGiftLink"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingLinkUsed:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingLinkUsed"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
