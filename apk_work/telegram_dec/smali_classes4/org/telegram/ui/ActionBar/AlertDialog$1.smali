.class Lorg/telegram/ui/ActionBar/AlertDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->inflateContent(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$d:Lorg/telegram/ui/Components/AttachableDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/AttachableDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->val$d:Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->val$d:Lorg/telegram/ui/Components/AttachableDrawable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->val$d:Lorg/telegram/ui/Components/AttachableDrawable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
