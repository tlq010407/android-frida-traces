.class public final Lcom/google/android/gms/internal/mlkit_vision_label/zzbb;
.super Lcom/google/android/gms/internal/mlkit_vision_label/zzax;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzax;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_label/zzbb;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzax;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_label/zzax;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzax;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzax;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzax;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_label/zzbe;

    move-result-object v0

    return-object v0
.end method
