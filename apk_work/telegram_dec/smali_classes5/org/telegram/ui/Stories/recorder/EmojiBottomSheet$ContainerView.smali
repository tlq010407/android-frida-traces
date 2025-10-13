.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private final backgroundBlurPaint:Landroid/graphics/Paint;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private final handlePaint:Landroid/graphics/Paint;

.field private final handleRect:Landroid/graphics/RectF;

.field private final isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private overStatusBar:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    return-void
.end method

.method private setupBlurBitmap()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x10

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x10

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f59999a    # 0.85f

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v4

    instance-of v6, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    check-cast v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->top()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v8, v2, v8

    invoke-static {v8, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v8

    mul-float v7, v7, v8

    invoke-static {v6, v7}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7516(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->updateTops()V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->isActionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-static {v6, v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v9, v5

    int-to-float v5, v9

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v7, 0x41600000    # 14.0f

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v5, v3, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    iget v3, v6, Landroid/graphics/RectF;->top:F

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    const/4 v8, 0x1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->overStatusBar:Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v3, :cond_9

    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->overStatusBar:Ljava/lang/Boolean;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v3

    const v9, 0x3f389375    # 0.721f

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-static {v5, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_9
    sub-float/2addr v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    const v7, 0x411a8f5c    # 9.66f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v8, v3

    int-to-float v3, v8

    div-float/2addr v3, v5

    const v5, 0x415a8f5c    # 13.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    const v1, 0x51838383

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42a20000    # 81.0f

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handleRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$7500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->backgroundBlurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->setupBlurBitmap()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f0ccccd    # 0.55f

    div-float/2addr v2, v3

    mul-float v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
