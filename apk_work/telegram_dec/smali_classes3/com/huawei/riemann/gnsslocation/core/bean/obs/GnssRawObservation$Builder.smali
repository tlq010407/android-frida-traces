.class public final Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mGnssClock:Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;

.field public mSatelliteMeasurement:Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aGnssRawObservation()Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;
    .locals 1

    new-instance v0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;

    invoke-direct {v0}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;
    .locals 2

    new-instance v0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;

    invoke-direct {v0}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;-><init>()V

    iget-object v1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mSatelliteMeasurement:Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;

    invoke-static {v0, v1}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;->access$002(Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;

    iget-object v1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mGnssClock:Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;

    invoke-static {v0, v1}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;->access$102(Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;

    return-object v0
.end method

.method public but()Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;
    .locals 2

    invoke-static {}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->aGnssRawObservation()Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mGnssClock:Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;

    invoke-virtual {v0, v1}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->withGnssClock(Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mSatelliteMeasurement:Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;

    invoke-virtual {v0, v1}, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->withSatelliteMeasurement(Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withGnssClock(Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mGnssClock:Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssClock;

    return-object p0
.end method

.method public withSatelliteMeasurement(Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;)Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation$Builder;->mSatelliteMeasurement:Lcom/huawei/riemann/gnsslocation/core/bean/obs/SatelliteMeasurement;

    return-object p0
.end method
