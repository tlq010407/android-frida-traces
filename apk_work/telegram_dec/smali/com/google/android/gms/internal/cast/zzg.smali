.class public final Lcom/google/android/gms/internal/cast/zzg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Z

.field private static final zzc:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field zzb:Lcom/google/android/datatransport/Transport;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/cast/internal/zzn;

.field private final zzf:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzg:Lcom/google/android/gms/internal/cast/zzbn;

.field private final zzh:Lcom/google/android/gms/internal/cast/zzaf;

.field private final zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/Long;

.field private final zzk:Ljava/util/concurrent/ExecutorService;

.field private zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ClientCastAnalytics"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzg;->zza:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzg;->zze:Lcom/google/android/gms/cast/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzg;->zzg:Lcom/google/android/gms/internal/cast/zzbn;

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzec;->zza()Lcom/google/android/gms/internal/cast/zzdz;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzk:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)Lcom/google/android/gms/internal/cast/zzg;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/cast/zzg;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzaf;)V

    return-object v6
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;ILandroid/content/SharedPreferences;Landroid/os/Bundle;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzg:Lcom/google/android/gms/internal/cast/zzbn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    const/4 v2, 0x3

    const-class v3, Lcom/google/android/gms/cast/framework/CastSession;

    const/4 v4, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v4, :cond_1

    const/4 p2, 0x2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    new-instance v5, Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {v5, p0, v2, p1}, Lcom/google/android/gms/internal/cast/zzv;-><init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cast/zzt;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/cast/zzt;-><init>(Lcom/google/android/gms/internal/cast/zzv;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/cast/zzu;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/cast/zzu;-><init>(Lcom/google/android/gms/internal/cast/zzv;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzbn;->zzm(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V

    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v4, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzg;->zzh:Lcom/google/android/gms/internal/cast/zzaf;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzk;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v9, p4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/cast/zzk;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzi;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzi;-><init>(Lcom/google/android/gms/internal/cast/zzk;)V

    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    if-eqz v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/cast/zzj;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzj;-><init>(Lcom/google/android/gms/internal/cast/zzk;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzm(Lcom/google/android/gms/cast/framework/SessionTransferCallback;)V

    :cond_3
    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x2

    const-string v1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v5, v7, v4

    const-string v8, "client_cast_analytics_data"

    aput-object v8, v7, v3

    const-string v8, "%s.%s"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object v0

    sget-object v7, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-virtual {v0, v7}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object v0

    const-string v7, "proto"

    invoke-static {v7}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/cast/zze;->zza:Lcom/google/android/gms/internal/cast/zze;

    const-string v9, "CAST_SENDER_SDK"

    const-class v10, Lcom/google/android/gms/internal/cast/zzno;

    invoke-interface {v0, v9, v10, v7, v8}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzb:Lcom/google/android/datatransport/Transport;

    const-string v0, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzj:Ljava/lang/Long;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzd:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zze:Lcom/google/android/gms/cast/internal/zzn;

    const-string v6, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    const-string v7, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/cast/internal/zze;

    invoke-direct {v8, v0, v6}, Lcom/google/android/gms/cast/internal/zze;-><init>(Lcom/google/android/gms/cast/internal/zzn;[Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v6

    new-array v3, v3, [Lcom/google/android/gms/common/Feature;

    sget-object v7, Lcom/google/android/gms/cast/zzax;->zzg:Lcom/google/android/gms/common/Feature;

    aput-object v7, v3, v4

    invoke-virtual {v6, v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    const/16 v4, 0x20ea

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/cast/zzd;

    invoke-direct {v3, p0, v5, v1, p1}, Lcom/google/android/gms/internal/cast/zzd;-><init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0, v5}, Lcom/google/android/gms/internal/cast/zzo;->zza(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzo;->zze()V

    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzf:Lcom/google/android/gms/internal/cast/zzml;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    :cond_6
    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/cast/zzno;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzno;->zzd(Lcom/google/android/gms/internal/cast/zzno;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzj:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzi(I)Lcom/google/android/gms/internal/cast/zznn;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzl:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Lcom/google/android/datatransport/Event;->ofData(ILjava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Lcom/google/android/datatransport/Event;->ofTelemetry(ILjava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object v3

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzg;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p2, v0

    const-string v0, "analytics event: %s"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzb:Lcom/google/android/datatransport/Transport;

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_3
    return-void

    :cond_4
    throw v3
.end method

.method public final zze(Lcom/google/android/gms/internal/cast/zzno;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzf;-><init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
