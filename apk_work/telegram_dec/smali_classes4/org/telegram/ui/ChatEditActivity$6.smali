.class Lorg/telegram/ui/ChatEditActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$6;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$6;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->access$600(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$6;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->access$1200(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$6;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->access$300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$6;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->access$300(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
