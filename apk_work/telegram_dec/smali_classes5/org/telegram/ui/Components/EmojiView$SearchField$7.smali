.class Lorg/telegram/ui/Components/EmojiView$SearchField$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$3002(Lorg/telegram/ui/Components/EmojiView;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$7;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$3002(Lorg/telegram/ui/Components/EmojiView;Z)Z

    :cond_2
    :goto_0
    return v0
.end method
