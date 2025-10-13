.class Lcom/huawei/location/activity/yn$Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/util/filedownload/IDownloadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/activity/yn;->yn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FB:Lcom/huawei/location/activity/yn;

.field final synthetic Vw:Ljava/lang/String;

.field final synthetic yn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/location/activity/yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/activity/yn$Vw;->FB:Lcom/huawei/location/activity/yn;

    iput-object p2, p0, Lcom/huawei/location/activity/yn$Vw;->yn:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/location/activity/yn$Vw;->Vw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorDesc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModelFileManager"

    invoke-static {v0, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2715

    if-ne p1, p2, :cond_0

    const-string p1, "download fail update the request time"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/activity/yn$Vw;->FB:Lcom/huawei/location/activity/yn;

    invoke-static {p1}, Lcom/huawei/location/activity/yn;->yn(Lcom/huawei/location/activity/yn;)Lcom/huawei/location/lite/common/util/PreferencesHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/location/activity/yn$Vw;->Vw:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveLong(Ljava/lang/String;J)Z

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/activity/yn$Vw;->FB:Lcom/huawei/location/activity/yn;

    iget-object p2, p0, Lcom/huawei/location/activity/yn$Vw;->yn:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/huawei/location/activity/yn;->yn(Lcom/huawei/location/activity/yn;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;Ljava/io/File;)V
    .locals 3

    const-string v0, "download success:"

    const-string v1, "ModelFileManager"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "file and downLoadFileBean is not null begin downLoadSuccessDeal"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/activity/yn$Vw;->FB:Lcom/huawei/location/activity/yn;

    iget-object v1, p0, Lcom/huawei/location/activity/yn$Vw;->yn:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;->getFileAccessInfo()Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;->getFileSha256()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;->getFileAccessInfo()Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p2, v2, p1}, Lcom/huawei/location/activity/yn;->yn(Lcom/huawei/location/activity/yn;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "file or downLoadFileBean is null"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/activity/yn$Vw;->FB:Lcom/huawei/location/activity/yn;

    iget-object p2, p0, Lcom/huawei/location/activity/yn$Vw;->yn:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/huawei/location/activity/yn;->yn(Lcom/huawei/location/activity/yn;Ljava/lang/String;)V

    return-void
.end method
