.class Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatActionCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLayout"
.end annotation


# instance fields
.field public emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field public layout:Landroid/text/StaticLayout;

.field public paint:Landroid/text/TextPaint;

.field public final patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

.field public spoilers:Ljava/util/List;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatActionCell;

.field public width:I

.field public x:F

.field public y:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v4, v0, v4, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 9

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->paint:Landroid/text/TextPaint;

    iput p3, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->width:I

    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->access$000(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->access$000(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v4, 0x0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->attach()V

    return-void
.end method
