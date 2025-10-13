.class public Lorg/telegram/ui/Components/voip/VoIpHintView;
.super Lorg/telegram/ui/Stories/recorder/HintView2;
.source "SourceFile"


# instance fields
.field private final backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field private final mainPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->mainPaint:Landroid/graphics/Paint;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->attach(Landroid/view/View;)V

    new-instance p3, Landroid/graphics/CornerPathEffect;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {p3, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setDarkTranslation(FF)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBgPath(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->mainPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v4, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->isReveal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->mainPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDarkPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpHintView;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
