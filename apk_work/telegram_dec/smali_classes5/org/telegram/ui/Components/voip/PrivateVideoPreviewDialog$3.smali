.class Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private gradientPaint:[Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$700(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)[Landroid/widget/TextView;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I

    move-result v2

    aget-object v1, v1, v2

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v6}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$200(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$200(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 23

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, -0x881aa4

    const v4, -0xa93802

    :goto_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_0
    const v3, -0x899117

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const v4, -0xfaba7

    const v5, -0x1b58aa

    goto :goto_3

    :cond_2
    :goto_2
    const v4, -0xa85b02

    const v3, -0xa85b02

    const v4, -0x899117

    goto :goto_1

    :goto_3
    new-instance v14, Landroid/graphics/LinearGradient;

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v9, v6

    filled-new-array {v3, v4, v5}, [I

    move-result-object v11

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    filled-new-array {v3, v4}, [I

    move-result-object v20

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v14

    move/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;->gradientPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v2

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
