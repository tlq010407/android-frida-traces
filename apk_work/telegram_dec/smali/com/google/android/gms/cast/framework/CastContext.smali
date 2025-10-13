.class public Lcom/google/android/gms/cast/framework/CastContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zzc:Ljava/lang/Object;

.field private static volatile zzd:Lcom/google/android/gms/cast/framework/CastContext;


# instance fields
.field final zza:Lcom/google/android/gms/internal/cast/zzaf;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/cast/framework/zzaj;

.field private final zzg:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzh:Lcom/google/android/gms/cast/framework/zzac;

.field private final zzi:Lcom/google/android/gms/cast/framework/PrecacheManager;

.field private final zzj:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

.field private final zzk:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzl:Lcom/google/android/gms/cast/internal/zzn;

.field private final zzm:Lcom/google/android/gms/internal/cast/zzbf;

.field private final zzn:Lcom/google/android/gms/internal/cast/zzay;

.field private final zzo:Ljava/util/List;

.field private final zzp:Lcom/google/android/gms/internal/cast/zzbn;

.field private final zzq:Lcom/google/android/gms/internal/cast/zzcy;

.field private zzr:Lcom/google/android/gms/internal/cast/zzai;

.field private zzs:Lcom/google/android/gms/cast/framework/CastReasonCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzc:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/zzbf;Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzk:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzm:Lcom/google/android/gms/internal/cast/zzbf;

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzl:Lcom/google/android/gms/cast/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzo:Ljava/util/List;

    new-instance p3, Lcom/google/android/gms/internal/cast/zzay;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/cast/zzay;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzn:Lcom/google/android/gms/internal/cast/zzay;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/cast/zzbf;->zzn()Lcom/google/android/gms/internal/cast/zzbn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzp:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzh()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzg()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/cast/framework/zzl;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/gms/cast/framework/zzl;-><init>(I)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/cast/framework/CastOptions;->zzb(Lcom/google/android/gms/cast/framework/zzl;)V

    :try_start_0
    invoke-static {p1, p2, p4, v2}, Lcom/google/android/gms/internal/cast/zzag;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzam;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzaj;

    move-result-object p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzf:Lcom/google/android/gms/cast/framework/zzaj;

    :try_start_1
    invoke-interface {p4}, Lcom/google/android/gms/cast/framework/zzaj;->zzf()Lcom/google/android/gms/cast/framework/zzaq;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v3, Lcom/google/android/gms/cast/framework/zzac;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/framework/zzac;-><init>(Lcom/google/android/gms/cast/framework/zzaq;)V

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzh:Lcom/google/android/gms/cast/framework/zzac;

    :try_start_2
    invoke-interface {p4}, Lcom/google/android/gms/cast/framework/zzaj;->zzg()Lcom/google/android/gms/cast/framework/zzay;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v3, Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/cast/framework/SessionManager;-><init>(Lcom/google/android/gms/cast/framework/zzay;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    new-instance v2, Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/framework/MediaNotificationManager;-><init>(Lcom/google/android/gms/cast/framework/SessionManager;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzj:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    new-instance v2, Lcom/google/android/gms/cast/framework/PrecacheManager;

    invoke-direct {v2, p2, v3, p5}, Lcom/google/android/gms/cast/framework/PrecacheManager;-><init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/cast/internal/zzn;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzi:Lcom/google/android/gms/cast/framework/PrecacheManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cast/zzbn;->zzj(Lcom/google/android/gms/cast/framework/SessionManager;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/cast/zzcy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzcy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzq:Lcom/google/android/gms/internal/cast/zzcy;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzaf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzaf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zza:Lcom/google/android/gms/internal/cast/zzaf;

    :try_start_3
    invoke-interface {p4, p1}, Lcom/google/android/gms/cast/framework/zzaj;->zzh(Lcom/google/android/gms/cast/framework/zzae;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    iget-object p4, p3, Lcom/google/android/gms/internal/cast/zzay;->zza:Lcom/google/android/gms/internal/cast/zzax;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzaf;->zza:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->zza()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/cast/framework/CastContext;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->zza()Ljava/util/List;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Setting Route Discovery for appIds: "

    invoke-virtual {v2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v1}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->zza()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/cast/zzay;->zza(Ljava/util/List;)V

    :cond_1
    const-string p1, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    const-string p2, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    const-string p3, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    const-string p4, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    const-string v1, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    filled-new-array {p3, p4, v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/android/gms/cast/internal/zzn;->zza([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/framework/zzg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/zzg;-><init>(Lcom/google/android/gms/cast/framework/CastContext;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/cast/internal/zzh;

    invoke-direct {p3, p5, p1}, Lcom/google/android/gms/cast/internal/zzh;-><init>(Lcom/google/android/gms/cast/internal/zzn;[Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    new-array p2, v4, [Lcom/google/android/gms/common/Feature;

    sget-object p3, Lcom/google/android/gms/cast/zzax;->zzh:Lcom/google/android/gms/common/Feature;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 p2, 0x20eb

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/framework/zzh;

    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/zzh;-><init>(Lcom/google/android/gms/cast/framework/CastContext;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Failed to call addAppVisibilityListener"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Failed to call getSessionManagerImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Failed to call getDiscoveryManagerImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Failed to call newCastContextImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;
    .locals 1

    .line 0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    return-object v0
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 8

    .line 0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/framework/CastContext;->zzf(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v4

    new-instance v7, Lcom/google/android/gms/cast/internal/zzn;

    invoke-direct {v7, v3}, Lcom/google/android/gms/cast/internal/zzn;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/google/android/gms/internal/cast/zzbf;

    invoke-static {v3}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    invoke-direct {v6, v3, v1, v4, v7}, Lcom/google/android/gms/internal/cast/zzbf;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/internal/zzn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/cast/framework/CastContext;

    invoke-interface {p0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/zzbf;Lcom/google/android/gms/cast/internal/zzn;)V

    sput-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzd:Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_1
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/cast/framework/CastContext;Landroid/os/Bundle;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzg;->zza:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzl:Lcom/google/android/gms/cast/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzp:Lcom/google/android/gms/internal/cast/zzbn;

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zza:Lcom/google/android/gms/internal/cast/zzaf;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/cast/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method private static zzf(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "Bundle is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    goto :goto_1

    :catch_6
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to initialize CastContext."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzg()Ljava/util/Map;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzr:Lcom/google/android/gms/internal/cast/zzai;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->zza()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzo:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/framework/SessionProvider;

    const-string v4, "Additional SessionProvider must not be null."

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Category for SessionProvider must not be null or empty string."

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v7, "SessionProvider for category %s already added"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/SessionProvider;->zza()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final zzh()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzk:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzk:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzm:Lcom/google/android/gms/internal/cast/zzbf;

    new-instance v3, Lcom/google/android/gms/internal/cast/zzai;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzai;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbf;)V

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzr:Lcom/google/android/gms/internal/cast/zzai;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzr:Lcom/google/android/gms/internal/cast/zzai;

    return-void
.end method


# virtual methods
.method public addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->zzc(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzk:Lcom/google/android/gms/cast/framework/CastOptions;

    return-object v0
.end method

.method public getMergedSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 6

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzf:Lcom/google/android/gms/cast/framework/zzaj;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzaj;->zze()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzaj;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getMergedSelectorAsBundle"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzg:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/cast/framework/zzac;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzh:Lcom/google/android/gms/cast/framework/zzac;

    return-object v0
.end method

.method final synthetic zze(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/CastReasonCodes;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/framework/CastReasonCodes;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzs:Lcom/google/android/gms/cast/framework/CastReasonCodes;

    return-void
.end method
