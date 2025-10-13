.class public Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;
.super Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherWidget"
.end annotation


# instance fields
.field private final marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

.field private final mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

.field private parentView:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;-><init>()V

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->emoji:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->temperature_c:D

    double-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    new-instance v1, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;-><init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;Landroid/content/Context;IFILorg/telegram/ui/Stories/StoryWidgetsImageDecorator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setIsVideo(Z)V

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setCodeEmoji(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->color:I

    const/4 p2, 0x3

    invoke-virtual {v1, p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setupLayout()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->parentView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;F)V
    .locals 12

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    iget p3, p2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageX:F

    float-to-double v0, p3

    iget p3, p2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageW:F

    float-to-double v2, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v4, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageY:F

    float-to-double v4, v1

    iget p2, p2, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageH:F

    float-to-double v8, p2

    iget-wide v10, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    div-double/2addr v10, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v10

    double-to-float p2, v4

    iget-wide v4, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    div-double/2addr v2, v6

    double-to-float v1, v2

    iget-wide v2, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    div-double/2addr v8, v6

    double-to-float p3, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getWidthInternal()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getHeightInternal()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr p3, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v1, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    const-wide/16 v3, 0x0

    cmpl-double p3, v1, v3

    if-eqz p3, :cond_0

    double-to-float p3, v1

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    neg-int p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->drawInternal(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAttachedToWindow(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->attachInternal()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->detachInternal()V

    :goto_0
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->parentView:Landroid/view/View;

    return-void
.end method
