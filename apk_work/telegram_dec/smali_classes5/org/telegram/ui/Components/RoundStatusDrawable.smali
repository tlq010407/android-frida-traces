.class public Lorg/telegram/ui/Components/RoundStatusDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "SourceFile"


# instance fields
.field private currentPaint:Landroid/graphics/Paint;

.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private progressDirection:I

.field private started:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->currentPaint:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method private update()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    const-wide/16 v0, 0x32

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    iget v1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    int-to-long v4, v1

    mul-long v4, v4, v2

    long-to-float v2, v4

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    if-lez v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    iput v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    iput v1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->currentPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41100000    # 9.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/RoundStatusDrawable;->update()V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->currentPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIsChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    return-void
.end method
