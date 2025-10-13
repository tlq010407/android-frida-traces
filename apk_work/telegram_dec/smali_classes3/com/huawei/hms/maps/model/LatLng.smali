.class public Lcom/huawei/hms/maps/model/LatLng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/maps/model/LatLng$1;

    invoke-direct {v0}, Lcom/huawei/hms/maps/model/LatLng$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x3f99800000000000L    # -180.0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v4, v0, p3

    if-gez v4, :cond_0

    cmpg-double v0, p3, v2

    if-ltz v0, :cond_1

    :cond_0
    add-double v0, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    :cond_1
    iput-wide p3, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    goto :goto_0

    :cond_2
    sub-double/2addr p3, v2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p3, v0

    add-double/2addr p3, v0

    rem-double/2addr p3, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    const-string p3, "LatLng"

    const-string p4, "longitude is out of valid range, ,using modulo operation."

    invoke-static {p3, p4}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide p3, 0x4056800000000000L    # 90.0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide p3, -0x3fa9800000000000L    # -90.0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/common/parcel/ParcelReader;

    invoke-direct {v0, p1}, Lcom/huawei/hms/common/parcel/ParcelReader;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/hms/common/parcel/ParcelReader;->readDouble(ID)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/hms/common/parcel/ParcelReader;->readDouble(ID)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/maps/model/LatLng;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v3, p1, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    iget-wide v5, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    iget-wide v5, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Lcom/huawei/hms/common/parcel/ParcelWrite;

    invoke-direct {p2, p1}, Lcom/huawei/hms/common/parcel/ParcelWrite;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p2}, Lcom/huawei/hms/common/parcel/ParcelWrite;->beginObjectHeader()I

    move-result p1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-virtual {p2, v0, v1, v2}, Lcom/huawei/hms/common/parcel/ParcelWrite;->writeDouble(ID)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-virtual {p2, v0, v1, v2}, Lcom/huawei/hms/common/parcel/ParcelWrite;->writeDouble(ID)V

    invoke-virtual {p2, p1}, Lcom/huawei/hms/common/parcel/ParcelWrite;->finishObjectHeader(I)V

    return-void
.end method
