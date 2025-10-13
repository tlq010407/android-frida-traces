.class Lorg/telegram/ui/Components/FragmentContextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FragmentContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$000(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    sub-int/2addr v0, v2

    const v2, 0x15180

    if-lt v0, v2, :cond_2

    int-to-float v0, v0

    const v2, 0x47a8c000    # 86400.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Days"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatFullDuration(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$500(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->VoipChatNotify:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$700(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$800(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$402(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    return-void

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$1;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    return-void
.end method
