.class public Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/BotStarsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSuggestedBots"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;
    }
.end annotation


# instance fields
.field public final bots:Ljava/util/ArrayList;

.field public count:I

.field public final currentAccount:I

.field public final dialogId:J

.field public endReached:Z

.field private error:Z

.field private lastOffset:Ljava/lang/String;

.field public lastRequestTime:J

.field private loading:Z

.field private reqId:I

.field private sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;


# direct methods
.method public static synthetic $r8$lambda$3RezTmN7prcY4U9Gveth8gZwqu4(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lambda$load$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzG6Cc7bHzlkZWKyxHqnQA1gh38(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_PROFITABILITY:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->error:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastOffset:Ljava/lang/String;

    iput p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->check()V

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->count:I

    iput v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->suggested_bots:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->next_offset:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastOffset:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_payments$suggestedStarRefBots;->suggested_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->endReached:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->error:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->endReached:Z

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->reqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->reqId:I

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    return-void
.end method

.method public check()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastRequestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->cancel()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->load()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->endReached:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->error:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastRequestTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastOffset:Ljava/lang/String;

    return-void
.end method

.method public getSort()Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    return v0
.end method

.method public load()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->error:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastRequestTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->loading:Z

    new-instance v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v2, 0x14

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->limit:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    sget-object v3, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_DATE:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->order_by_date:Z

    sget-object v3, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_REVENUE:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->order_by_revenue:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastOffset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->lastOffset:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_payments$getSuggestedStarRefBots;->offset:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v0, ""

    goto :goto_2

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_4
    return-void
.end method

.method public reload()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->cancel()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->load()V

    return-void
.end method

.method public remove(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSort(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->sorting:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->reload()V

    :cond_0
    return-void
.end method
