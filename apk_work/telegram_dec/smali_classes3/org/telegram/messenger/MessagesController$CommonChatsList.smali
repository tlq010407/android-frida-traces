.class public Lorg/telegram/messenger/MessagesController$CommonChatsList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonChatsList"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public final currentAccount:I

.field public currentRequestId:I

.field public final dialogId:J

.field public endReached:Z

.field public loading:Z

.field public shown:Z

.field public totalCount:I


# direct methods
.method public static synthetic $r8$lambda$UjUYpkpE84EfrxdnGmV7iS7HKpQ(Lorg/telegram/messenger/MessagesController$CommonChatsList;[ILorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEYxLBNChsBZ_l0R8-5jqnGxvV4(Lorg/telegram/messenger/MessagesController$CommonChatsList;[IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController$CommonChatsList;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    iput p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->dialogId:J

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->load()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget p1, p1, v1

    iget v2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->loading:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    iget p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatsSlice;

    if-eqz p1, :cond_2

    iget p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->count:I

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->totalCount:I

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->totalCount:I

    if-lt p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->endReached:Z

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->endReached:Z

    :goto_2
    iget p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->commonChatsLoaded:I

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p0, v2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/messenger/MessagesController$CommonChatsList$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesController$CommonChatsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController$CommonChatsList;[ILorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->loading:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->totalCount:I

    return v0
.end method

.method public invalidate(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->loading:Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->endReached:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->shown:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$CommonChatsList;->load()V

    :cond_2
    return-void
.end method

.method public load()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->loading:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;-><init>()V

    iget v3, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_0
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->max_id:J

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    goto :goto_1

    :cond_2
    const/16 v3, 0x1e

    :goto_1
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->limit:I

    new-array v1, v1, [I

    iget v3, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$CommonChatsList$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/messenger/MessagesController$CommonChatsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController$CommonChatsList;[IZ)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController$CommonChatsList;->currentRequestId:I

    const/4 v2, 0x0

    aput v0, v1, v2

    :cond_3
    :goto_2
    return-void
.end method
