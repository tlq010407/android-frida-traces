.class public final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;

.field private final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field private final zzg:Lcom/google/android/gms/tasks/Task;

.field private final zzh:Lcom/google/android/gms/tasks/Task;

.field private final zzi:Ljava/lang/String;

.field private final zzj:I

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zze:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztx;->zza()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztx;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzth;-><init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzti;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzti;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzh:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzj:I

    return-void
.end method

.method static zza(Ljava/util/List;D)J
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static declared-synchronized zzi()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzas;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzas;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->languageTagFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzas;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzas;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private final zzj()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzk(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;JJ)Z
    .locals 2

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    return p5

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    return p5

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final synthetic zzb()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;->zzb(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;->zzd()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzi()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzh(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;->zzc(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzsa;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zze:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;->zza(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztk;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p2

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztk;->zza()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Lcom/google/mlkit/vision/segmentation/subject/internal/zzh;)V
    .locals 9

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzba;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbi;->zzo()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzba;->zzc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v7, v4

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zza(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza(Ljava/util/List;D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    const-wide v4, 0x4052c00000000000L    # 75.0

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza(Ljava/util/List;D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zzf(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza(Ljava/util/List;D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zzd(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza(Ljava/util/List;D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zza(Ljava/util/List;D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzna;->zzg()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;->zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznz;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznc;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdt;->zze()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdy;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdy;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzto;->zzf(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoc;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Ljava/lang/Object;JLcom/google/mlkit/vision/segmentation/subject/internal/zzh;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzz;->zzp()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzz;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzba;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbi;->zzm(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v5, 0x1e

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;JJ)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;->zzk:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztg;

    invoke-direct {p3, p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztl;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzob;Lcom/google/mlkit/vision/segmentation/subject/internal/zzh;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
