.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    return-void
.end method
