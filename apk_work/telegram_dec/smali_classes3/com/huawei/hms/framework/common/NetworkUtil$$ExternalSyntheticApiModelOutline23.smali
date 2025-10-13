.class public abstract synthetic Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline23;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m()I
    .locals 1

    .line 0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method
