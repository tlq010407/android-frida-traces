.class Lorg/telegram/ui/EmojiAnimationsOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EmojiAnimationsOverlay;->onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field final synthetic val$bulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method constructor <init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$2;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$2;->val$bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$2;->val$bulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$2;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    return-void
.end method
