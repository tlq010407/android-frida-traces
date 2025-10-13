.class Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private bgPath:Landroid/graphics/Path;

.field private lightStatusBarFull:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3400(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->applyDefaultShadow(Landroid/graphics/Paint;)V

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->lightStatusBarFull:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->lightStatusBarFull:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3600(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3700(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result p1

    const/high16 v1, 0x33000000

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v1, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$000(Lorg/telegram/ui/Components/TranslateAlert2;)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    div-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3500(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->setTranslationY(F)V

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->updateLightStatusBar(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v3, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v4, v0, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$ContainerView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$000(Lorg/telegram/ui/Components/TranslateAlert2;)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
