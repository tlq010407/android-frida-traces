.class public Lorg/telegram/messenger/ChatObject$Call$InvitedUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChatObject$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitedUser"
.end annotation


# instance fields
.field public calling:Z

.field public msg_id:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(I)Lorg/telegram/messenger/ChatObject$Call$InvitedUser;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;

    invoke-direct {v0}, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;-><init>()V

    iput p0, v0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->msg_id:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->calling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->startTime:J

    return-object v0
.end method


# virtual methods
.method public isCalling()Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->calling:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
