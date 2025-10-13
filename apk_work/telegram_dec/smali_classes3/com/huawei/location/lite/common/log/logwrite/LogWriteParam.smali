.class public Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fileExpiredTime:I

.field private fileNum:I

.field private fileSize:I

.field private logPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileExpiredTime()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileExpiredTime:I

    return v0
.end method

.method public getFileNum()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileNum:I

    return v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileSize:I

    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public setFileExpiredTime(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileExpiredTime:I

    return-void
.end method

.method public setFileNum(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileNum:I

    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->fileSize:I

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWriteParam;->logPath:Ljava/lang/String;

    return-void
.end method
