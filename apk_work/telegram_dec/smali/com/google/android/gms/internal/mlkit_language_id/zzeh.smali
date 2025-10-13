.class final Lcom/google/android/gms/internal/mlkit_language_id/zzeh;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzee;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0

    .line 0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V
    .locals 0

    .line 0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Z
    .locals 0

    .line 0
    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    return p1
.end method

.method final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    return-object p1
.end method

.method final zzc(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzb()V

    return-void
.end method
