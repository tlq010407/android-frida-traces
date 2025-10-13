.class public Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/BotStarsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelConnectedBots"
.end annotation


# instance fields
.field public final bots:Ljava/util/ArrayList;

.field public count:I

.field public final currentAccount:I

.field public final dialogId:J

.field public endReached:Z

.field private error:Z

.field public lastRequestTime:J

.field private loading:Z

.field private reqId:I


# direct methods
.method public static synthetic $r8$lambda$fgKXC2HLOUs81OUqtZ3pKxGP-60(Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m00uTwk4k8ZPSyGGEVnSUhFKAgY(Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->lambda$load$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->error:Z

    iput p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->check()V

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->reqId:I

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->count:I

    iput v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->error:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;)V
    .locals 6

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->cancel()V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->count:I

    iput v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->error:Z

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    iget-wide v4, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->load()V

    return-void
.end method

.method public applyEdit(Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;)V
    .locals 10

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    iget-wide v7, v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    iget-boolean v5, v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v5, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    sub-int/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    iget-wide v4, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->load()V

    return-void
.end method

.method public cancel()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->reqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->reqId:I

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    return-void
.end method

.method public check()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->lastRequestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->cancel()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->load()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->error:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    return v0
.end method

.method public load()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->error:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->lastRequestTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->loading:Z

    new-instance v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v2, 0x14

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->limit:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->flags:I

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->date:I

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->offset_date:I

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBots;->offset_link:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->reqId:I

    :cond_2
    :goto_0
    return-void
.end method
