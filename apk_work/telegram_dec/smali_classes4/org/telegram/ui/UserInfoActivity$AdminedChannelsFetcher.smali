.class public Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdminedChannelsFetcher"
.end annotation


# instance fields
.field private callbacks:Ljava/util/ArrayList;

.field public final chats:Ljava/util/ArrayList;

.field public final currentAccount:I

.field public final for_personal:Z

.field public loaded:Z

.field public loading:Z


# direct methods
.method public static synthetic $r8$lambda$0JO00QyvrUlqcckzgBcSSYFLWBE(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->lambda$fetch$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rILY7YQmsg_g5DzVPsEoekM-Hg(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->lambda$fetch$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->chats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->callbacks:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->currentAccount:I

    iput-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->for_personal:Z

    return-void
.end method

.method private synthetic lambda$fetch$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->chats:Ljava/util/ArrayList;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget p1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loading:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loaded:Z

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$fetch$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loading:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->for_personal:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->for_personal:Z

    iget v1, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loaded:Z

    return-void
.end method

.method public subscribe(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->loaded:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
