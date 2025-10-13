.class final Lcom/google/android/gms/cast/framework/media/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/media/zzbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 14

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzbl;

    new-instance v3, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v13, p4

    :try_start_1
    invoke-direct {v3, v13}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    move-object/from16 v5, p5

    instance-of v6, v5, Lcom/google/android/gms/cast/internal/zzap;

    const/4 v7, 0x0

    if-eq v4, v6, :cond_0

    move-object v5, v7

    :cond_0
    if-eqz v5, :cond_1

    :try_start_2
    move-object v4, v5

    check-cast v4, Lcom/google/android/gms/cast/internal/zzap;

    iget-object v4, v4, Lcom/google/android/gms/cast/internal/zzap;->zza:Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_0
    if-eqz v5, :cond_2

    check-cast v5, Lcom/google/android/gms/cast/internal/zzap;

    iget-object v7, v5, Lcom/google/android/gms/cast/internal/zzap;->zzb:Lcom/google/android/gms/cast/MediaError;

    :cond_2
    invoke-direct {v2, v3, v4, v7}, Lcom/google/android/gms/cast/framework/media/zzbl;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;Lcom/google/android/gms/cast/MediaError;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v13, p4

    :goto_1
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Result already set when calling onRequestCompleted"

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbk;->zzg:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    move-object v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 12

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x837

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v3, Lcom/google/android/gms/cast/framework/media/zzbj;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/cast/framework/media/zzbj;-><init>(Lcom/google/android/gms/cast/framework/media/zzbk;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Result already set when calling onRequestReplaced"

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbk;->zzg:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    const/16 v7, 0x837

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    goto :goto_1

    :cond_0
    return-void
.end method
