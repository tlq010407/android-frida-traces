.class Lorg/telegram/ui/MessageSendPreview$12;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$12;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$12;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$12;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getProgress()F

    move-result p1

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$12;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setLoading(ZF)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$12;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->isIdle()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
