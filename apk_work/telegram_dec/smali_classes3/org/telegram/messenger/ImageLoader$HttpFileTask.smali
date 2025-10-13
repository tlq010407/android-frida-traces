.class Lorg/telegram/messenger/ImageLoader$HttpFileTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpFileTask"
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
.field private canRetry:Z

.field private currentAccount:I

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fileSize:I

.field private lastProgressTime:J

.field private tempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$oM1Dl-NO-CIA8foJPRew6fc7i9k(Lorg/telegram/messenger/ImageLoader$HttpFileTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lambda$reportProgress$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$swtdiHCRhCe8A6LcsUQV0ydaSe0(Lorg/telegram/messenger/ImageLoader$HttpFileTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lambda$reportProgress$0(JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    iput p5, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->currentAccount:I

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->currentAccount:I

    return p0
.end method

.method private synthetic lambda$reportProgress$0(JJ)V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v3, 0x1

    aput-wide p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask$$ExternalSyntheticLambda0;

    move-object v4, v0

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ImageLoader$HttpFileTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$HttpFileTask;JJ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reportProgress(JJ)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x64

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->lastProgressTime:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ImageLoader$HttpFileTask$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpFileTask;JJ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    .line 0
    const-string p1, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    const-string v0, "User-Agent"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4, v0, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_0

    const/16 v7, 0x12f

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Set-Cookie"

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    const-string v6, "Cookie"

    invoke-virtual {v4, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;

    const-string v6, "rws"

    invoke-direct {v0, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v0, v2

    move-object v4, v0

    :goto_1
    instance-of v5, p1, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_2
    instance-of v5, p1, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    instance-of v5, p1, Ljava/net/SocketException;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ECONNRESET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_4
    instance-of v5, p1, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_5

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_3
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z

    if-eqz v0, :cond_f

    :try_start_3
    instance-of v0, v4, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_6

    const/16 v5, 0xca

    if-eq v0, v5, :cond_6

    const/16 v5, 0x130

    if-eq v0, v5, :cond_6

    iput-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v4, "content-Length"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    if-eqz p1, :cond_b

    const v0, 0x8000

    :try_start_5
    new-array v0, v0, [B

    const/4 v4, 0x0

    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_a

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    if-lez v5, :cond_8

    int-to-long v6, v4

    int-to-long v8, v5

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(JJ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    if-ne v5, v0, :cond_b

    :try_start_7
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileSize:I

    if-eqz v0, :cond_c

    int-to-long v3, v0

    invoke-direct {p0, v3, v4, v3, v4}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->reportProgress(JJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_7
    :try_start_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_a

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v1, 0x0

    :cond_c
    :goto_a
    :try_start_9
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_b
    if-eqz p1, :cond_e

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_c
    move v3, v1

    :cond_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader;->access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
