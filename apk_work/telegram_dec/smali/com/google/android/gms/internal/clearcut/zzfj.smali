.class final Lcom/google/android/gms/internal/clearcut/zzfj;
.super Lcom/google/android/gms/internal/clearcut/zzfg;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfg;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zze(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzq(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzff;->zzan(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final zzb(I[BII)I
    .locals 17

    .line 0
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    or-int v8, v1, v2

    array-length v9, v0

    sub-int/2addr v9, v2

    or-int/2addr v8, v9

    if-ltz v8, :cond_13

    int-to-long v8, v1

    int-to-long v1, v2

    sub-long/2addr v1, v8

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v10, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-wide v12, v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    add-long v14, v12, v10

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v12

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v5

    move-wide v12, v14

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v2, v1

    int-to-long v12, v1

    add-long/2addr v8, v12

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-lez v2, :cond_4

    add-long v12, v8, v10

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v1

    if-ltz v1, :cond_3

    add-int/2addr v2, v7

    move-wide v8, v12

    goto :goto_3

    :cond_3
    move-wide v8, v12

    :cond_4
    if-nez v2, :cond_5

    return v6

    :cond_5
    add-int/lit8 v5, v2, -0x1

    const/16 v12, -0x20

    const/16 v13, -0x41

    if-ge v1, v12, :cond_9

    if-nez v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, -0x2

    const/16 v5, -0x3e

    if-lt v1, v5, :cond_8

    add-long v14, v8, v10

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_7

    goto :goto_4

    :cond_7
    move-wide v8, v14

    goto :goto_6

    :cond_8
    :goto_4
    return v7

    :cond_9
    const/16 v14, -0x10

    const-wide/16 v15, 0x2

    if-ge v1, v14, :cond_f

    if-ge v5, v4, :cond_a

    invoke-static {v0, v1, v8, v9, v5}, Lcom/google/android/gms/internal/clearcut/zzfj;->zza([BIJI)I

    move-result v0

    return v0

    :cond_a
    add-int/lit8 v2, v2, -0x3

    add-long v4, v8, v10

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v14

    if-gt v14, v13, :cond_e

    const/16 v6, -0x60

    if-ne v1, v12, :cond_b

    if-lt v14, v6, :cond_e

    :cond_b
    const/16 v12, -0x13

    if-ne v1, v12, :cond_c

    if-ge v14, v6, :cond_e

    :cond_c
    add-long/2addr v8, v15

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_d

    goto :goto_5

    :cond_d
    const/4 v4, 0x2

    const/4 v6, 0x0

    goto :goto_2

    :cond_e
    :goto_5
    return v7

    :cond_f
    if-ge v5, v3, :cond_10

    invoke-static {v0, v1, v8, v9, v5}, Lcom/google/android/gms/internal/clearcut/zzfj;->zza([BIJI)I

    move-result v0

    return v0

    :cond_10
    add-int/lit8 v2, v2, -0x4

    add-long v4, v8, v10

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v6

    if-gt v6, v13, :cond_12

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v6, v6, 0x70

    add-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_12

    add-long v10, v8, v15

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v1

    if-gt v1, v13, :cond_12

    const-wide/16 v4, 0x3

    add-long/2addr v8, v4

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v4, 0x2

    const/4 v6, 0x0

    const-wide/16 v10, 0x1

    goto/16 :goto_2

    :cond_12
    :goto_7
    return v7

    :cond_13
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .locals 24

    .line 0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    move-wide/from16 v22, v6

    move-object/from16 v17, v10

    move-wide/from16 v20, v11

    move-wide v4, v14

    move-object v14, v9

    goto/16 :goto_3

    :cond_2
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_3

    sub-long v17, v6, v15

    cmp-long v14, v4, v17

    if-gtz v14, :cond_3

    move-object v14, v9

    move-object/from16 v17, v10

    add-long v9, v4, v11

    ushr-int/lit8 v11, v13, 0x6

    or-int/lit16 v11, v11, 0x3c0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    :goto_2
    move-wide/from16 v22, v6

    const-wide/16 v20, 0x1

    goto/16 :goto_3

    :cond_3
    move-object v14, v9

    move-object/from16 v17, v10

    const v9, 0xdfff

    const v10, 0xd800

    const-wide/16 v11, 0x3

    if-lt v13, v10, :cond_4

    if-ge v9, v13, :cond_5

    :cond_4
    sub-long v18, v6, v11

    cmp-long v20, v4, v18

    if-gtz v20, :cond_5

    const-wide/16 v18, 0x1

    add-long v9, v4, v18

    ushr-int/lit8 v11, v13, 0xc

    or-int/lit16 v11, v11, 0x1e0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v11, v4, v15

    ushr-int/lit8 v15, v13, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v3

    int-to-byte v15, v15

    invoke-static {v1, v9, v10, v15}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    const-wide/16 v9, 0x3

    add-long/2addr v4, v9

    and-int/lit8 v9, v13, 0x3f

    or-int/2addr v9, v3

    int-to-byte v9, v9

    invoke-static {v1, v11, v12, v9}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v20, v6, v11

    cmp-long v22, v4, v20

    if-gtz v22, :cond_8

    add-int/lit8 v9, v2, 0x1

    if-eq v9, v8, :cond_7

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v20, 0x1

    add-long v11, v4, v20

    ushr-int/lit8 v10, v2, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    invoke-static {v1, v4, v5, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    move-wide/from16 v22, v6

    add-long v6, v4, v15

    ushr-int/lit8 v10, v2, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v3

    int-to-byte v10, v10

    invoke-static {v1, v11, v12, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    const-wide/16 v10, 0x3

    add-long/2addr v10, v4

    ushr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v3

    int-to-byte v12, v12

    invoke-static {v1, v6, v7, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v10, v11, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    move v2, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v9, v14

    move-object/from16 v10, v17

    move-wide/from16 v11, v20

    move-wide/from16 v6, v22

    goto/16 :goto_1

    :cond_6
    move v2, v9

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_8
    if-gt v10, v13, :cond_a

    if-gt v13, v9, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v6, v17

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v14

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    move-object v7, v9

    move-object v6, v10

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method final zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 29

    .line 0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    const-string v13, " at index "

    const-string v14, "Failed writing "

    cmp-long v15, v9, v11

    if-gtz v15, :cond_c

    const/4 v9, 0x0

    :goto_0
    const-wide/16 v10, 0x1

    const/16 v12, 0x80

    if-ge v9, v8, :cond_0

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_0

    add-long/2addr v10, v4

    int-to-byte v12, v15

    invoke-static {v4, v5, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v10

    goto :goto_0

    :cond_0
    if-ne v9, v8, :cond_1

    sub-long/2addr v4, v2

    long-to-int v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    :goto_2
    if-ge v9, v8, :cond_b

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_2

    cmp-long v16, v4, v6

    if-gez v16, :cond_2

    add-long v16, v4, v10

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v19, v2

    move-wide/from16 v27, v6

    move v1, v9

    move-wide/from16 v23, v10

    move-wide/from16 v4, v16

    :goto_3
    const/16 v9, 0x80

    goto/16 :goto_4

    :cond_2
    const/16 v12, 0x800

    const-wide/16 v17, 0x2

    if-ge v15, v12, :cond_3

    sub-long v19, v6, v17

    cmp-long v12, v4, v19

    if-gtz v12, :cond_3

    move-wide/from16 v19, v2

    add-long v1, v4, v10

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v4, v4, v17

    and-int/lit8 v3, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v3, v12

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v27, v6

    move v1, v9

    move-wide/from16 v23, v10

    goto :goto_3

    :cond_3
    move-wide/from16 v19, v2

    const v1, 0xdfff

    const v2, 0xd800

    const-wide/16 v21, 0x3

    if-lt v15, v2, :cond_4

    if-ge v1, v15, :cond_5

    :cond_4
    sub-long v23, v6, v21

    cmp-long v3, v4, v23

    if-gtz v3, :cond_5

    add-long v1, v4, v10

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v10, v4, v17

    ushr-int/lit8 v3, v15, 0x6

    and-int/lit8 v3, v3, 0x3f

    const/16 v12, 0x80

    or-int/2addr v3, v12

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v4, v4, v21

    and-int/lit8 v1, v15, 0x3f

    or-int/2addr v1, v12

    int-to-byte v1, v1

    invoke-static {v10, v11, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v27, v6

    move v1, v9

    const/16 v9, 0x80

    const-wide/16 v23, 0x1

    goto :goto_4

    :cond_5
    const-wide/16 v10, 0x4

    sub-long v25, v6, v10

    cmp-long v3, v4, v25

    if-gtz v3, :cond_8

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_7

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v23, 0x1

    add-long v10, v4, v23

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v27, v6

    add-long v6, v4, v17

    ushr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    const/16 v9, 0x80

    or-int/2addr v3, v9

    int-to-byte v3, v3

    invoke-static {v10, v11, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v10, v4, v21

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v9

    int-to-byte v3, v3

    invoke-static {v6, v7, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    invoke-static {v10, v11, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move-wide/from16 v2, v19

    move-wide/from16 v10, v23

    move-wide/from16 v6, v27

    const/16 v12, 0x80

    move-object/from16 v1, p2

    goto/16 :goto_2

    :cond_6
    move v9, v1

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_8
    if-gt v2, v15, :cond_a

    if-gt v15, v1, :cond_a

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-wide/from16 v19, v2

    sub-long v4, v4, v19

    long-to-int v0, v4

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method
