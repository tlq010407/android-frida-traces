.class Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;
.super Lorg/telegram/ui/Components/Paint/Views/LocationMarker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;-><init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;

.field final synthetic val$this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;Landroid/content/Context;IFILorg/telegram/ui/Stories/StoryWidgetsImageDecorator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;->this$1:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;

    iput-object p6, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;->val$this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;IFI)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;->this$1:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->access$000(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget$1;->this$1:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;->access$000(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
