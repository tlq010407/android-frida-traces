.class Lorg/telegram/messenger/pip/PipActivityHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/pip/PipActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/pip/PipActivityHandler;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/pip/PipActivityHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler$1;->this$0:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p2}, Lorg/telegram/messenger/pip/utils/PipActions;->isPipIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/pip/utils/PipActions;->getSourceId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/pip/utils/PipActions;->getActionId(Landroid/content/Intent;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler$1;->this$0:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/pip/PipActivityHandler;->access$000(Lorg/telegram/messenger/pip/PipActivityHandler;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
