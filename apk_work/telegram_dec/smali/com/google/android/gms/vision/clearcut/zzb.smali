.class public final Lcom/google/android/gms/vision/clearcut/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/Object;

.field private zzc:J


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zzb:Ljava/lang/Object;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zzc:J

    const-wide p1, 0x40dd4c0000000000L    # 30000.0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zza:J

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zza:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/vision/clearcut/zzb;->zzc:J

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
