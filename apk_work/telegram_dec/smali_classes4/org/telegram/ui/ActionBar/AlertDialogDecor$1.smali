.class Lorg/telegram/ui/ActionBar/AlertDialogDecor$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialogDecor;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialogDecor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialogDecor;->access$400(Lorg/telegram/ui/ActionBar/AlertDialogDecor;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialogDecor;->access$400(Lorg/telegram/ui/ActionBar/AlertDialogDecor;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-interface {p1, v0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
