.class public final Lcom/google/android/gms/internal/vision/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:I

.field public zzd:J

.field public zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzs;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzs;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/vision/zzs;->zzc:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/vision/zzs;->zzd:J

    iput p6, p0, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/vision/zzs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vision/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzs;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->zza:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->zzb:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->zzc:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/vision/zzs;->zzd:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzs;->zza:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzs;->zzb:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzs;->zzc:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/vision/zzs;->zzd:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
