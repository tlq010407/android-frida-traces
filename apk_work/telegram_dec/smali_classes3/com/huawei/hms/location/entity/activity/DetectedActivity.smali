.class public Lcom/huawei/hms/location/entity/activity/DetectedActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/location/entity/activity/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DetectedActivity"


# instance fields
.field private confidence:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/location/entity/activity/DetectedActivity$yn;

    invoke-direct {v0}, Lcom/huawei/hms/location/entity/activity/DetectedActivity$yn;-><init>()V

    sput-object v0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->confidence:I

    iput p1, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->type:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->confidence:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/hms/location/entity/activity/DetectedActivity$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/location/entity/activity/DetectedActivity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->confidence:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->type:I

    return v0
.end method

.method public setConfidence(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->confidence:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->confidence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
