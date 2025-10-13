.class public Lcom/google/android/gms/internal/vision/zzio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzio$zza;
    }
.end annotation


# static fields
.field private static volatile zzc:Lcom/google/android/gms/internal/vision/zzio;

.field private static volatile zzd:Lcom/google/android/gms/internal/vision/zzio;

.field private static final zze:Lcom/google/android/gms/internal/vision/zzio;


# instance fields
.field private final zzf:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzio;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzio;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzio;->zze:Lcom/google/android/gms/internal/vision/zzio;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/vision/zzio;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/vision/zzio;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zze:Lcom/google/android/gms/internal/vision/zzio;

    sput-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

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

.method public static zzc()Lcom/google/android/gms/internal/vision/zzio;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/vision/zzio;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zziz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vision/zzkk;I)Lcom/google/android/gms/internal/vision/zzjb$zze;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzio$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzio$zza;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
