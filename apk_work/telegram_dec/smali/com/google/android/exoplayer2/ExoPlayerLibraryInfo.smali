.class public abstract Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final registeredModules:Ljava/util/HashSet;

.field private static registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    const-string v0, "goog.exo.core"

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized registerModule(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registeredModules()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
