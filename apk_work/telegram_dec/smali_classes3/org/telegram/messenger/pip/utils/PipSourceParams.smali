.class public Lorg/telegram/messenger/pip/utils/PipSourceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final position:Landroid/graphics/Rect;

.field private final ratio:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->ratio:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureParams$Builder;
    .locals 9

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->ratio:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-lez v2, :cond_2

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-double v1, v2

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    const/16 v7, 0x64

    cmpg-double v8, v1, v5

    if-gez v8, :cond_0

    new-instance v1, Landroid/util/Rational;

    const/16 v2, 0x2d

    invoke-direct {v1, v2, v7}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    :cond_0
    const-wide v5, 0x4002cccccccccccdL    # 2.35

    cmpl-double v8, v1, v5

    new-instance v1, Landroid/util/Rational;

    if-lez v8, :cond_1

    const/16 v2, 0xeb

    invoke-direct {v1, v2, v7}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->ratio:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v5, v2}, Landroid/util/Rational;-><init>(II)V

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    invoke-static {v0, v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    goto :goto_1

    :cond_2
    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    invoke-static {v0, v4}, Lorg/telegram/messenger/pip/utils/PipSourceParams$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline13;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    goto :goto_2

    :cond_4
    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline13;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    :goto_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getPosition(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->ratio:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPosition(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->position:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setRatio(II)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/PipSourceParams;->ratio:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x1

    return p1
.end method
