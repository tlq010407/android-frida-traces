.class public final Lcom/google/android/gms/cast/zzbt;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/zzr;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzg:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zzh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzi:Lcom/google/android/gms/common/api/Api;


# instance fields
.field final zza:Lcom/google/android/gms/cast/zzbs;

.field zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final zzd:Ljava/util/Map;

.field final zze:Ljava/util/Map;

.field private zzj:Landroid/os/Handler;

.field private zzk:Z

.field private zzl:Z

.field private final zzm:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzn:Ljava/lang/Object;

.field private final zzo:Ljava/lang/Object;

.field private zzp:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private zzq:Ljava/lang/String;

.field private zzr:D

.field private zzs:Z

.field private zzt:I

.field private zzu:I

.field private zzv:Lcom/google/android/gms/cast/zzav;

.field private final zzw:Lcom/google/android/gms/cast/CastDevice;

.field private final zzx:Lcom/google/android/gms/cast/Cast$Listener;

.field private final zzy:Ljava/util/List;

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastClient"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Lcom/google/android/gms/cast/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/zzbt;->zzh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v2, "Cast.API_CXLESS"

    sget-object v3, Lcom/google/android/gms/cast/internal/zzak;->zzb:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/cast/zzbt;->zzi:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/zzbt;->zzi:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance v0, Lcom/google/android/gms/cast/zzbs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/zzbs;-><init>(Lcom/google/android/gms/cast/zzbt;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zza:Lcom/google/android/gms/cast/zzbs;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzn:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzo:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzy:Ljava/util/List;

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CastOptions cannot be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/google/android/gms/cast/Cast$CastOptions;->zzb:Lcom/google/android/gms/cast/Cast$Listener;

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    iget-object p1, p2, Lcom/google/android/gms/cast/Cast$CastOptions;->zza:Lcom/google/android/gms/cast/CastDevice;

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzm:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/cast/zzbt;->zzz:I

    invoke-virtual {p0}, Lcom/google/android/gms/cast/zzbt;->zzn()D

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zze()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/zzbt;->zzp:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/cast/zzbt;->zzp:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v4, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzb()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/cast/zzbt;->zzr:D

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    iput-wide v3, p0, Lcom/google/android/gms/cast/zzbt;->zzr:D

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzg()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/gms/cast/zzbt;->zzs:Z

    if-eq v4, v5, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/cast/zzbt;->zzs:Z

    const/4 v3, 0x1

    :cond_2
    sget-object v4, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v2

    const-string v5, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zza()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzc()I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/cast/zzbt;->zzt:I

    if-eq v3, v5, :cond_5

    iput v3, p0, Lcom/google/android/gms/cast/zzbt;->zzt:I

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v2

    const-string v5, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    if-eqz v3, :cond_7

    :cond_6
    iget v3, p0, Lcom/google/android/gms/cast/zzbt;->zzt:I

    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzd()I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/cast/zzbt;->zzu:I

    if-eq v3, v5, :cond_8

    iput v3, p0, Lcom/google/android/gms/cast/zzbt;->zzu:I

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v6, v0, v2

    const-string v2, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_a

    if-nez v3, :cond_9

    iget-boolean v2, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    if-eqz v2, :cond_a

    :cond_9
    iget v2, p0, Lcom/google/android/gms/cast/zzbt;->zzu:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzv:Lcom/google/android/gms/cast/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzab;->zzf()Lcom/google/android/gms/cast/zzav;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzv:Lcom/google/android/gms/cast/zzav;

    :cond_b
    iput-boolean v1, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/cast/zzbt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzS()V

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/cast/zzbt;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzbt;->zzU(I)V

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/cast/zzbt;JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/cast/zzbt;->zzP(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/cast/zzbt;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/cast/zzbt;->zzP(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/cast/zzbt;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/zzbt;->zzz:I

    return-void
.end method

.method private static zzP(I)Lcom/google/android/gms/common/api/ApiException;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    return-object p0
.end method

.method private final zzQ(Lcom/google/android/gms/cast/internal/zzai;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    const-string v0, "castDeviceControllerListenerKey"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    const-string v0, "Key must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    const/16 v0, 0x20df

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zzR()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/zzbt;->zzl()Z

    move-result v0

    const-string v1, "Not connected to device"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzS()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzT(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    const/16 v1, 0x9ad

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/zzbt;->zzU(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzU(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/cast/zzbt;->zzP(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzV()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/zzbt;->zzz:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Not active connection"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/cast/zzbt;)Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzj:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzj:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/cast/zzbt;->zzj:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/cast/zzbt;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/cast/zzbt;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method static bridge synthetic zzr()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/internal/zzai;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzbt;->zzQ(Lcom/google/android/gms/cast/internal/zzai;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/cast/zzbt;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/zzbt;->zzy:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzp:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzq:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/cast/zzbt;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/cast/zzbt;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/cast/zzbt;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/cast/zzbt;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/cast/zzbt;)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/zzbt;->zzt:I

    iput v0, p0, Lcom/google/android/gms/cast/zzbt;->zzu:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzp:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzq:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/cast/zzbt;->zzr:D

    invoke-virtual {p0}, Lcom/google/android/gms/cast/zzbt;->zzn()D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/cast/zzbt;->zzs:Z

    iput-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzv:Lcom/google/android/gms/cast/zzav;

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zza;->zza()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zzq:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzq:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/zzbt;->zzl:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v0, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzx:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/cast/zzbt;->zzl:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/cast/zzbt;->zzl:Z

    return-void
.end method


# virtual methods
.method final synthetic zzG(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzR()V

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/internal/zzag;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/android/gms/cast/internal/zzag;->zzg(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/cast/zzbt;->zzT(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method final synthetic zzH(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzR()V

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/cast/internal/zzag;->zzh(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    invoke-direct {p0, p4}, Lcom/google/android/gms/cast/zzbt;->zzT(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method final synthetic zzI(Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzV()V

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/internal/zzag;->zzr(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzm:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzR()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/google/android/gms/cast/internal/zzag;->zzm(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/cast/zzbt;->zzd:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzK(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzV()V

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/zzag;->zzr(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/internal/zzag;->zzk(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzN(Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzR()V

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/internal/zzag;->zzp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/zzbt;->zzo:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/cast/zzbt;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz p2, :cond_0

    const/16 p2, 0x7d1

    invoke-static {p2}, Lcom/google/android/gms/cast/zzbt;->zzP(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/cast/zzbt;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zze()Lcom/google/android/gms/tasks/Task;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zza:Lcom/google/android/gms/cast/zzbs;

    const-string v1, "castDeviceControllerListenerKey"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/zzbe;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/zzbe;-><init>(Lcom/google/android/gms/cast/zzbt;)V

    sget-object v3, Lcom/google/android/gms/cast/zzbf;->zza:Lcom/google/android/gms/cast/zzbf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/cast/zzax;->zzb:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    const/16 v1, 0x20ec

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegistrationMethods;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/tasks/Task;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/cast/zzba;->zza:Lcom/google/android/gms/cast/zzba;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x20d3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzbt;->zzS()V

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zza:Lcom/google/android/gms/cast/zzbs;

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/zzbt;->zzQ(Lcom/google/android/gms/cast/internal/zzai;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/cast/zzbb;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/cast/zzbb;-><init>(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 v0, 0x20de

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzbg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/google/android/gms/cast/zzbg;-><init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 p2, 0x20d5

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/cast/zzbt;->zzg:Lcom/google/android/gms/cast/internal/Logger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size524288"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbt;->zze:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzbh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzbh;-><init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 p2, 0x20dd

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/cast/zzq;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/zzbt;->zzz:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzn()D
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbt;->zzw:Lcom/google/android/gms/cast/CastDevice;

    const-string v5, "Chromecast Audio"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method
