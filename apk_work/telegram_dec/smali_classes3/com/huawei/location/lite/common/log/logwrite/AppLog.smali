.class public Lcom/huawei/location/lite/common/log/logwrite/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fileType:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tr:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->fileType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->level:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->fileType:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tr:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->level:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tr:Ljava/lang/Throwable;

    const-string p1, "log"

    iput-object p1, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->fileType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTr()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->tr:Ljava/lang/Throwable;

    return-object v0
.end method
