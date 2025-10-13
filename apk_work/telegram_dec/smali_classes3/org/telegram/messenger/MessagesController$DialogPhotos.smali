.class public Lorg/telegram/messenger/MessagesController$DialogPhotos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogPhotos"
.end annotation


# static fields
.field public static final STEP:I = 0x50


# instance fields
.field public final dialogId:J

.field public fromCache:Z

.field private lastLoadCount:I

.field private lastLoadOffset:I

.field public loaded:Z

.field private loading:Z

.field public final photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public static synthetic $r8$lambda$20gOochyY6EenQye2fZhxW5ioc4(Lorg/telegram/messenger/MessagesController$DialogPhotos;Lorg/telegram/tgnet/TLRPC$messages_Messages;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$load$2(Lorg/telegram/tgnet/TLRPC$messages_Messages;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$5CTmJx-nNLYUMor9f9GOdT3w1ZA(Lorg/telegram/messenger/MessagesController$DialogPhotos;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$loadCache$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$8GydBYjKCzbsbIIx7tq8w8qIAY0(Lorg/telegram/messenger/MessagesController$DialogPhotos;Lorg/telegram/tgnet/TLRPC$photos_Photos;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$load$0(Lorg/telegram/tgnet/TLRPC$photos_Photos;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhL0QSDKKbTxzSajsg6yqmCcg5U(Lorg/telegram/messenger/MessagesController$DialogPhotos;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$load$1(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TQpFswSm-YlWaXcIwr7omi_1ii4(Lorg/telegram/messenger/MessagesController$DialogPhotos;ILjava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$loadCache$4(ILjava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTcMwjjsGURhtVQ7AqDycDuO_Pg(Lorg/telegram/messenger/MessagesController$DialogPhotos;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$saveCache$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$qlpHTE60LL6Pa6VJT6uy0nDPwow(Lorg/telegram/messenger/MessagesController$DialogPhotos;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lambda$load$3(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesController;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->fromCache:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loaded:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadOffset:I

    iput p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadCount:I

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLRPC$photos_Photos;II)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->onLoaded(IILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    return-void
.end method

.method private synthetic lambda$load$1(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p4, :cond_0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object p4, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p4, v0, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    new-instance p4, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;Lorg/telegram/tgnet/TLRPC$photos_Photos;II)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLRPC$messages_Messages;II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->count:I

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->onLoaded(IILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    return-void
.end method

.method private synthetic lambda$load$3(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p4, :cond_0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object p4, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p4}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p4, v0, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    new-instance p4, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;Lorg/telegram/tgnet/TLRPC$messages_Messages;II)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCache$4(ILjava/util/HashMap;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadOffset:I

    iput v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/16 p1, 0x50

    invoke-virtual {p0, v1, p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->load(II)V

    return-void
.end method

.method private synthetic lambda$loadCache$5()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT count FROM dialog_photos_count WHERE uid = %d"

    iget-wide v7, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_5

    :catch_0
    nop

    goto :goto_4

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v6, "SELECT num, data FROM dialog_photos WHERE uid = %d"

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v0

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    invoke-virtual {v2, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const v9, 0x56730bcc

    if-ne v8, v9, :cond_3

    :cond_2
    move-object v6, v4

    goto :goto_2

    :cond_3
    invoke-static {v6, v8, v0}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v6

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_5

    :goto_2
    if-eqz v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    nop

    move-object v4, v2

    :goto_3
    move v0, v7

    goto :goto_6

    :cond_4
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    nop

    goto :goto_3

    :catch_3
    nop

    move-object v4, v6

    goto :goto_3

    :goto_4
    move-object v4, v6

    goto :goto_6

    :catch_4
    nop

    goto :goto_6

    :goto_5
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    throw v0

    :goto_6
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    move v7, v0

    :goto_7
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, v3}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;ILjava/util/HashMap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveCache$6()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM dialog_photos WHERE uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM dialog_photos_count WHERE uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REPLACE INTO dialog_photos_count VALUES("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v2, "REPLACE INTO dialog_photos VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v0, [B

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-wide v5, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    throw v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_4
    :goto_5
    return-void
.end method

.method private onLoaded(IILorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loaded:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loading:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loaded:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->fromCache:Z

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->count:I

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->count:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    add-int v3, p1, p2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    add-int v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-object v7, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    add-int/2addr v4, v2

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_4
    iget v4, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->count:I

    if-ge v3, v4, :cond_6

    sub-int v4, v3, p1

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    if-ltz v4, :cond_4

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_6
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    add-int v5, p1, v3

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    goto :goto_6

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->saveCache()V

    iget-object p3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p3}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p3, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    const/16 p2, 0x50

    if-le p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->load(II)V

    :cond_7
    return-void
.end method

.method private removePhotoInternal(J)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method private saveCache()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addPhotoAtStart(Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public load(II)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loading:Z

    if-nez v0, :cond_4

    if-lez p2, :cond_4

    if-gez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadCount:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadOffset:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loading:Z

    iput p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadOffset:I

    iput p2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadCount:I

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loading:Z

    return-void

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;II)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;II)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public loadAfter(IZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x50

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->load(II)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_2
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    if-eqz p2, :cond_7

    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    if-gt v2, v1, :cond_6

    add-int p2, p1, v2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-lez v2, :cond_a

    :goto_3
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->load(II)V

    goto :goto_6

    :cond_7
    :goto_4
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-gt v2, v1, :cond_9

    sub-int p2, p1, v2

    if-ltz p2, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    if-lez v2, :cond_a

    sub-int/2addr p1, v2

    goto :goto_3

    :cond_a
    :goto_6
    return-void

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_c
    :goto_7
    return-void
.end method

.method public loadCache()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController$DialogPhotos;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public moveToStart(I)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->saveCache()V

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removePhoto(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->removePhotoInternal(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->saveCache()V

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadOffset:I

    iput v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->lastLoadCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$DialogPhotos;->fromCache:Z

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->saveCache()V

    return-void
.end method
