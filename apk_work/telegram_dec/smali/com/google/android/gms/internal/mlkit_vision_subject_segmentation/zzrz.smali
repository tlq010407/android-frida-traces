.class public final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Boolean;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Ljava/lang/Boolean;

.field private final zze:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzh(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zza:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzg(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzb:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzi(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzc:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzk(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzd:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zze:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zza:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zza:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzb:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzc:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzc:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzd:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzd:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zze:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zze:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zza:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzb:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzc:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzd:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zze:Ljava/lang/Boolean;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zza:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;->zzd:Ljava/lang/Boolean;

    return-object v0
.end method
