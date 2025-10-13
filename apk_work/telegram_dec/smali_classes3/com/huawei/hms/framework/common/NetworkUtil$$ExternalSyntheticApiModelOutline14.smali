.class public abstract synthetic Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline14;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/net/ConnectivityManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p0

    return p0
.end method
