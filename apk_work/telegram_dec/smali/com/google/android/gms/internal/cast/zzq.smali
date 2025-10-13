.class public final Lcom/google/android/gms/internal/cast/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:I

.field private final zzd:J

.field private final zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzi(Lcom/google/android/gms/internal/cast/zzp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzc(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzb:J

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zza(Lcom/google/android/gms/internal/cast/zzp;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzc:I

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzd(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zzd:J

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzp;->zzb(Lcom/google/android/gms/internal/cast/zzp;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzq;->zze:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/cast/zznq;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzq;->zza:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zznq;->zza()Lcom/google/android/gms/internal/cast/zznp;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0x14

    const/16 v6, 0xd

    const/16 v7, 0x11

    const/16 v8, 0x15

    const/4 v9, 0x7

    const/16 v10, 0x13

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/4 v13, 0x5

    const/16 v14, 0x12

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x10

    const/16 v21, 0xe

    const/16 v22, 0xa

    const/16 v23, 0x9

    const/16 v24, 0xf

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "queueFetchItemIds"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "activeTracks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "trackStyle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "queueReorder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "queueFetchItemRange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "pause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "stop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "seek"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "play"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "mute"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "load"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "setPlaybackRate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "volume"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "queueUpdate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_e
    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_f
    const-string v3, "skipAd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_10
    const-string v3, "volume-mute"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_11
    const-string v3, "setPlaybackDevices"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_12
    const-string v3, "queueFetchItems"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_13
    const-string v3, "queueRemove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_14
    const-string v3, "launch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_15
    const-string v3, "queueInsert"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    const/4 v4, 0x1

    goto :goto_2

    :pswitch_0
    const/16 v4, 0x17

    goto :goto_2

    :pswitch_1
    const/16 v4, 0x16

    goto :goto_2

    :pswitch_2
    const/16 v4, 0x15

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x14

    goto :goto_2

    :pswitch_4
    const/16 v4, 0x13

    goto :goto_2

    :pswitch_5
    const/16 v4, 0x12

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x11

    goto :goto_2

    :pswitch_7
    const/16 v4, 0x10

    goto :goto_2

    :pswitch_8
    const/16 v4, 0xf

    goto :goto_2

    :pswitch_9
    const/16 v4, 0xe

    goto :goto_2

    :pswitch_a
    const/16 v4, 0xd

    goto :goto_2

    :pswitch_b
    const/16 v4, 0xc

    goto :goto_2

    :pswitch_c
    const/16 v4, 0xa

    goto :goto_2

    :pswitch_d
    const/16 v4, 0x9

    goto :goto_2

    :pswitch_e
    const/16 v4, 0x8

    goto :goto_2

    :pswitch_f
    const/4 v4, 0x7

    goto :goto_2

    :pswitch_10
    const/4 v4, 0x6

    goto :goto_2

    :pswitch_11
    const/4 v4, 0x5

    goto :goto_2

    :pswitch_12
    const/4 v4, 0x4

    goto :goto_2

    :pswitch_13
    const/4 v4, 0x3

    goto :goto_2

    :pswitch_14
    const/4 v4, 0x2

    :goto_2
    :pswitch_15
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zznp;->zze(I)Lcom/google/android/gms/internal/cast/zznp;

    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zzb:J

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzb(I)Lcom/google/android/gms/internal/cast/zznp;

    iget v1, v0, Lcom/google/android/gms/internal/cast/zzq;->zzc:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzd(I)Lcom/google/android/gms/internal/cast/zznp;

    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zzd:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zzc(I)Lcom/google/android/gms/internal/cast/zznp;

    iget-wide v3, v0, Lcom/google/android/gms/internal/cast/zzq;->zze:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznp;->zza(I)Lcom/google/android/gms/internal/cast/zznp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zznq;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x46e808d6 -> :sswitch_15
        -0x4226dc4d -> :sswitch_14
        -0x380dd30b -> :sswitch_13
        -0x37d356e9 -> :sswitch_12
        -0x37752a80 -> :sswitch_11
        -0x36e71314 -> :sswitch_10
        -0x35ad75fe -> :sswitch_f
        -0x3532300e -> :sswitch_e
        -0x325892c6 -> :sswitch_d
        -0x305518e6 -> :sswitch_c
        -0x17fa60e3 -> :sswitch_b
        0x32c4e6 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x348b34 -> :sswitch_8
        0x35ce78 -> :sswitch_7
        0x360802 -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x1f50ffc1 -> :sswitch_4
        0x3670baaa -> :sswitch_3
        0x447a5326 -> :sswitch_2
        0x5684c72e -> :sswitch_1
        0x6fa62e3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_15
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzq;->zzf:J

    return-void
.end method
