.class Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://fragment.com/username/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1100(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
