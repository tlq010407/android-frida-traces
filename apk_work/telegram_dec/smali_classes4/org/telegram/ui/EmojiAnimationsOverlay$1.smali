.class Lorg/telegram/ui/EmojiAnimationsOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EmojiAnimationsOverlay;->didReceivedNotification(II[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field final synthetic val$animation:I

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iput p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->val$messageId:I

    iput p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->val$animation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->this$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->val$messageId:I

    iget v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$1;->val$animation:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->access$000(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V

    return-void
.end method
