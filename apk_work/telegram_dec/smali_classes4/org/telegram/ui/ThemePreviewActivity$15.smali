.class Lorg/telegram/ui/ThemePreviewActivity$15;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final dimPaint:Landroid/graphics/Paint;

.field private final dimPaint2:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->shadowPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint2:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/high16 v6, 0x41d80000    # 27.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/high16 v6, -0x1000000

    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v3, v3, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {p0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrixForView(Landroid/view/View;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v2, v2, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const-string v3, "paintChatActionBackground"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v4, v3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint2:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$5000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v6, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint:Landroid/graphics/Paint;

    const v3, 0x1effffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$15;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
