.class Lorg/telegram/ui/Stories/recorder/CaptionStory$1;
.super Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionStory;->roundButtonTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionStory;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionStory;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected receivedAmplitude(D)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setAmplitude(D)V

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stop()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionStory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->access$100(Lorg/telegram/ui/Stories/recorder/CaptionStory;ZZ)V

    :cond_0
    return-void
.end method
