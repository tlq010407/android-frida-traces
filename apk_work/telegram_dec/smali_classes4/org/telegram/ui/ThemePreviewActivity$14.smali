.class Lorg/telegram/ui/ThemePreviewActivity$14;
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
.field private final colorFilter:Landroid/graphics/ColorFilter;

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientHeight:I

.field private final gradientPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;

.field final synthetic val$drawShadow:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iput-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->val$drawShadow:Z

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradientPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const p2, 0x3ecccccd    # 0.4f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p2, 0x3f266666    # 0.65f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->val$drawShadow:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/16 v9, 0xff

    const/16 v10, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v2, v2, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {p0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrixForView(Landroid/view/View;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object v1, v1, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const-string v2, "paintChatActionBackground"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$3000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x3ea8f5c3    # 0.33f

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v6, v4

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradientHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradientHeight:I

    int-to-float v7, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v8

    const/4 v2, 0x2

    new-array v9, v2, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
