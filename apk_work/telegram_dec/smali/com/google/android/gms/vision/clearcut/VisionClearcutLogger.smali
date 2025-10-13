.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    const-string v1, "VISION"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/zzfi$zzo;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzhf;->zzh()[B

    move-result-object p2

    if-ltz p1, :cond_2

    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->setEventCode(I)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zza()Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzio;->zzc()Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {p1, p2, v1, v3, v2}, Lcom/google/android/gms/internal/vision/zzhe;->zza([BIILcom/google/android/gms/internal/vision/zzio;)Lcom/google/android/gms/internal/vision/zzhe;

    const-string p2, "Would have logged:\n%s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "Parsing error"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Ljava/lang/Throwable;)V

    const-string p2, "Failed to log"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Illegal event code: %d"

    invoke-static {p1, p2}, Lcom/google/android/gms/vision/L;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
