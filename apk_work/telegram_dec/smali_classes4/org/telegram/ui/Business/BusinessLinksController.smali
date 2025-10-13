.class public Lorg/telegram/ui/Business/BusinessLinksController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile Instance:[Lorg/telegram/ui/Business/BusinessLinksController;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field public final currentAccount:I

.field public final links:Ljava/util/ArrayList;

.field private loaded:Z

.field private loading:Z


# direct methods
.method public static synthetic $r8$lambda$1qVQ9ynJiR5FFqAfjzo0QRgSYtU(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$editLink$12(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$72scG8Y468lh5T6A8jSPlozKRfw(Lorg/telegram/ui/Business/BusinessLinksController;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$deleteLinkUndoable$9(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8usVRA-Y8VhEnR5SGzDnV3jydWI(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$editLink$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FqMudxMXnXa3TEFaITNov83xXPw(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$createEmptyLink$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4WDLcoljIWLTYyn73mkbOJ2itU(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$createEmptyLink$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MneD0-Kbi_yJhWm2SOIgSq0NhOc(Lorg/telegram/ui/Business/BusinessLinksController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxGLnAimz403yBYkl3nUQGYJ92I(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$deleteLinkUndoable$8(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsg-rNQlRxtwTTvrtH-qg5HBAg8(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$load$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVJNAGu2jWJMqiCxyRgbyRcVKGQ(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$saveToCache$10(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j7UYbLhU__0KPLLviNomhzQlpEI(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$load$1(Lorg/telegram/messenger/MessagesStorage;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzTnnLvt4YUVZBErvCxFr9ZrOcM(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lqS1QggZnXLFV2xrEgOiUu4HtG8(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$deleteLinkUndoable$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-hgflHdA_TOBDCphug8nzdbLpo(Lorg/telegram/ui/Business/BusinessLinksController;ILorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->lambda$deleteLinkUndoable$6(ILorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Business/BusinessLinksController;

    sput-object v1, Lorg/telegram/ui/Business/BusinessLinksController;->Instance:[Lorg/telegram/ui/Business/BusinessLinksController;

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/ui/Business/BusinessLinksController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/telegram/ui/Business/BusinessLinksController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loaded:Z

    iput p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    return-void
.end method

.method private editLink(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;->slug:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    :cond_0
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->flags:I

    :cond_1
    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;->link:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    iget p2, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/ui/Business/BusinessLinksController;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Business/BusinessLinksController;->Instance:[Lorg/telegram/ui/Business/BusinessLinksController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Business/BusinessLinksController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Business/BusinessLinksController;->Instance:[Lorg/telegram/ui/Business/BusinessLinksController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Business/BusinessLinksController;->Instance:[Lorg/telegram/ui/Business/BusinessLinksController;

    new-instance v2, Lorg/telegram/ui/Business/BusinessLinksController;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessLinksController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private synthetic lambda$createEmptyLink$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->businessLinkCreated:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessLinksController;->saveToCache()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createEmptyLink$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deleteLinkUndoable$6(ILorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$deleteLinkUndoable$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessLinksController;->saveToCache()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected response from server!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteLinkUndoable$8(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deleteLinkUndoable$9(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$deleteBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$deleteBusinessChatLink;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$deleteBusinessChatLink;->slug:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$editLink$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessLinksController;->saveToCache()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$editLink$12(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iput-boolean p3, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loading:Z

    invoke-direct {p0, p3, p4}, Lorg/telegram/ui/Business/BusinessLinksController;->load(ZZ)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "SELECT data FROM business_links ORDER BY order_value ASC"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v1, v5, v6}, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v9, v8, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v8, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    iget-object v10, v8, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v11, :cond_1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:J

    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_4

    :cond_1
    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v11, :cond_2

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    goto :goto_3

    :goto_4
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ","

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7
    new-instance p1, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda3;

    move-object v0, p1

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_8
    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$businessChatLinks;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessLinksController;->saveToCache()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected response from server!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loading:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loaded:Z

    return-void
.end method

.method private synthetic lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$saveToCache$10(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "DELETE FROM business_links"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v1, "REPLACE INTO business_links VALUES(?, ?)"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private load(ZZ)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loaded:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loading:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/messenger/MessagesStorage;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getBusinessChatLinks;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getBusinessChatLinks;-><init>()V

    iget p2, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private saveToCache()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stripHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public canAddNew()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->businessChatLinksLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createEmptyLink()V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$createBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$createBusinessChatLink;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$createBusinessChatLink;->link:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->message:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public deleteLinkUndoable(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->findLink(Ljava/lang/String;)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/ui/Business/BusinessLinksController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->businessLinksUpdated:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->BusinessLinkDeleted:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;ILorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    new-instance v1, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, v0}, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/BusinessLinksController;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;)V

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2, v3, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public editLinkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->findLink(Ljava/lang/String;)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->message:Ljava/lang/String;

    iput-object p3, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->title:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->title:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4}, Lorg/telegram/ui/Business/BusinessLinksController;->editLink(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;Ljava/lang/Runnable;)V

    return-void
.end method

.method public editLinkTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->findLink(Ljava/lang/String;)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->message:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->message:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->entities:Ljava/util/ArrayList;

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->title:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Business/BusinessLinksController;->editLink(Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;Ljava/lang/Runnable;)V

    return-void
.end method

.method public findLink(Ljava/lang/String;)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://t.me/m/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tg://message?slug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Z)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksController;->loaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Business/BusinessLinksController;->load(ZZ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Business/BusinessLinksController;->load(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
