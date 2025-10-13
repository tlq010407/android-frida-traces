.class public Lorg/telegram/ui/Components/ItemOptions$DimView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimView"
.end annotation


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurPaint:Landroid/graphics/Paint;

.field private final bounds:Landroid/graphics/RectF;

.field private final cachedBitmap:Landroid/graphics/Bitmap;

.field private final cachedBitmapPaint:Landroid/graphics/Paint;

.field public final clipBottom:F

.field private final clipPath:Landroid/graphics/Path;

.field public final clipTop:F

.field private final dim:I

.field public dimProgress:F

.field private moveToX:F

.field private moveToY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;


# direct methods
.method public static synthetic $r8$lambda$b0_r3LbQfISkkM6tyqUsf3z-y0w(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->lambda$new$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1100(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x42880000    # 68.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1200(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dim:I

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1300(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1400(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1600(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$DimView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ItemOptions$DimView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    :cond_3
    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ItemOptions$DimView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ItemOptions$DimView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ItemOptions$DimView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ItemOptions$DimView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v3, v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dim:I

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1300(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_13

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v6, v6, v4

    add-float/2addr v2, v6

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1600(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v7, v5, v7

    goto :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    mul-float v6, v6, v7

    sub-float/2addr v2, v6

    add-float/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1100(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1800(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v5

    invoke-static {v0, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v2

    aget v2, v2, v4

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    :goto_2
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v2

    aget v2, v2, v4

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    :goto_4
    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v0

    if-lez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v5}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v4, v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->cachedBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1100(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v7

    aget v7, v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1600(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v8, v5, v8

    goto :goto_7

    :cond_b
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_7
    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v5

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-static {v6, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipBottom:F

    iget v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v10, v5, v10

    mul-float v9, v9, v10

    sub-float/2addr v8, v9

    :goto_8
    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v7

    aget v7, v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipTop:F

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1600(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    sub-float v8, v5, v8

    goto :goto_9

    :cond_d
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_9
    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    goto :goto_8

    :cond_e
    :goto_a
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1100(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1800(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v3, v6, v3

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToX:F

    invoke-static {v3, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v4, v6, v4

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->moveToY:F

    invoke-static {v4, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    :goto_b
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v3, v6, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v6

    aget v4, v6, v4

    goto :goto_b

    :goto_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$2200(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$2300(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$2200(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$2300(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    invoke-static {v4, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    :goto_d
    int-to-float v0, v0

    goto :goto_e

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_d

    :goto_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v10}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v10}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v10}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v11}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v11}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    :goto_f
    add-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_10

    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v10}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_f

    :goto_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    if-gtz v4, :cond_13

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v4

    if-lez v4, :cond_15

    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz v4, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    invoke-interface {v2, v4}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->getBounds(Landroid/graphics/RectF;)V

    goto :goto_11

    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v2, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_11
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v8, v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v8}, Lorg/telegram/ui/Components/ItemOptions;->access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->bounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v9}, Lorg/telegram/ui/Components/ItemOptions;->access$2000(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v9, v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v6}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v6, v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v7}, Lorg/telegram/ui/Components/ItemOptions;->access$2100(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v7, v7, v8

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$2200(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$2300(Lorg/telegram/ui/Components/ItemOptions;)I

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    move-object v7, p0

    move-object v8, p1

    move v9, v3

    move v10, v0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_6

    :cond_16
    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v2, v2, v1

    float-to-int v11, v2

    const/4 v8, 0x0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, p1

    move v9, v3

    move v10, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    const v2, 0x3f666666    # 0.9f

    invoke-static {v5, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v3, v2

    div-float v2, v0, v2

    invoke-virtual {p1, v1, v1, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget v11, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    mul-float v0, v0, v1

    float-to-int v7, v0

    const/4 v4, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->drawScrim(Landroid/graphics/Canvas;F)V

    goto :goto_12

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12

    :cond_19
    :goto_13
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
