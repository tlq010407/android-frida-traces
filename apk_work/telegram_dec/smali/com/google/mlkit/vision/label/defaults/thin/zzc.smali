.class final Lcom/google/mlkit/vision/label/defaults/thin/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/label/defaults/thin/zzb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzj;

.field private final zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zza:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzj;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    invoke-virtual {p2}, Lcom/google/mlkit/vision/label/ImageLabelerOptionsBase;->getConfidenceThreshold()F

    move-result p2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzj;-><init>(IIFI)V

    iput-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzj;

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p1

    const p2, 0xbf1dc80

    if-lt p1, p2, :cond_0

    const-string p1, "com.google.android.gms.vision.ica"

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.vision.dynamite"

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzc:Ljava/lang/String;

    return-void
.end method

.method private final zzd()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzd:Z

    if-nez v0, :cond_0

    const-string v0, "LegacyLabelDelegate"

    const-string v1, "Request ICA optional module download."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zza:Landroid/content/Context;

    const-string v1, "ica"

    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzd:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertToUpRightBitmap(Lcom/google/mlkit/vision/common/InputImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_label/zzl;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzl;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzd;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_label/zzl;)[Lcom/google/android/gms/internal/mlkit_vision_label/zzh;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Lcom/google/mlkit/vision/label/ImageLabel;

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_label/zzh;->zzb:Ljava/lang/String;

    iget v6, v3, Lcom/google/android/gms/internal/mlkit_vision_label/zzh;->zzc:F

    iget v7, v3, Lcom/google/android/gms/internal/mlkit_vision_label/zzh;->zzd:I

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_label/zzh;->zza:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/google/mlkit/vision/label/ImageLabel;-><init>(Ljava/lang/String;FILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-object v0

    :goto_1
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to run legacy image labeler."

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the image labeling module to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final zzb()V
    .locals 4

    const-string v0, "LegacyLabelDelegate"

    const-string v1, "Try to load legacy label module."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xd

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zza:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    iget-object v3, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzc:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.vision.label.ChimeraNativeImageLabelerCreator"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzf;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_label/zzg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zza:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzj;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_label/zzg;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_label/zzj;)Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    return-void

    :goto_0
    iget-object v2, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzc:Ljava/lang/String;

    const-string v3, "com.google.android.gms.vision.dynamite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zzd()V

    return-void

    :cond_2
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to load deprecated vision dynamite module."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Failed to create legacy image labeler."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzd;->zzd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyLabelDelegate"

    const-string v2, "Failed to release legacy image labeler."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzd;

    :cond_0
    return-void
.end method
