.class public final synthetic Lcom/huawei/location/vdr/file/yn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/util/filedownload/IDownloadSupport;


# instance fields
.field public final synthetic f$0:Lcom/huawei/location/vdr/file/yn;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/location/vdr/file/yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/vdr/file/yn$$ExternalSyntheticLambda0;->f$0:Lcom/huawei/location/vdr/file/yn;

    return-void
.end method


# virtual methods
.method public final isSupportDownloadFile(Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/vdr/file/yn$$ExternalSyntheticLambda0;->f$0:Lcom/huawei/location/vdr/file/yn;

    invoke-static {v0, p1}, Lcom/huawei/location/vdr/file/yn;->$r8$lambda$XPuxX4bAgLsnQf4sARs8LuYvmgs(Lcom/huawei/location/vdr/file/yn;Lcom/huawei/location/lite/common/util/filedownload/DownLoadFileBean;)Z

    move-result p1

    return p1
.end method
