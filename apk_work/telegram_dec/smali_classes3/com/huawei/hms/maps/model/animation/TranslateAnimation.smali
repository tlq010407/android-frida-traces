.class public Lcom/huawei/hms/maps/model/animation/TranslateAnimation;
.super Lcom/huawei/hms/maps/model/animation/Animation;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/maps/model/animation/TranslateAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/huawei/hms/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation$1;

    invoke-direct {v0}, Lcom/huawei/hms/maps/model/animation/TranslateAnimation$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/huawei/hms/common/parcel/ParcelReader;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/animation/Animation;-><init>(Lcom/huawei/hms/common/parcel/ParcelReader;)V

    sget-object v0, Lcom/huawei/hms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Lcom/huawei/hms/common/parcel/ParcelReader;->readParcelable(ILandroid/os/Parcelable$Creator;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/maps/model/LatLng;

    iput-object p1, p0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation;->h:Lcom/huawei/hms/maps/model/LatLng;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/maps/model/animation/Animation;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/hms/maps/model/animation/Animation;->a:I

    iput-object p1, p0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation;->h:Lcom/huawei/hms/maps/model/LatLng;

    return-void
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/common/parcel/ParcelWrite;I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation;->h:Lcom/huawei/hms/maps/model/LatLng;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, p2, v1}, Lcom/huawei/hms/common/parcel/ParcelWrite;->writeParcelable(ILandroid/os/Parcelable;IZ)V

    return-void
.end method

.method public getTarget()Lcom/huawei/hms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/animation/TranslateAnimation;->h:Lcom/huawei/hms/maps/model/LatLng;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/maps/model/animation/Animation;->e:J

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/model/animation/Animation;->f:Landroid/view/animation/Interpolator;

    return-void
.end method
