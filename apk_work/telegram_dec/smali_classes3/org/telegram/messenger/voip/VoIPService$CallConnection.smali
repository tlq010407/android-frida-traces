.class public Lorg/telegram/messenger/voip/VoIPService$CallConnection;
.super Landroid/telecom/Connection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    const/16 p1, 0x80

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$CallConnection$$ExternalSyntheticApiModelOutline0;->m(Landroid/telecom/Connection;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$CallConnection$$ExternalSyntheticApiModelOutline1;->m(Landroid/telecom/Connection;Z)V

    return-void
.end method


# virtual methods
.method public onAnswer()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2700(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionService call audio state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConnectionService onCallEvent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectionService onDisconnect"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-static {p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticApiModelOutline3;->m(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticApiModelOutline4;->m(Landroid/telecom/Connection;)V

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->access$2602(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/VoIPService$CallConnection;)Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void
.end method

.method public onReject()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->access$2802(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onShowIncomingCallUi()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2900(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public onSilence()V
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "onSlience"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionService onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$CallConnection$$ExternalSyntheticApiModelOutline2;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$3000(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->deleteConnectionServiceContact()V

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->access$3102(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    :cond_1
    return-void
.end method
