.class public abstract Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EUC_JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v1, v0

    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_1

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_1

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_1

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    if-ge v9, v1, :cond_2

    if-nez v5, :cond_3

    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v19, v1

    goto/16 :goto_b

    :cond_3
    :goto_2
    aget-byte v4, v0, v9

    and-int/lit16 v0, v4, 0xff

    if-eqz v8, :cond_5

    if-lez v10, :cond_6

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    move/from16 v19, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, -0x1

    :cond_5
    move/from16 v19, v1

    goto :goto_5

    :cond_6
    move/from16 v19, v1

    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_b

    and-int/lit8 v1, v4, 0x40

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v10, 0x1

    and-int/lit8 v20, v4, 0x20

    if-nez v20, :cond_8

    add-int/lit8 v12, v12, 0x1

    :goto_3
    move v10, v1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v10, 0x2

    and-int/lit8 v20, v4, 0x10

    if-nez v20, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v10, v10, 0x3

    and-int/lit8 v1, v4, 0x8

    if-nez v1, :cond_a

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v8, 0x0

    :cond_b
    :goto_5
    const/16 v1, 0xa0

    const/16 v4, 0x7f

    if-eqz v5, :cond_e

    if-le v0, v4, :cond_c

    if-ge v0, v1, :cond_c

    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    const/16 v1, 0x9f

    if-le v0, v1, :cond_e

    const/16 v1, 0xc0

    if-lt v0, v1, :cond_d

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_d

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_e

    :cond_d
    add-int/lit8 v16, v16, 0x1

    :cond_e
    :goto_6
    if-eqz v7, :cond_17

    if-lez v11, :cond_10

    const/16 v1, 0x40

    if-lt v0, v1, :cond_16

    if-eq v0, v4, :cond_16

    const/16 v1, 0xfc

    if-le v0, v1, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v11, v11, -0x1

    goto :goto_a

    :cond_10
    const/16 v1, 0x80

    if-eq v0, v1, :cond_16

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_16

    const/16 v4, 0xef

    if-le v0, v4, :cond_11

    goto :goto_9

    :cond_11
    if-le v0, v1, :cond_13

    const/16 v1, 0xe0

    if-ge v0, v1, :cond_13

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_12

    move v15, v0

    move/from16 v18, v15

    :goto_7
    const/16 v17, 0x0

    goto :goto_a

    :cond_12
    move/from16 v18, v0

    goto :goto_7

    :cond_13
    const/16 v1, 0x7f

    if-le v0, v1, :cond_15

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v6, :cond_14

    move v6, v0

    move/from16 v17, v6

    :goto_8
    const/16 v18, 0x0

    goto :goto_a

    :cond_14
    move/from16 v17, v0

    goto :goto_8

    :cond_15
    const/16 v17, 0x0

    goto :goto_8

    :cond_16
    :goto_9
    const/4 v7, 0x0

    :cond_17
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    const/4 v4, 0x3

    goto/16 :goto_1

    :goto_b
    if-eqz v8, :cond_18

    if-lez v10, :cond_18

    const/4 v8, 0x0

    :cond_18
    if-eqz v7, :cond_19

    if-lez v11, :cond_19

    const/4 v7, 0x0

    :cond_19
    const-string v0, "UTF8"

    if-eqz v8, :cond_1b

    if-nez v2, :cond_1a

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_1b

    :cond_1a
    return-object v0

    :cond_1b
    const-string v1, "SJIS"

    if-eqz v7, :cond_1d

    sget-boolean v2, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v2, :cond_1c

    const/4 v2, 0x3

    if-ge v15, v2, :cond_1c

    if-lt v6, v2, :cond_1d

    :cond_1c
    return-object v1

    :cond_1d
    const-string v2, "ISO8859_1"

    if-eqz v5, :cond_21

    if-eqz v7, :cond_21

    const/4 v4, 0x2

    if-ne v15, v4, :cond_1e

    if-eq v3, v4, :cond_20

    :cond_1e
    mul-int/lit8 v0, v16, 0xa

    move/from16 v3, v19

    if-lt v0, v3, :cond_1f

    goto :goto_c

    :cond_1f
    move-object v1, v2

    :cond_20
    :goto_c
    return-object v1

    :cond_21
    if-eqz v5, :cond_22

    return-object v2

    :cond_22
    if-eqz v7, :cond_23

    return-object v1

    :cond_23
    if-eqz v8, :cond_24

    return-object v0

    :cond_24
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
