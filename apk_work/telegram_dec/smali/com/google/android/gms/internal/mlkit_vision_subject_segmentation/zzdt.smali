.class public final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzb:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdx;)V

    return-object v0
.end method
