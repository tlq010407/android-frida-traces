.class final Lcom/google/android/gms/internal/mlkit_language_id/zzgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgp;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:[I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

.field private final zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

.field private final zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

.field private final zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

.field private final zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_language_id/zzfz;ZZ[IIILcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzi:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzj:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzk:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzl:[I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzm:I

    iput p10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzn:I

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzfx;Lcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)Lcom/google/android/gms/internal/mlkit_language_id/zzgd;
    .locals 31

    .line 0
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/mlkit_language_id/zzgl;->zzb:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    :goto_b
    sget-object v8, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;->zze()[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v17, v5

    mul-int/lit8 v5, v12, 0x3

    new-array v5, v5, [I

    shl-int/2addr v12, v4

    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v13

    move v13, v7

    move/from16 v21, v15

    move/from16 v7, v17

    move/from16 v22, v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v7, v2, :cond_33

    add-int/lit8 v23, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_16

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_e

    :cond_17
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_e
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_f

    :cond_18
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_10

    :cond_19
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v17, 0x1

    aput v20, v14, v17

    move/from16 v17, v10

    :cond_1a
    const/16 v10, 0x33

    move/from16 v28, v9

    if-lt v15, v10, :cond_22

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v29, 0xd

    :goto_11
    add-int/lit8 v30, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_1b

    and-int/lit16 v9, v10, 0x1fff

    shl-int v9, v9, v29

    or-int/2addr v4, v9

    add-int/lit8 v29, v29, 0xd

    move/from16 v10, v30

    const v9, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v9, v10, v29

    or-int/2addr v4, v9

    move/from16 v10, v30

    :cond_1c
    add-int/lit8 v9, v15, -0x33

    move/from16 v29, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_1f

    const/16 v10, 0x11

    if-ne v9, v10, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v10, 0xc

    if-ne v9, v10, :cond_1e

    if-nez v11, :cond_1e

    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move v13, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_13

    :cond_1f
    :goto_12
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v24, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move/from16 v13, v24

    :goto_13
    shl-int/2addr v4, v10

    aget-object v9, v16, v4

    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_20

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v16, v4

    :goto_14
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/lit8 v4, v4, 0x1

    aget-object v9, v16, v4

    move/from16 v25, v10

    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v16, v4

    :goto_15
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    move/from16 v18, v13

    move/from16 v10, v25

    move/from16 v25, v29

    move-object/from16 v29, v0

    move-object v13, v1

    move v0, v4

    const/4 v4, 0x0

    goto/16 :goto_22

    :cond_22
    add-int/lit8 v9, v13, 0x1

    aget-object v10, v16, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    move-object/from16 v29, v0

    const/16 v0, 0x9

    if-eq v15, v0, :cond_23

    const/16 v0, 0x11

    if-ne v15, v0, :cond_24

    :cond_23
    const/16 v24, 0x1

    goto/16 :goto_1a

    :cond_24
    const/16 v0, 0x1b

    if-eq v15, v0, :cond_25

    const/16 v0, 0x31

    if-ne v15, v0, :cond_26

    :cond_25
    const/16 v24, 0x1

    goto :goto_19

    :cond_26
    const/16 v0, 0xc

    if-eq v15, v0, :cond_2a

    const/16 v0, 0x1e

    if-eq v15, v0, :cond_2a

    const/16 v0, 0x2c

    if-ne v15, v0, :cond_27

    goto :goto_17

    :cond_27
    const/16 v0, 0x32

    if-ne v15, v0, :cond_28

    add-int/lit8 v0, v21, 0x1

    aput v20, v14, v21

    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v21

    and-int/lit16 v9, v2, 0x800

    if-eqz v9, :cond_29

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v9, v13, 0x3

    aget-object v13, v16, v25

    aput-object v13, v12, v21

    move/from16 v21, v0

    :cond_28
    :goto_16
    move v0, v9

    goto :goto_1b

    :cond_29
    move/from16 v21, v0

    move/from16 v0, v25

    goto :goto_1b

    :cond_2a
    :goto_17
    if-nez v11, :cond_2b

    div-int/lit8 v0, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v13, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v0

    :goto_18
    move v0, v13

    goto :goto_1b

    :cond_2b
    const/16 v24, 0x1

    goto :goto_16

    :goto_19
    div-int/lit8 v0, v20, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v13, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v0

    goto :goto_18

    :goto_1a
    div-int/lit8 v0, v20, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v0

    goto :goto_16

    :goto_1b
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    and-int/lit16 v9, v2, 0x1000

    const/16 v13, 0x1000

    if-ne v9, v13, :cond_2f

    const/16 v9, 0x11

    if-gt v15, v9, :cond_2f

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v13, 0xd800

    if-lt v4, v13, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    const/16 v18, 0xd

    :goto_1c
    add-int/lit8 v25, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v18

    or-int/2addr v4, v9

    add-int/lit8 v18, v18, 0xd

    move/from16 v9, v25

    goto :goto_1c

    :cond_2c
    shl-int v9, v9, v18

    or-int/2addr v4, v9

    :goto_1d
    const/4 v9, 0x1

    goto :goto_1e

    :cond_2d
    move/from16 v25, v9

    goto :goto_1d

    :goto_1e
    shl-int/lit8 v18, v3, 0x1

    div-int/lit8 v24, v4, 0x20

    add-int v18, v18, v24

    aget-object v9, v16, v18

    instance-of v13, v9, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2e

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_1f
    move/from16 v18, v0

    move-object v13, v1

    goto :goto_20

    :cond_2e
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v16, v18

    goto :goto_1f

    :goto_20
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v4, v4, 0x20

    move v0, v1

    goto :goto_21

    :cond_2f
    move/from16 v18, v0

    move-object v13, v1

    const v0, 0xfffff

    move/from16 v25, v4

    const/4 v4, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v15, v1, :cond_30

    const/16 v1, 0x31

    if-gt v15, v1, :cond_30

    add-int/lit8 v1, v22, 0x1

    aput v10, v14, v22

    move/from16 v22, v1

    :cond_30
    :goto_22
    add-int/lit8 v1, v20, 0x1

    aput v7, v5, v20

    add-int/lit8 v7, v20, 0x2

    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_31

    const/high16 v9, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v9, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v2, v9

    shl-int/lit8 v9, v15, 0x14

    or-int/2addr v2, v9

    or-int/2addr v2, v10

    aput v2, v5, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v1, v4, 0x14

    or-int/2addr v0, v1

    aput v0, v5, v7

    move-object v1, v13

    move/from16 v13, v18

    move/from16 v10, v23

    move/from16 v7, v25

    move/from16 v2, v26

    move/from16 v15, v27

    move/from16 v9, v28

    move-object/from16 v0, v29

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_33
    move-object/from16 v29, v0

    move/from16 v28, v9

    move/from16 v23, v10

    move/from16 v27, v15

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/mlkit_language_id/zzgm;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v10

    const/4 v1, 0x0

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    move-object v7, v12

    move/from16 v8, v28

    move/from16 v9, v23

    move v12, v1

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_language_id/zzfz;ZZ[IIILcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)V

    return-object v0

    :cond_34
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private final zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;
    .locals 3

    .line 0
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzgk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgk;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 1

    .line 0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;ILjava/lang/Object;I)V
    .locals 1

    .line 0
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzfq;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzfq;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 9

    .line 0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v7

    :cond_0
    return v6

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v7

    :cond_1
    return v6

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v7

    :cond_2
    return v6

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v7

    :cond_3
    return v6

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v7

    :cond_4
    return v6

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v7

    :cond_5
    return v6

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v7

    :cond_6
    return v6

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v7

    :cond_7
    return v6

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v7

    :cond_8
    return v6

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v7

    :cond_9
    return v6

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v7

    :cond_b
    return v6

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v7

    :cond_d
    return v6

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v7

    :cond_e
    return v6

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v7

    :cond_f
    return v6

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v7

    :cond_10
    return v6

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v7

    :cond_11
    return v6

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v7

    :cond_12
    return v6

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v7

    :cond_13
    return v6

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v7, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v7

    :cond_15
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2

    .line 0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 0
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_language_id/zzgp;)Z
    .locals 2

    .line 0
    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzc(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Object;J)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 5

    .line 0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2

    .line 0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzd()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v6, v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    iget-boolean v9, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzj:Z

    if-nez v9, :cond_2

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_12

    :pswitch_0
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto :goto_3

    :pswitch_1
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzf(II)V

    goto :goto_3

    :pswitch_3
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(II)V

    goto :goto_3

    :pswitch_5
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(II)V

    goto :goto_3

    :pswitch_6
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(II)V

    goto :goto_3

    :pswitch_7
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    goto :goto_3

    :pswitch_8
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzf(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    :goto_4
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_5
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_6
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_7
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_8
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_9
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :goto_a
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_b
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_c
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_d
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_e
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_f
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_10
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    :goto_11
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_23
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_5

    :pswitch_24
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_6

    :pswitch_25
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_7

    :pswitch_26
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_8

    :pswitch_27
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_9

    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    goto/16 :goto_a

    :pswitch_2c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_b

    :pswitch_2d
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_c

    :pswitch_2e
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_d

    :pswitch_2f
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_e

    :pswitch_30
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_f

    :pswitch_31
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_10

    :pswitch_32
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v10

    goto/16 :goto_11

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_12

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(IJ)V

    goto/16 :goto_12

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzf(II)V

    goto/16 :goto_12

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(IJ)V

    goto/16 :goto_12

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(II)V

    goto/16 :goto_12

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(II)V

    goto/16 :goto_12

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(II)V

    goto/16 :goto_12

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    goto/16 :goto_12

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_12

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto :goto_12

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IZ)V

    goto :goto_12

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(II)V

    goto :goto_12

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(IJ)V

    goto :goto_12

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(II)V

    goto :goto_12

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(IJ)V

    goto :goto_12

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IJ)V

    goto :goto_12

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IF)V

    goto :goto_12

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ID)V

    :cond_6
    :goto_12
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_13
    if-eqz v5, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_13

    :cond_8
    const/4 v5, 0x0

    goto :goto_13

    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)F
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzc(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzd(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zze(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzf(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    goto/16 :goto_b

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    :goto_5
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(J)I

    move-result v3

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzf(Ljava/lang/Object;J)Z

    move-result v3

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Z)I

    move-result v3

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_12
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;J)F

    move-result v3

    :goto_8
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    goto/16 :goto_5

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_b

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_5

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_a

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v3

    goto :goto_7

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_8

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_9

    :cond_1
    :goto_b
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_b
        :pswitch_17
        :pswitch_8
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_9
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

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V
    .locals 13

    .line 0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/mlkit_language_id/zzia;->zzb:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zze()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_3
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_15

    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_4
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(IJ)V

    goto/16 :goto_15

    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_5
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzf(II)V

    goto/16 :goto_15

    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_6
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(IJ)V

    goto/16 :goto_15

    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_7
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(II)V

    goto/16 :goto_15

    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_8
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(II)V

    goto/16 :goto_15

    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_9
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(II)V

    goto/16 :goto_15

    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_a
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    goto/16 :goto_15

    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_b
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_15

    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_c
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_15

    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzf(Ljava/lang/Object;J)Z

    move-result v8

    :goto_d
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IZ)V

    goto/16 :goto_15

    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_e
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(II)V

    goto/16 :goto_15

    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_f
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(IJ)V

    goto/16 :goto_15

    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v8

    :goto_10
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(II)V

    goto/16 :goto_15

    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_11
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(IJ)V

    goto/16 :goto_15

    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_12
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IJ)V

    goto/16 :goto_15

    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;J)F

    move-result v8

    :goto_13
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IF)V

    goto/16 :goto_15

    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_14
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ID)V

    goto/16 :goto_15

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;ILjava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_15

    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_15

    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_15

    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_15

    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_15

    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_3

    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_4

    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_5

    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_6

    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_7

    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_8

    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_9

    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_a

    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_b

    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_c

    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_d

    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_e

    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_f

    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_10

    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_11

    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_12

    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_13

    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_14

    :cond_3
    :goto_15
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_16
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_16

    :cond_5
    move-object v1, v3

    goto :goto_16

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzj:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzd()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_17

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_17
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v7, :cond_c

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    :goto_19
    if-eqz v1, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_19

    :cond_9
    move-object v1, v3

    goto :goto_19

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_2c

    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_1a
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_2c

    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1b
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(IJ)V

    goto/16 :goto_2c

    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_1c
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzf(II)V

    goto/16 :goto_2c

    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1d
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(IJ)V

    goto/16 :goto_2c

    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_1e
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(II)V

    goto/16 :goto_2c

    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_1f
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzb(II)V

    goto/16 :goto_2c

    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_20
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zze(II)V

    goto/16 :goto_2c

    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_21
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)V

    goto/16 :goto_2c

    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_22
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_2c

    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_23
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_2c

    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzf(Ljava/lang/Object;J)Z

    move-result v9

    :goto_24
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IZ)V

    goto/16 :goto_2c

    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_25
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(II)V

    goto/16 :goto_2c

    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_26
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzd(IJ)V

    goto/16 :goto_2c

    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v9

    :goto_27
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(II)V

    goto/16 :goto_2c

    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_28
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zzc(IJ)V

    goto/16 :goto_2c

    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_29
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IJ)V

    goto/16 :goto_2c

    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;J)F

    move-result v9

    :goto_2a
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(IF)V

    goto/16 :goto_2c

    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v11

    :goto_2b
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzib;->zza(ID)V

    goto/16 :goto_2c

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;ILjava/lang/Object;I)V

    goto/16 :goto_2c

    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_2c

    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_2c

    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)V

    goto/16 :goto_2c

    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    goto/16 :goto_2c

    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzib;Z)V

    goto/16 :goto_2c

    :pswitch_78
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_1a

    :pswitch_79
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1b

    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1c

    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1d

    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1e

    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1f

    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_20

    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_21

    :pswitch_80
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_22

    :pswitch_81
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_23

    :pswitch_82
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    goto/16 :goto_24

    :pswitch_83
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_25

    :pswitch_84
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_26

    :pswitch_85
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_27

    :pswitch_86
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_28

    :pswitch_87
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_29

    :pswitch_88
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v9

    goto/16 :goto_2a

    :pswitch_89
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    goto/16 :goto_2b

    :cond_b
    :goto_2c
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_18

    :cond_c
    :goto_2d
    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzib;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_d
    move-object v1, v3

    goto :goto_2d

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzib;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 5

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzm:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzn:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzl:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzl:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzl:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhh;->zzb(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zzc(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_2
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfs;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_6

    :pswitch_5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JJ)V

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JI)V

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JZ)V

    goto :goto_3

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JF)V

    goto/16 :goto_3

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JD)V

    goto/16 :goto_3

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzee;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 17

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzm:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_a

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzl:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v12, v2, v11

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    const/high16 v0, 0xff00000

    and-int/2addr v0, v13

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    const/16 v1, 0x11

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x44

    if-eq v0, v1, :cond_5

    const/16 v1, 0x31

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    and-int v1, v13, v8

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzfq;

    const/4 v0, 0x0

    throw v0

    :cond_5
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_language_id/zzgp;)Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_6
    and-int v0, v13, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgp;->zzc(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v9

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_language_id/zzgp;)Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzf()Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    return v3
.end method

.method public final zzd(Ljava/lang/Object;)I
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzj:Z

    const/high16 v3, 0xff00000

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v14, v14

    if-ge v12, v14, :cond_3

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v4, v14

    sget-object v14, Lcom/google/android/gms/internal/mlkit_language_id/zzek;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzek;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzek;->zza()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/mlkit_language_id/zzek;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzek;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzek;->zza()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_1
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(ILcom/google/android/gms/internal/mlkit_language_id/zzfz;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v3

    :goto_2
    add-int/2addr v13, v3

    goto/16 :goto_16

    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_3
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(IJ)I

    move-result v3

    goto :goto_2

    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    :goto_4
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(II)I

    move-result v3

    goto :goto_2

    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_5
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(IJ)I

    move-result v3

    goto :goto_2

    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_6
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzj(II)I

    move-result v3

    goto :goto_2

    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    :goto_7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzk(II)I

    move-result v3

    goto :goto_2

    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    :goto_8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(II)I

    move-result v3

    goto :goto_2

    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_9
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_a
    check-cast v4, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)I

    move-result v3

    goto :goto_2

    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v3

    goto :goto_2

    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz v5, :cond_1

    :goto_c
    goto :goto_a

    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_d
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IZ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_e
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzi(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_f
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v4

    :goto_10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_11
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_12
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_13
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IF)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_14
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ID)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v14, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    :goto_15
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_16
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_17
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_18
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_19
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_1a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_1b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_1c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_15

    :pswitch_1d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_15

    :pswitch_1e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_15

    :pswitch_1f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_15

    :pswitch_20
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_15

    :pswitch_21
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_15

    :pswitch_22
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_28
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_29
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2a
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2c
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2d
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2e
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_1

    :pswitch_30
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_3

    :pswitch_31
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_32
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_7

    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_8

    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_9

    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_b

    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz v5, :cond_1

    goto/16 :goto_c

    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_d

    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_e

    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_f

    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_10

    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_11

    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_12

    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_13

    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_14

    :cond_2
    :goto_16
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v12, 0x0

    :goto_17
    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    array-length v13, v13

    if-ge v3, v13, :cond_d

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzc:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v6, v17, 0x14

    const/16 v11, 0x11

    if-gt v6, v11, :cond_5

    add-int/lit8 v11, v3, 0x2

    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v8, v11

    if-eq v14, v5, :cond_6

    int-to-long v8, v14

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v14

    goto :goto_18

    :cond_5
    const/4 v11, 0x0

    :cond_6
    :goto_18
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v6, :pswitch_data_1

    goto :goto_1b

    :pswitch_41
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_19
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(ILcom/google/android/gms/internal/mlkit_language_id/zzfz;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v6

    :goto_1a
    add-int/2addr v4, v6

    :cond_7
    :goto_1b
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1c
    const-wide/16 v13, 0x0

    goto/16 :goto_2e

    :pswitch_42
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_1d
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(IJ)I

    move-result v6

    goto :goto_1a

    :pswitch_43
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v6

    :goto_1e
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(II)I

    move-result v6

    goto :goto_1a

    :pswitch_44
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1f
    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzh(IJ)I

    move-result v6

    goto :goto_1a

    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_20
    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzj(II)I

    move-result v8

    :goto_21
    add-int/2addr v4, v8

    goto :goto_1b

    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v6

    :goto_22
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzk(II)I

    move-result v6

    goto :goto_1a

    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v6

    :goto_23
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(II)I

    move-result v6

    goto :goto_1a

    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_24
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    :goto_25
    check-cast v6, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzc(ILcom/google/android/gms/internal/mlkit_language_id/zzdn;)I

    move-result v6

    goto :goto_1a

    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_26
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz v8, :cond_8

    :goto_27
    goto :goto_25

    :cond_8
    check-cast v6, Ljava/lang/String;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_28
    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IZ)I

    move-result v8

    goto :goto_21

    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzi(II)I

    move-result v8

    goto :goto_21

    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(IJ)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzd(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(II)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(IJ)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(IJ)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IF)I

    move-result v8

    goto/16 :goto_21

    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ID)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_53
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzs:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzb(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_54
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_55
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    :goto_29
    invoke-static {v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    goto/16 :goto_21

    :pswitch_56
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_57
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto :goto_29

    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto/16 :goto_29

    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto/16 :goto_29

    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto/16 :goto_29

    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto/16 :goto_29

    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_7

    goto/16 :goto_29

    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc(ILjava/util/List;Z)I

    move-result v6

    :goto_2a
    add-int/2addr v4, v6

    :cond_9
    :goto_2b
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_1c

    :pswitch_64
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzg(ILjava/util/List;Z)I

    move-result v6

    goto :goto_2a

    :pswitch_65
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Z)I

    move-result v6

    goto :goto_2a

    :pswitch_66
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzh(ILjava/util/List;Z)I

    move-result v6

    goto :goto_2a

    :pswitch_67
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzd(ILjava/util/List;Z)I

    move-result v6

    goto :goto_2a

    :pswitch_68
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzf(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_69
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_6a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(I)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_language_id/zzgp;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_6b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_6c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzj(ILjava/util/List;Z)I

    move-result v6

    goto :goto_2a

    :pswitch_6d
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zze(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2a

    :pswitch_6e
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2a

    :pswitch_6f
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2a

    :pswitch_70
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzi(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_1a

    :pswitch_71
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_19

    :pswitch_72
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_1d

    :pswitch_73
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_1e

    :pswitch_74
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_1f

    :pswitch_75
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_20

    :pswitch_76
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_22

    :pswitch_77
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_23

    :pswitch_78
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_24

    :pswitch_79
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_26

    :pswitch_7a
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lcom/google/android/gms/internal/mlkit_language_id/zzdn;

    if-eqz v8, :cond_8

    goto/16 :goto_27

    :pswitch_7b
    and-int v6, v12, v11

    if-eqz v6, :cond_7

    goto/16 :goto_28

    :pswitch_7c
    const/4 v6, 0x1

    and-int v8, v12, v11

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzi(II)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_2b

    :pswitch_7d
    const/4 v6, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v11

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_a

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzg(IJ)I

    move-result v8

    :goto_2c
    add-int/2addr v4, v8

    :cond_a
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto :goto_2e

    :pswitch_7e
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzf(II)I

    move-result v8

    goto :goto_2c

    :pswitch_7f
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zze(IJ)I

    move-result v8

    goto :goto_2c

    :pswitch_80
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzd(IJ)I

    move-result v8

    goto :goto_2c

    :pswitch_81
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(IF)I

    move-result v9

    add-int/2addr v4, v9

    :goto_2d
    const-wide/16 v6, 0x0

    goto :goto_2e

    :cond_b
    const/4 v8, 0x0

    goto :goto_2d

    :pswitch_82
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v11

    const-wide/16 v6, 0x0

    if-eqz v9, :cond_c

    invoke-static {v15, v6, v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzea;->zzb(ID)I

    move-result v11

    add-int/2addr v4, v11

    :cond_c
    :goto_2e
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_17

    :cond_d
    const/4 v10, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzq:Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzh:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zzr:Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzee;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    move-result-object v1

    const/4 v11, 0x0

    :goto_2f
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzgq;->zzc()I

    move-result v2

    const/4 v3, 0x0

    if-ge v11, v2, :cond_e

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzgq;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzel;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_e
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzgq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgq;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzel;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_30

    :cond_f
    add-int/2addr v4, v10

    :cond_10
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_24
        :pswitch_25
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_24
        :pswitch_25
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_66
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_65
        :pswitch_66
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method
