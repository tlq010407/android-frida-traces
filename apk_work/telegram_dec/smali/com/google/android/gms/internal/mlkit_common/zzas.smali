.class public final Lcom/google/android/gms/internal/mlkit_common/zzas;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Lcom/google/android/gms/internal/mlkit_common/zzar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:[Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzal;->zza(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:[Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzah;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:I

    add-int v2, v1, v1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzat;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzar;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzbb;->zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzas;)Lcom/google/android/gms/internal/mlkit_common/zzbb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzar;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
