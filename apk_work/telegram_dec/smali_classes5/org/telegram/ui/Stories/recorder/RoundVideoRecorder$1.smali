.class Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;
.super Lorg/telegram/messenger/camera/CameraView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final circlePath:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;ZZ)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->circlePath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected receivedAmplitude(D)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->receivedAmplitude(D)V

    return-void
.end method

.method protected square()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
