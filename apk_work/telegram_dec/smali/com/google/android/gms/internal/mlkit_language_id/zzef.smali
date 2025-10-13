.class public Lcom/google/android/gms/internal/mlkit_language_id/zzef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzef;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzef;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzef;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzef;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzef;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
