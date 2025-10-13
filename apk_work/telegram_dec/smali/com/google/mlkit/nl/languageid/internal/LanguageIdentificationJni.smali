.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;
.super Lcom/google/mlkit/common/sdkinternal/ModelResource;
.source "SourceFile"


# static fields
.field private static zza:Z


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private zzd:Ljava/nio/MappedByteBuffer;

.field private zze:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_language_id/zzcv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeIdentifyLanguage(J[BF)Ljava/lang/String;
.end method

.method private native nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;
.end method

.method private native nativeInit(Ljava/nio/MappedByteBuffer;J)J
.end method

.method private static declared-synchronized zzb()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 0
    const-class v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "language_id_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zza:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Couldn\'t load language detection library."

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public load()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->checkIsRunningOnCurrentThread()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-wide v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    invoke-static {}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzb()V
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xd

    :try_start_1
    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzb:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v6, "langid_model.smfb.jpg"

    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzd:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeInit(Ljava/nio/MappedByteBuffer;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_1
    :try_start_4
    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    const-string v5, "Couldn\'t load language detection model"

    invoke-direct {v4, v5, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzq;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    :try_start_7
    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    const-string v5, "Couldn\'t open language detection model file"

    invoke-direct {v4, v5, v2, v3}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/zza;

    invoke-direct {v0, v3, v4}, Lcom/google/mlkit/nl/languageid/internal/zza;-><init>(J)V

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzaj;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V

    throw v2
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->taskQueue:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->checkIsRunningOnCurrentThread()V

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zzd:Ljava/nio/MappedByteBuffer;

    return-void
.end method

.method public final zza(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/mlkit/nl/languageid/internal/zzb;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/mlkit/nl/languageid/internal/zzb;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final zza(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5

    .line 0
    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzb;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeIdentifyLanguage(J[BF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;F)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/List<",
            "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
            ">;"
        }
    .end annotation

    .line 0
    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->zze:J

    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzb;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
