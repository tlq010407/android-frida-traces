.class Lorg/telegram/ui/Components/AnimatedNumberLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedNumberLayout;->setNumber(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedNumberLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedNumberLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout$2;->this$0:Lorg/telegram/ui/Components/AnimatedNumberLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout$2;->this$0:Lorg/telegram/ui/Components/AnimatedNumberLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedNumberLayout;->access$202(Lorg/telegram/ui/Components/AnimatedNumberLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout$2;->this$0:Lorg/telegram/ui/Components/AnimatedNumberLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedNumberLayout;->access$300(Lorg/telegram/ui/Components/AnimatedNumberLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
