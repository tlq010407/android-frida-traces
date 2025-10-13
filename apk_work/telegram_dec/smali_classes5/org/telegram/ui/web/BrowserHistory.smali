.class public abstract Lorg/telegram/ui/web/BrowserHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/BrowserHistory$Entry;
    }
.end annotation


# static fields
.field private static callbacks:Ljava/util/ArrayList;

.field private static history:Ljava/util/ArrayList;

.field private static historyById:Landroid/util/LongSparseArray;

.field public static historyLoaded:Z

.field public static historyLoading:Z


# direct methods
.method public static synthetic $r8$lambda$Kuxe_91qzCM0G3KWDE6i3os2I0k()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->saveHistory()V

    return-void
.end method

.method public static synthetic $r8$lambda$XLggRB-9xRVBOZxQbci8KT9Gp2I()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->lambda$preloadHistory$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dRU362fkhJ4Ahr_Zn4AAc3sHuCE()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->lambda$saveHistory$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$t5XNsDGR4uk9GQQTvfDDerHU1uc(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BrowserHistory;->lambda$preloadHistory$0(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public static clearHistory()V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->historyById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistoryFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getHistory()Ljava/util/ArrayList;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->getHistory(Lorg/telegram/messenger/Utilities$Callback;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getHistory(Lorg/telegram/messenger/Utilities$Callback;)Ljava/util/ArrayList;
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/web/BrowserHistory;->historyLoaded:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/BrowserHistory;->callbacks:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->preloadHistory()V

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getHistoryFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "webhistory.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$preloadHistory$0(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 6

    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/telegram/ui/web/BrowserHistory;->historyById:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lorg/telegram/ui/web/BrowserHistory;->historyLoaded:Z

    sput-boolean v1, Lorg/telegram/ui/web/BrowserHistory;->historyLoading:Z

    sget-object p1, Lorg/telegram/ui/web/BrowserHistory;->callbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lorg/telegram/ui/web/BrowserHistory;->callbacks:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private static synthetic lambda$preloadHistory$1()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistoryFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    :goto_0
    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    new-instance v8, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-direct {v8}, Lorg/telegram/ui/web/BrowserHistory$Entry;-><init>()V

    invoke-virtual {v8, v3, v2}, Lorg/telegram/ui/web/BrowserHistory$Entry;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v9, v8, Lorg/telegram/ui/web/BrowserHistory$Entry;->id:J

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v2, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$saveHistory$2()V
    .locals 6

    :try_start_0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistoryFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v1, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/telegram/tgnet/SerializedData;-><init>(Z)V

    invoke-virtual {v3, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    sget-object v4, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/web/BrowserHistory$Entry;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v3}, Lorg/telegram/tgnet/SerializedData;->length()I

    move-result v3

    invoke-direct {v4, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v4, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    sget-object v1, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/web/BrowserHistory$Entry;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static preloadHistory()V
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/web/BrowserHistory;->historyLoading:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/web/BrowserHistory;->historyLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/web/BrowserHistory;->historyLoading:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/BrowserHistory;->historyById:Landroid/util/LongSparseArray;

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static pushHistory(Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 3

    if-eqz p0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->preloadHistory()V

    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->historyById:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lorg/telegram/ui/web/BrowserHistory$Entry;->id:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BrowserHistory$Entry;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    iput-object p0, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/web/BrowserHistory;->historyById:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lorg/telegram/ui/web/BrowserHistory$Entry;->id:J

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->scheduleHistorySave()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static saveHistory()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static scheduleHistorySave()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/web/BrowserHistory$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
