.class public final Lcom/google/mlkit/vision/segmentation/subject/internal/zze;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/segmentation/subject/internal/zze;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/vision/segmentation/subject/internal/zze;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    check-cast p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;

    new-instance v1, Lcom/google/mlkit/vision/segmentation/subject/internal/zzj;

    const-string v2, "subject-segmentation"

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztn;

    move-result-object v0

    iget-object v3, p0, Lcom/google/mlkit/vision/segmentation/subject/internal/zze;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, v3, p1, v2, v0}, Lcom/google/mlkit/vision/segmentation/subject/internal/zzj;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztn;)V

    return-object v1
.end method
