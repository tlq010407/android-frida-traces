.class Lcom/huawei/location/sdm/utils/Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/util/filedownload/IDownloadSupport;


# instance fields
.field final synthetic yn:Lcom/huawei/location/sdm/utils/yn;


# direct methods
.method constructor <init>(Lcom/huawei/location/sdm/utils/yn;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/sdm/utils/Vw;->yn:Lcom/huawei/location/sdm/utils/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportDownloadFile(Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;->getFileAccessInfo()Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean$FileAccessInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/location/sdm/utils/Vw;->yn:Lcom/huawei/location/sdm/utils/yn;

    invoke-virtual {v0}, Lcom/huawei/location/sdm/utils/yn;->Vw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/location/sdm/utils/Vw;->yn:Lcom/huawei/location/sdm/utils/yn;

    invoke-static {v0}, Lcom/huawei/location/sdm/utils/yn;->Vw(Lcom/huawei/location/sdm/utils/yn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/huawei/location/sdm/utils/yn;->yn(Lcom/huawei/location/sdm/utils/yn;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
