.class public abstract Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzdh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzdh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    sget v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zzd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    sget v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/mlkit_language_id/zzde;)Lcom/google/android/gms/internal/mlkit_language_id/zzdh;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-object p0
.end method

.method protected zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    sget v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zze;->zzd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-void
.end method

.method public zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzb(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzi()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhe;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)V

    throw v1
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zze()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzn()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    return-object v0
.end method
