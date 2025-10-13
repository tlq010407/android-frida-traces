.class Lorg/telegram/messenger/ImageLoader$HttpImageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private canRetry:Z

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private httpConnection:Ljava/net/HttpURLConnection;

.field private imageSize:J

.field private lastProgressTime:J

.field private overrideUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$-kzbON1K01qS3tdb0QMBK7a6XHA(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BfF3_5ijkKTQgM14vOSEF023UNA(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pk0FlwVyKqSubLptHbxul53Zr58(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$RUXGjLllLi1iRs5ugwl8sGXXZoo(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$reportProgress$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cv6vUIEcOP54Auh2HI4OW-QaCg0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$doInBackground$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hF65VetiCGDabfk_9Bt1nNs_AEw(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$l57N7QVG6MUiSqUjZSPirbGSOVQ(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$reportProgress$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o30scw39mDXYAuieKwsTLorW2uo(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$xwqgPak6f4mVcGgTCjEEIoxMMpg(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;ILjava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    int-to-long p1, p3

    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->overrideUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iput-wide p3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    return-wide v0
.end method

.method private static synthetic lambda$doInBackground$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onCancelled$6()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    return-void
.end method

.method private synthetic lambda$onCancelled$7()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v3

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCancelled$8()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$3(Ljava/lang/Boolean;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    aput-object v4, v2, v0

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v0

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onPostExecute$4(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    return-void
.end method

.method private synthetic lambda$reportProgress$0(JJ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v2, p3, p4

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const/4 p1, 0x2

    aput-object p2, p3, p1

    invoke-virtual {v0, v1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$reportProgress$1(JJ)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v3, 0x1

    aput-wide p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda6;

    move-object v4, v0

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reportProgress(JJ)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x64

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    .line 0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_a

    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    const-string v3, "https://static-maps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://maps.googleapis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/WebFile;

    if-eqz v3, :cond_2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    iget-object v3, v3, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->overrideUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object p1, v4

    :cond_3
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v3

    move-object v11, v3

    move-object v3, p1

    move-object p1, v11

    :goto_1
    instance-of v4, p1, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_4

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_4
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    instance-of v4, p1, Ljava/net/SocketException;

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ECONNRESET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_5

    :cond_6
    instance-of v4, p1, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_8

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    :cond_7
    :goto_4
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    instance-of v4, p1, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_9

    :goto_5
    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    :goto_6
    invoke-static {p1, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    move-object p1, v3

    goto :goto_7

    :cond_a
    move-object p1, v1

    :goto_7
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_10

    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_b

    const/16 v4, 0xca

    if-eq v3, v4, :cond_b

    const/16 v4, 0x130

    if-eq v3, v4, :cond_b

    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v3

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_b
    :goto_8
    iget-wide v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_c

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_c

    :try_start_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v4, "content-Length"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    if-eqz p1, :cond_10

    const/16 v3, 0x2000

    :try_start_4
    new-array v3, v3, [B

    const/4 v4, 0x0

    :cond_d
    :goto_a
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_e

    goto :goto_e

    :cond_e
    :try_start_5
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_f

    add-int/2addr v4, v7

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3, v2, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v7, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_d

    int-to-long v9, v4

    invoke-direct {p0, v9, v10, v7, v8}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(JJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_b

    :cond_f
    const/4 v3, -0x1

    if-ne v7, v3, :cond_10

    :try_start_6
    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_11

    invoke-direct {p0, v2, v3, v2, v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(JJ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    goto :goto_d

    :catch_3
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    :goto_b
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_c
    move v0, v2

    goto :goto_f

    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_10
    :goto_e
    const/4 v0, 0x0

    :cond_11
    :goto_f
    :try_start_8
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_10
    :try_start_9
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_11

    :catchall_5
    nop

    :cond_13
    :goto_11
    if-eqz p1, :cond_14

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_12

    :catchall_6
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_12
    if-eqz v0, :cond_15

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    if-eqz v1, :cond_15

    iget-object p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/ImageLoader;->access$800(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V

    :goto_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
