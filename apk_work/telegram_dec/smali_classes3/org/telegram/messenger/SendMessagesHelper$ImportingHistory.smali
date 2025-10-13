.class public Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImportingHistory"
.end annotation


# instance fields
.field public dialogId:J

.field public estimatedUploadSpeed:D

.field public historyPath:Ljava/lang/String;

.field public importId:J

.field private lastUploadSize:J

.field private lastUploadTime:J

.field public mediaPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public timeUntilFinish:I

.field public totalSize:J

.field public uploadMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uploadProgress:I

.field public uploadProgresses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public uploadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uploadSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public uploadedSize:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->mediaPaths:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgresses:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSize:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadMedia:Ljava/util/ArrayList;

    const p1, 0x7fffffff

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->timeUntilFinish:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->startImport()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->lastUploadTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Ljava/lang/String;JF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->addUploadProgress(Ljava/lang/String;JF)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->initImport(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->onMediaImport(Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->onFileFailedToUpload(Ljava/lang/String;)V

    return-void
.end method

.method private addUploadProgress(Ljava/lang/String;JF)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgresses:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSize:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadedSize:J

    iget-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSize:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadedSize:J

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadedSize:J

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->historyPath:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadedSize:J

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->lastUploadSize:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->lastUploadTime:J

    cmp-long p1, p2, v4

    if-eqz p1, :cond_2

    sub-long v4, p2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    sub-long v2, v0, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->estimatedUploadSpeed:D

    const-wide/16 v6, 0x0

    cmpl-double p1, v4, v6

    if-nez p1, :cond_1

    :goto_1
    iput-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->estimatedUploadSpeed:D

    goto :goto_2

    :cond_1
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double v2, v2, v6

    const-wide v6, 0x3fefae147ae147aeL    # 0.99

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    goto :goto_1

    :goto_2
    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->totalSize:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->estimatedUploadSpeed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->timeUntilFinish:I

    iput-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->lastUploadSize:J

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->lastUploadTime:J

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getUploadedCount()J

    move-result-wide p1

    long-to-float p1, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getTotalCount()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    if-eq p2, p1, :cond_3

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-wide p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private initImport(Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->mediaPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->media_count:I

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private onFileFailedToUpload(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->historyPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->access$200(Lorg/telegram/messenger/SendMessagesHelper;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const/16 v0, 0x190

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const-string v0, "IMPORT_UPLOAD_FAILED"

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private onMediaImport(Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->addUploadProgress(Ljava/lang/String;JF)V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;-><init>()V

    iget-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->importId:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->import_id:J

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->file_name:Ljava/lang/String;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->file_name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->file_name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "txt"

    :goto_0
    invoke-virtual {p3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p3, "opus"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "audio/opus"

    goto :goto_1

    :cond_1
    const-string p3, "webp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "image/webp"

    goto :goto_1

    :cond_2
    const-string p3, "text/plain"

    :cond_3
    :goto_1
    const-string v0, "image/jpg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "image/jpeg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_uploadImportedMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    :goto_3
    iget-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p3}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;

    invoke-direct {p4, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p3, p2, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private startImport()V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->importId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;->import_id:J

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public getTotalCount()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->totalSize:J

    return-wide v0
.end method

.method public getUploadedCount()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadedSize:J

    return-wide v0
.end method

.method public setImportProgress(I)V
    .locals 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->access$200(Lorg/telegram/messenger/SendMessagesHelper;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-wide v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
