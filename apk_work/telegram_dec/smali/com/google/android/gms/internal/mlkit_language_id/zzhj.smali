.class final Lcom/google/android/gms/internal/mlkit_language_id/zzhj;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzhh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zzb(Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhg;Lcom/google/android/gms/internal/mlkit_language_id/zzhg;)Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zzb()V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zzc()I

    move-result p1

    return p1
.end method

.method final synthetic zzd(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhg;->zzd()I

    move-result p1

    return p1
.end method
