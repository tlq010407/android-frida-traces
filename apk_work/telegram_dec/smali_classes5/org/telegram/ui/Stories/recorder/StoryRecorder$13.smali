.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;
.super Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected customBlur()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v0

    return v0
.end method

.method protected drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->path:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->path:Landroid/graphics/Path;

    sget-object p8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p5, p3, p4, p4, p8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p2, p6, p7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSwitchToStory(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V

    :cond_0
    return-void
.end method
