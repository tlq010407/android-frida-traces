.class public final Lcom/huawei/location/lite/common/log/logwrite/LogWrite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/log/logwrite/LogWrite$FileComparator;
    }
.end annotation


# static fields
.field private static enableWriteLog:Z = false


# instance fields
.field private fileInfoMap:Ljava/util/Map;

.field private logDirPath:Ljava/lang/String;

.field private maxFileExpired:J

.field private maxFileNum:I

.field private maxFileSize:I


# direct methods
.method public static synthetic $r8$lambda$-Zn2b-HOtIIg7hEba8Xv3bT7joE(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->lambda$getExistedFiles$1(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JJFdkrqdEfg75K3a984du3Pbsi4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->lambda$getExistedFiles$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->fileInfoMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->logDirPath:Ljava/lang/String;

    return-void
.end method

.method private beforeWriteCheck(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "LogWrite"

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "writeToFile file is not exit"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "beforeWriteCheck None of the paths exist--Create a path--Create a file"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setNeedCheck(Z)V

    invoke-direct {p0, v1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->creatFolder(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->makeLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->createNewLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->pathExistsDeal(Ljava/io/File;Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private creatFolder(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LogWrite"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "createFolder SecurityException:"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "createFolder fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "createFolder success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private createNewLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-class v5, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;

    monitor-enter v5

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "LogWrite"

    const-string v6, "createNewLogFile IOException"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setWriter(Ljava/io/BufferedWriter;)V

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->isNeedCheck()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->filesNumAndUsefulCheck(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setFileName(Ljava/lang/String;)V

    sput-boolean v4, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->enableWriteLog:Z

    const-string v0, "location"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object p3

    invoke-static {}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getCSVFileHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const-string p1, "LogWrite"

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createNewLogFile:File creation complete logFileName:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_2
    const-string p1, "LogWrite"

    const-string p2, "createNewLogFile Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteFiles([Ljava/io/File;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    const-string v1, "deleteFiles result false"

    const-string v2, "LogWrite"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    :try_start_0
    array-length p2, p1

    sub-int/2addr p2, v3

    :goto_0
    if-ltz p2, :cond_3

    aget-object v4, p1, p2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v3

    :goto_1
    if-ltz p2, :cond_3

    aget-object v4, p1, p2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :catch_0
    const-string p1, "deleteFiles SecurityException"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method private doWrite(Lcom/huawei/location/lite/common/log/logwrite/AppLog;Lcom/huawei/location/lite/common/log/logwrite/FileParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getMsgByFileType(Lcom/huawei/location/lite/common/log/logwrite/AppLog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    :cond_0
    return-void
.end method

.method private filesNumAndUsefulCheck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "LogWrite"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getExistedFiles(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-lez p2, :cond_3

    :try_start_0
    new-instance p2, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$FileComparator;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$FileComparator;-><init>(Lcom/huawei/location/lite/common/log/logwrite/LogWrite$1;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Arrays sort IllegalArgumentException"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-direct {p0, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getFileSavaTimeMill(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileExpired:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_0

    const-string p2, "filesNumAndUsefulCheck:The latest saved files are more than maxFileExpired delete all files"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->deleteFiles([Ljava/io/File;I)Z

    goto :goto_3

    :cond_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_2

    aget-object v1, p1, p2

    invoke-direct {p0, v1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getFileSavaTimeMill(Ljava/io/File;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileExpired:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filesNumAndUsefulCheck:delete the exceed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, p2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "filesNumAndUsefulCheck:delete the exceed file result false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :catch_1
    const-string p2, "filesNumAndUsefulCheck:Exception"

    :goto_2
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    const-string p2, "filesNumAndUsefulCheck:SecurityException"

    goto :goto_2

    :cond_2
    :goto_3
    array-length p2, p1

    iget v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileNum:I

    if-lt p2, v1, :cond_3

    array-length p2, p1

    sub-int/2addr p2, v1

    const-string v1, "createNewLogFile Exceeded the maximum number of files--Delete the earliest file."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->deleteFiles([Ljava/io/File;I)Z

    :cond_3
    return-void
.end method

.method private static getCSVFileHeader()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "transId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "accuracy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "speed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sessionId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sourceType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locateType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vendorType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "src"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchHd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "floor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "floorAcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "buildingId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExistedFiles(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_0
.end method

.method private getFileInfo(Ljava/lang/String;)Lcom/huawei/location/lite/common/log/logwrite/FileParam;
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->fileInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->fileInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/lite/common/log/logwrite/FileParam;

    return-object p1

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/log/logwrite/FileParam;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;-><init>()V

    iget-object v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->logDirPath:Ljava/lang/String;

    const-string v2, "log"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->logDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/location/lite/common/log/logwrite/LogWriteConstants;->DEBUG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/location/lite/common/log/logwrite/LogWriteConstants;->LOCATION_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setFileDirPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->fileInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getFileSavaTimeMill(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMsgByFileType(Lcom/huawei/location/lite/common/log/logwrite/AppLog;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%s"

    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getNow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getTr()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v4, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object p1, v6, v0

    const-string p1, "%s: %s/%s: %s"

    invoke-static {v2, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNow()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string/jumbo v1, "yy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/logwrite/DateUtil;->formate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnableWriteLog()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->enableWriteLog:Z

    return v0
.end method

.method private isFileFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "location"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    if-eqz p1, :cond_1

    const/high16 p1, 0x100000

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :cond_1
    iget p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileSize:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method private static synthetic lambda$getExistedFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string p0, "Location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".csv"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_0

    const/16 p0, 0x11

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getExistedFiles$1(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string p0, "Location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".log"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_0

    const/16 p0, 0x11

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ".csv"

    goto :goto_0

    :cond_0
    const-string p1, ".log"

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;)V
    .locals 5

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-class v0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setWriter(Ljava/io/BufferedWriter;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const-string p1, "LogWrite"

    const-string v0, "openLogFile Exception"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private pathExistsDeal(Ljava/io/File;Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->isFirstWrite()Z

    move-result v0

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileDirPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->filesNumAndUsefulCheck(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setNeedCheck(Z)V

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getExistedFiles(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const-string v0, "LogWrite"

    if-nez p1, :cond_1

    const-string p1, "beforeWriteCheck  existedFiles is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    const-string p1, "beforeWriteCheck  Path Exist -- No File -- Create File"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setNeedCheck(Z)V

    invoke-direct {p0, p3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->makeLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->createNewLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance p3, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$FileComparator;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite$FileComparator;-><init>(Lcom/huawei/location/lite/common/log/logwrite/LogWrite$1;)V

    invoke-static {p1, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, "beforeWriteCheck Arrays sort IllegalArgumentException"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setFileName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static setEnableWriteLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->enableWriteLog:Z

    return-void
.end method


# virtual methods
.method public init(ILjava/lang/String;II)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x100000

    mul-int p1, p1, v0

    :goto_0
    iput p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileSize:I

    goto :goto_1

    :cond_0
    const/high16 p1, 0x200000

    goto :goto_0

    :goto_1
    const/16 p1, 0x14

    if-lez p3, :cond_1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileNum:I

    if-lez p4, :cond_2

    const/4 p1, 0x5

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p3, p1

    const-wide/32 v0, 0x5265c00

    mul-long p3, p3, v0

    :goto_2
    iput-wide p3, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->maxFileExpired:J

    goto :goto_3

    :cond_2
    const-wide/32 p3, 0x19bfcc00

    goto :goto_2

    :goto_3
    if-eqz p2, :cond_3

    iput-object p2, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->logDirPath:Ljava/lang/String;

    const/4 p1, 0x1

    :goto_4
    invoke-static {p1}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->setEnableWriteLog(Z)V

    goto :goto_5

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :goto_5
    const-string p1, "LogWrite"

    const-string p2, "LogWrite init complete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public permissionCheck(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "/data/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/util/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "LogWrite"

    if-nez p1, :cond_0

    const-string p1, "READ_EXTERNAL_PERMISSION Permission check unPass"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v2}, Lcom/huawei/location/lite/common/util/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "WRITE_EXTERNAL_PERMISSION Permission check unPass"

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public shutdown()V
    .locals 5

    const-class v0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->fileInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/lite/common/log/logwrite/FileParam;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getWriter()Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v3, "LogWrite"

    const-string v4, "shutdown IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setWriter(Ljava/io/BufferedWriter;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public writeToFile(Lcom/huawei/location/lite/common/log/logwrite/AppLog;)V
    .locals 5

    sget-boolean v0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->enableWriteLog:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/log/logwrite/AppLog;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->getFileInfo(Ljava/lang/String;)Lcom/huawei/location/lite/common/log/logwrite/FileParam;

    move-result-object v2

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->logDirPath:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->permissionCheck(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-direct {p0, v2, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->beforeWriteCheck(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->isFileFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/huawei/location/lite/common/log/logwrite/FileParam;->setNeedCheck(Z)V

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->makeLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->createNewLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->openLogFile(Lcom/huawei/location/lite/common/log/logwrite/FileParam;)V

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/huawei/location/lite/common/log/logwrite/LogWrite;->doWrite(Lcom/huawei/location/lite/common/log/logwrite/AppLog;Lcom/huawei/location/lite/common/log/logwrite/FileParam;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_5
    const-string p1, "LogWrite"

    const-string v0, "writeToFile IOException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method
