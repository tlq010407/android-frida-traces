.class Lorg/telegram/ui/DialogsActivity$11$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$11;->onScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$11;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$11$1;->this$1:Lorg/telegram/ui/DialogsActivity$11;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$11$1;->this$1:Lorg/telegram/ui/DialogsActivity$11;

    iget-object v0, p1, Lorg/telegram/ui/DialogsActivity$11;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$11;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    return-void
.end method
