.class public abstract synthetic Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/telephony/SignalStrength;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
