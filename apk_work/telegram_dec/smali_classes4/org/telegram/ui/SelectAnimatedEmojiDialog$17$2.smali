.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->onLongClickRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$2;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17$2;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method
