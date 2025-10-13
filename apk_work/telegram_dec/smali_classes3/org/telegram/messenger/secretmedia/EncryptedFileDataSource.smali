.class public final Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:I

.field fileInputStream:Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileInputStream:Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileInputStream:Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public bridge synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 8

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".key"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x7d8

    :try_start_0
    new-instance v3, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v3, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileInputStream:Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    sub-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    int-to-long v6, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    int-to-long v2, p1

    :goto_0
    return-wide v2

    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1
.end method

.method public read([BII)I
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileInputStream:Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget p1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    return p3
.end method
