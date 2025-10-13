.class final Lcom/google/android/gms/internal/mlkit_language_id/zzgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Lcom/google/android/gms/internal/mlkit_language_id/zzgc;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzd()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzb(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzee;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzf()Z

    move-result p1

    return p1
.end method

.method public final zzd(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzc(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
