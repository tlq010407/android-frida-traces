.class final Lcom/google/android/gms/internal/mlkit_common/zzaz;
.super Lcom/google/android/gms/internal/mlkit_common/zzau;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

.field private final transient zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzat;Lcom/google/android/gms/internal/mlkit_common/zzaq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzbe;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
