.class Lorg/telegram/ui/Components/AnimatedEmojiSpan$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;->animateChanges(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$3;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$3;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->access$302(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
