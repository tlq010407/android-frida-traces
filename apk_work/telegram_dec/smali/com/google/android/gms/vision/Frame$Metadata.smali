.class public Lcom/google/android/gms/vision/Frame$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zza:I

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzb:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzf:I

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/Frame$Metadata;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zze:I

    return p1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzb:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzc:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zze:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zzd:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/Frame$Metadata;->zza:I

    return v0
.end method
