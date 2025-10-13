.class public Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;
.super Lorg/telegram/messenger/ImageReceiver$Decorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;,
        Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;,
        Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;
    }
.end annotation


# instance fields
.field drawingObjects:Ljava/util/ArrayList;

.field imageH:F

.field imageW:F

.field imageX:F

.field imageY:F


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver$Decorator;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;-><init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;)V

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;-><init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;->onAttachedToWindow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWidnow()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageW:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageX:F

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageY:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;

    invoke-virtual {v2, p1, p2, v0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
