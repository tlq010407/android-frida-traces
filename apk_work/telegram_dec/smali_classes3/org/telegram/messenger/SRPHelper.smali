.class public Lorg/telegram/messenger/SRPHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBigIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-le v0, v2, :cond_0

    new-array v0, v2, [B

    const/4 v3, 0x1

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    array-length v0, p0

    if-ge v0, v2, :cond_2

    new-array v0, v2, [B

    array-length v3, p0

    rsub-int v3, v3, 0x100

    array-length v4, p0

    invoke-static {p0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    rsub-int v4, v4, 0x100

    if-ge v3, v4, :cond_1

    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method public static getV([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Ljava/math/BigInteger;
    .locals 4

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->g:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p0

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p1, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static getVBytes([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B
    .locals 2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->g:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/SRPHelper;->getV([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B
    .locals 6

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt1:[B

    const/4 v1, 0x3

    new-array v2, v1, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object p0, v2, v4

    const/4 p0, 0x2

    aput-object v0, v2, p0

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt2:[B

    new-array v5, v1, [[B

    aput-object v2, v5, v3

    aput-object v0, v5, v4

    aput-object v2, v5, p0

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt1:[B

    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->computePBKDF2([B[B)[B

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt2:[B

    new-array v1, v1, [[B

    aput-object p1, v1, v3

    aput-object v0, v1, v4

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    array-length v7, v1

    if-eqz v7, :cond_6

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->g:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->g:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    invoke-direct {v9, v5, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    new-array v11, v3, [[B

    aput-object v10, v11, v4

    aput-object v8, v11, v5

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object v10

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v5, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x100

    new-array v0, v0, [B

    sget-object v12, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v12, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v12, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-ltz v14, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v13}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v14

    new-array v15, v3, [[B

    aput-object v0, v15, v4

    aput-object v14, v15, v5

    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object v15

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-nez v15, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {v7, v10, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :cond_3
    invoke-static {v7, v9}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SRPHelper;->getBigIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->p:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v3

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_5

    aget-byte v8, v6, v7

    aget-byte v9, v3, v7

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/2addr v7, v5

    goto :goto_0

    :cond_5
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;-><init>()V

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt1:[B

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v7

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;->salt2:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v2

    const/4 v8, 0x6

    new-array v8, v8, [[B

    aput-object v3, v8, v4

    aput-object v7, v8, v5

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const/4 v2, 0x3

    aput-object v0, v8, v2

    const/4 v2, 0x4

    aput-object v14, v8, v2

    const/4 v2, 0x5

    aput-object v1, v8, v2

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([[B)[B

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->M1:[B

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->A:[B

    move-wide/from16 v0, p1

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->srp_id:J

    :cond_6
    :goto_1
    return-object v6
.end method
