.class public Lcom/google/android/gms/vision/face/Face;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:I

.field private zzb:Landroid/graphics/PointF;

.field private zzc:F

.field private zzd:F

.field private zze:F

.field private zzf:F

.field private zzg:F

.field private zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private final zzm:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;FFFFF[Lcom/google/android/gms/vision/face/Landmark;[Lcom/google/android/gms/vision/face/Contour;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/vision/face/Face;->zzb:Landroid/graphics/PointF;

    iput p3, p0, Lcom/google/android/gms/vision/face/Face;->zzc:F

    iput p4, p0, Lcom/google/android/gms/vision/face/Face;->zzd:F

    iput p5, p0, Lcom/google/android/gms/vision/face/Face;->zze:F

    iput p6, p0, Lcom/google/android/gms/vision/face/Face;->zzf:F

    iput p7, p0, Lcom/google/android/gms/vision/face/Face;->zzg:F

    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/vision/face/Face;->zzh:Ljava/util/List;

    invoke-static {p9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/vision/face/Face;->zzi:Ljava/util/List;

    invoke-static {p10}, Lcom/google/android/gms/vision/face/Face;->zza(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzj:F

    invoke-static {p11}, Lcom/google/android/gms/vision/face/Face;->zza(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzk:F

    invoke-static {p12}, Lcom/google/android/gms/vision/face/Face;->zza(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzl:F

    invoke-static {p13}, Lcom/google/android/gms/vision/face/Face;->zza(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzm:F

    return-void
.end method

.method private static zza(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zza:I

    return v0
.end method

.method public getLandmarks()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/face/Face;->zzh:Ljava/util/List;

    return-object v0
.end method
