.class Lorg/telegram/ui/SecretVoicePlayer$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretVoicePlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/SecretVoicePlayer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->clipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$800(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$900(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->clipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$800(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$800(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1100(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$800(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$800(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v2}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1100(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$2;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0
.end method
