.class Lorg/telegram/ui/IdenticonActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->updateEmojiButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/IdenticonActivity$3;->this$0:Lorg/telegram/ui/IdenticonActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/IdenticonActivity;->access$402(Lorg/telegram/ui/IdenticonActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
