.class Lorg/telegram/messenger/pip/source/PipSourceSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final node:Landroid/graphics/RenderNode;

.field private final picture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(IILorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->picture:Landroid/graphics/Picture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p3, v1, :cond_0

    new-instance p3, Landroid/graphics/RenderNode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pip-node-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->node:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-static {p3, v1, v1, p1, p2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RecordingCanvas;Landroid/graphics/Picture;)V

    invoke-static {p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->node:Landroid/graphics/RenderNode;

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->node:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_3

    invoke-static {v0, p2}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;F)Z

    iget-object p2, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->node:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->picture:Landroid/graphics/Picture;

    if-eqz v0, :cond_3

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->picture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p2, p2, v0

    float-to-int v7, p2

    const/4 v4, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->picture:Landroid/graphics/Picture;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->node:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/RenderNode;)V

    :cond_0
    return-void
.end method
