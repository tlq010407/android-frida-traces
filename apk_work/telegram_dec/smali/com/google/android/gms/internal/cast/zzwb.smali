.class final Lcom/google/android/gms/internal/cast/zzwb;
.super Lcom/google/android/gms/internal/cast/zzvz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzvz;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zza()I

    move-result p1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zzb()I

    move-result p1

    return p1
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    return-object p1
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwa;->zzc()Lcom/google/android/gms/internal/cast/zzwa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzwa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwa;->zzc()Lcom/google/android/gms/internal/cast/zzwa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzwa;->equals(Ljava/lang/Object;)Z

    move-result v0

    check-cast p2, Lcom/google/android/gms/internal/cast/zzwa;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/cast/zzwa;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzwa;->zze(Lcom/google/android/gms/internal/cast/zzwa;Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cast/zzwa;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzwa;->zzd(Lcom/google/android/gms/internal/cast/zzwa;)Lcom/google/android/gms/internal/cast/zzwa;

    :cond_1
    :goto_0
    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzwa;->zzf()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    check-cast p2, Lcom/google/android/gms/internal/cast/zzwa;

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 0

    return-void
.end method
