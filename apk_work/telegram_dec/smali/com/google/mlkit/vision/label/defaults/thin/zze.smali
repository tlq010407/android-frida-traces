.class public final Lcom/google/mlkit/vision/label/defaults/thin/zze;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zze;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zze;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    const v2, 0xc337960

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/google/mlkit/vision/label/defaults/thin/zza;

    invoke-direct {v1, v0, p1}, Lcom/google/mlkit/vision/label/defaults/thin/zza;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/mlkit/vision/label/defaults/thin/zzc;

    invoke-direct {v1, v0, p1}, Lcom/google/mlkit/vision/label/defaults/thin/zzc;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;)V

    :goto_0
    const-string v0, "play-services-mlkit-image-labeling"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_label/zznp;

    move-result-object v0

    new-instance v2, Lcom/google/mlkit/vision/label/defaults/thin/zzh;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/mlkit/vision/label/defaults/thin/zzh;-><init>(Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;Lcom/google/mlkit/vision/label/defaults/thin/zzb;Lcom/google/android/gms/internal/mlkit_vision_label/zznp;)V

    return-object v2
.end method
