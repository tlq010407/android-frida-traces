.class final Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;
.super Lcom/google/android/gms/internal/mlkit_vision_label/zzbh;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;

.field private final transient zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_label/zzce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzbg;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzaz;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
