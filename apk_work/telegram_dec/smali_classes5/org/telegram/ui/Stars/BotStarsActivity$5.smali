.class Lorg/telegram/ui/Stars/BotStarsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/BotStarsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/BotStarsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$200(Lorg/telegram/ui/Stars/BotStarsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    iget-wide v1, v1, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getAvailableBalance(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_0
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$302(Lorg/telegram/ui/Stars/BotStarsActivity;J)J

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$300(Lorg/telegram/ui/Stars/BotStarsActivity;)J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$302(Lorg/telegram/ui/Stars/BotStarsActivity;J)J

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$402(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$000(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$300(Lorg/telegram/ui/Stars/BotStarsActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$000(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$000(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$402(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$300(Lorg/telegram/ui/Stars/BotStarsActivity;)J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v2, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$502(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$600(Lorg/telegram/ui/Stars/BotStarsActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$600(Lorg/telegram/ui/Stars/BotStarsActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$400(Lorg/telegram/ui/Stars/BotStarsActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity$5;->this$0:Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-static {p1, v4}, Lorg/telegram/ui/Stars/BotStarsActivity;->access$502(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z

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
