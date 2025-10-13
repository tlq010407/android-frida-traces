.class final Lcom/google/mlkit/vision/label/defaults/thin/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/label/defaults/thin/zzb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;

.field private zzc:Z

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzb:Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzc:Z

    const/16 v2, 0xd

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzof;->zze()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzc:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to init thin image labeler."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_label/zzod;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_label/zzod;-><init>(IIIIJ)V

    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzof;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_label/zzod;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_label/zzoj;

    new-instance v3, Lcom/google/mlkit/vision/label/ImageLabel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoj;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoj;->zza()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoj;->zzb()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoj;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/google/mlkit/vision/label/ImageLabel;-><init>(Ljava/lang/String;FILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    return-object v0

    :goto_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to run thin image labeler."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final zzb()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.vision.ica"

    const-string v2, "com.google.android.gms.vision.label.mlkit.ImageLabelerCreator"

    iget-object v3, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zza:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoh;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_label/zzoi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_label/zzol;

    iget-object v3, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzb:Lcom/google/mlkit/vision/label/defaults/ImageLabelerOptions;

    invoke-virtual {v3}, Lcom/google/mlkit/vision/label/ImageLabelerOptionsBase;->getConfidenceThreshold()F

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_label/zzol;-><init>(FI)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzoi;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_label/zzol;)Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "Failed to create thin image labeler."

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :goto_1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zza:Landroid/content/Context;

    const-string v1, "ica"

    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzd:Z

    :cond_1
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Waiting for the label optional module to be downloaded. Please wait."

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzof;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DecoupledImageLabeler"

    const-string v1, "Failed to release thin image labeler."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zze:Lcom/google/android/gms/internal/mlkit_vision_label/zzof;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/label/defaults/thin/zza;->zzc:Z

    :cond_0
    return-void
.end method
