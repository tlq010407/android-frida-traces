.class Lorg/telegram/ui/TodoItemMenu$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v0}, Lorg/telegram/ui/TodoItemMenu;->access$1000(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v0}, Lorg/telegram/ui/TodoItemMenu;->access$1100(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v0}, Lorg/telegram/ui/TodoItemMenu;->access$1200(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->access$000(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v3}, Lorg/telegram/ui/TodoItemMenu;->access$1300(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/TodoItemMenu$2;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v5}, Lorg/telegram/ui/TodoItemMenu;->access$000(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method
