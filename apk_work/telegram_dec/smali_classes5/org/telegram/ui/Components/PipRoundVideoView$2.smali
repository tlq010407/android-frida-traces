.class Lorg/telegram/ui/Components/PipRoundVideoView$2;
.super Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$500(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/TextureView;

    move-result-object p4

    if-ne p2, p4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$600(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/graphics/RectF;

    move-result-object p4

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float/2addr v4, v0

    invoke-virtual {p4, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$600(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 p4, 0x43b40000    # 360.0f

    mul-float v3, p2, p4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return p3
.end method
