.class final Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProgressView"
.end annotation


# instance fields
.field private bufferPaint:Landroid/graphics/Paint;

.field private progressPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$5200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$5300(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$5400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    int-to-float v5, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$5400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    mul-float v0, v0, v4

    add-float v7, v5, v0

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->bufferPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v3

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    int-to-float v5, v1

    int-to-float v7, v2

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v3

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
