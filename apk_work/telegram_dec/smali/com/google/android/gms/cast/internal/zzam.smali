.class final Lcom/google/android/gms/cast/internal/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/internal/zzas;

.field final synthetic zzb:Lcom/google/android/gms/cast/internal/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzam;->zzb:Lcom/google/android/gms/cast/internal/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzam;->zza:Lcom/google/android/gms/cast/internal/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzam;->zza:Lcom/google/android/gms/cast/internal/zzas;

    if-eqz v1, :cond_1

    const/16 v1, 0x7d1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/cast/internal/zzam;->zzb:Lcom/google/android/gms/cast/internal/zzaq;

    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzi(Lcom/google/android/gms/cast/internal/zzaq;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    iget-object v2, v2, Lcom/google/android/gms/cast/internal/zzp;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v3, "Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/cast/internal/zzam;->zzb:Lcom/google/android/gms/cast/internal/zzaq;

    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzM(Lcom/google/android/gms/cast/internal/zzaq;)Lcom/google/android/gms/cast/internal/zzan;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/cast/internal/zzan;->zzl()V

    const/16 v7, 0x7d1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/cast/internal/zzam;->zza:Lcom/google/android/gms/cast/internal/zzas;

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-interface/range {v3 .. v12}, Lcom/google/android/gms/cast/internal/zzas;->zza(Ljava/lang/String;JILjava/lang/Object;JJ)V

    :cond_1
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzam;->zza:Lcom/google/android/gms/cast/internal/zzas;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/zzas;->zzb(Ljava/lang/String;JJJ)V

    :cond_0
    return-void
.end method
