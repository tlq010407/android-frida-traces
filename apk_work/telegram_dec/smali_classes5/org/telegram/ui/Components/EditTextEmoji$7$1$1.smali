.class Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji$7$1;->getVisibleDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/EditTextEmoji$7$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji$7$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;->this$2:Lorg/telegram/ui/Components/EditTextEmoji$7$1;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;->this$2:Lorg/telegram/ui/Components/EditTextEmoji$7$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;->this$2:Lorg/telegram/ui/Components/EditTextEmoji$7$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeParent()V

    return-void
.end method
