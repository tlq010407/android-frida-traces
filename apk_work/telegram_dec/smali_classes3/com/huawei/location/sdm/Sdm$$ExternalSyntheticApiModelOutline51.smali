.class public abstract synthetic Lcom/huawei/location/sdm/Sdm$$ExternalSyntheticApiModelOutline51;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/location/GnssClock;)D
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/location/GnssClock;->getBiasUncertaintyNanos()D

    move-result-wide v0

    return-wide v0
.end method
