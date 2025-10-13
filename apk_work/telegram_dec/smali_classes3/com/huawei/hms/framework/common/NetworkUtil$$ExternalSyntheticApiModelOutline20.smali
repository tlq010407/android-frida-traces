.class public abstract synthetic Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline20;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/net/ConnectivityManager;)[Landroid/net/Network;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method
