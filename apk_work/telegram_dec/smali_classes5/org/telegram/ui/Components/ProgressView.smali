.class public Lorg/telegram/ui/Components/ProgressView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentProgress:F

.field public height:I

.field private innerPaint:Landroid/graphics/Paint;

.field private outerPaint:Landroid/graphics/Paint;

.field public progressHeight:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v5, v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/ProgressView;->width:I

    int-to-float v6, v3

    add-float v7, v0, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/ProgressView;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ProgressView;->progressHeight:F

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/ProgressView;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    mul-float v5, v2, v3

    add-float v6, v0, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ProgressView;->currentProgress:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setProgressColors(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
