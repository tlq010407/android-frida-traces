.class public Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectResultOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;
    }
.end annotation


# instance fields
.field private zza:Z

.field private zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;Lcom/google/mlkit/vision/segmentation/subject/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;->zza(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;->zzb(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    iget-boolean p1, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;->zzb:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
