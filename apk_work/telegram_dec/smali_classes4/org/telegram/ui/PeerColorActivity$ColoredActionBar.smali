.class public Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColoredActionBar"
.end annotation


# instance fields
.field private backgroundGradient:Landroid/graphics/LinearGradient;

.field private backgroundGradientColor1:I

.field private backgroundGradientColor2:I

.field private backgroundGradientHeight:I

.field private final backgroundPaint:Landroid/graphics/Paint;

.field public color1:I

.field private final color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field public color2:I

.field private final color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private defaultColor:I

.field protected ignoreMeasure:Z

.field public isDefault:Z

.field private progressToGradient:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x15e

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->defaultColor:I

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradient:Landroid/graphics/LinearGradient;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientColor1:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientColor2:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v2, v5, :cond_1

    :cond_0
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientHeight:I

    int-to-float v10, v5

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientColor2:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradientColor1:I

    filled-new-array {v1, v0}, [I

    move-result-object v11

    const/4 v0, 0x2

    new-array v12, v0, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->onUpdateColor()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->defaultColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    cmpl-float v1, v0, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getActionBarButtonColor()I
    .locals 3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->isDefault:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getTabsViewBackgroundColor()I
    .locals 7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v2, -0x425c28f6    # -0.08f

    const v3, 0x3da3d70a    # 0.08f

    const v4, 0x3f389375    # 0.721f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v5

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-static {v1, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedColor;->get()I

    move-result v4

    invoke-static {v1, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v1

    :goto_1
    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->ignoreMeasure:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v0, 0x43100000    # 144.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onUpdateColor()V
    .locals 0

    return-void
.end method

.method public setColor(IIZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p3}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    return-void
.end method

.method public setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->isDefault:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->isDefault:Z

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2:I

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor1(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor2(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2:I

    :goto_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color1:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->color2:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToGradient(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->progressToGradient:F

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->onUpdateColor()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->defaultColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->onUpdateColor()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
