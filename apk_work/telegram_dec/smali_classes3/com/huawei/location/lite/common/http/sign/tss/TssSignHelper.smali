.class public Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SYNC_LOCK:[B

.field private static volatile instance:Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;


# instance fields
.field private errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

.field private mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

.field private tssInnerAPI:Lcom/huawei/hms/tss/inner/TssInnerAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->SYNC_LOCK:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->init()V

    return-void
.end method

.method private encryptAuthInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "TssSignHelper"

    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/hash/HMACSHA256;->hmacSHA256Encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/secure/android/common/util/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/util/SafeBase64;->encode([BI)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "encryptAuthInfo success "

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const-string p1, "encode Exception"

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    return-object p1
.end method

.method private generateSignedString(Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const-string v2, "hmslocation"

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "TssSignHelper"

    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->dC()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v11, Lcom/huawei/location/lite/common/util/CanonicalQueryString;

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/huawei/location/lite/common/util/CanonicalQueryString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/huawei/location/lite/common/util/CanonicalQueryString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/map/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "request site kit server signature"

    invoke-static {v9, v13}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->FB()Ljava/lang/String;

    move-result-object v14

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v7

    aput-object v10, v3, v8

    aput-object v11, v3, v6

    aput-object v14, v3, v5

    aput-object v2, v3, v4

    aput-object v12, v3, v1

    const-string v1, "%s&%s&%s&%s&appid=%s&timestamp=%s"

    invoke-static {v9, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v13, "request location kit server signature"

    invoke-static {v9, v13}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->FB()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v15}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getAccessKey()Ljava/lang/String;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v7

    aput-object v10, v3, v8

    aput-object v11, v3, v6

    aput-object v14, v3, v5

    aput-object v15, v3, v4

    aput-object v12, v3, v1

    const-string v1, "%s&%s&%s&%s&ak=%s&timestamp=%s"

    invoke-static {v9, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v7

    aput-object v3, v10, v8

    const-string v1, "%s&%s"

    invoke-static {v9, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getRawSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->encryptAuthInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v9, v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v9}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getAccessKey()Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v12, v4, v8

    aput-object v1, v4, v6

    aput-object v9, v4, v5

    const-string v1, "CLOUDSOA-HMAC-SHA256 appid=%s,timestamp=%s,signature=%s,ak=%s"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    const-string v1, "%s,signedHeaders=%s"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :catch_0
    const-string v1, "hostUrl is illeagel"

    invoke-static {v9, v1, v8}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    const/16 v2, 0x2845

    invoke-static {v2}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v1
.end method

.method public static getInstance()Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->instance:Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->SYNC_LOCK:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->instance:Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;-><init>()V

    sput-object v1, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->instance:Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->instance:Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    return-object v0
.end method

.method private getRawCertificationKey(Ljava/lang/String;)V
    .locals 6

    const-string v0, "begin to get raw certificationKey"

    const-string v1, "TssSignHelper"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->isEncryptedCredentialPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "EncryptedCertified is not Prepared"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x69

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    return-void

    :cond_0
    new-instance v0, Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;

    invoke-direct {v0}, Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;-><init>()V

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getKek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;->setKek(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getDataKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;->setDataKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;->setSecretKey(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->tssInnerAPI:Lcom/huawei/hms/tss/inner/TssInnerAPI;

    invoke-static {}, Lcom/huawei/hms/config/Server;->getHmsAppId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper$$ExternalSyntheticLambda0;-><init>(Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v4, p1, v0, v5}, Lcom/huawei/hms/tss/inner/TssInnerAPI;->getCertificationKey(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/tss/inner/entity/GetCertificationKeyReq;Lcom/huawei/hms/tss/inner/TssCallback;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "getCertificationKey InterruptedException"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getSecretKey(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/huawei/hms/tss/inner/entity/GetCertifiedCredentialReq;

    invoke-direct {v0}, Lcom/huawei/hms/tss/inner/entity/GetCertifiedCredentialReq;-><init>()V

    const-string v1, "com.huawei.hms.location"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/tss/inner/entity/GetCertifiedCredentialReq;->setPackageName(Ljava/lang/String;)V

    const-string v1, "getCertifiedCredential:start"

    const-string v2, "TssSignHelper"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->tssInnerAPI:Lcom/huawei/hms/tss/inner/TssInnerAPI;

    invoke-static {}, Lcom/huawei/hms/config/Server;->getHmsAppId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper$$ExternalSyntheticLambda0;-><init>(Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v4, p1, v0, v5}, Lcom/huawei/hms/tss/inner/TssInnerAPI;->getCertifiedCredential(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/tss/inner/entity/GetCertifiedCredentialReq;Lcom/huawei/hms/tss/inner/TssCallback;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "InterruptedException"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getRawCertificationKey(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getHMSContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TssSignHelper"

    invoke-static {v0, v1}, Lcom/huawei/hms/tss/inner/TssInnerClient;->getTssInnerApi(Landroid/content/Context;Ljava/lang/String;)La/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->tssInnerAPI:Lcom/huawei/hms/tss/inner/TssInnerAPI;

    new-instance v0, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v2, "location_credential"

    invoke-direct {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "local LocationCredential is not empty"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "json parse failed"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method private isNeedUpdate(Ljava/lang/Long;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSignMessageReqValid(Lcom/huawei/location/lite/common/http/sign/Vw;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->dC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->LW()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "TssSignHelper"

    const-string v0, "SignRequest is  invalid"

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clearLocalCertifiedCredential()V
    .locals 3

    sget-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->SYNC_LOCK:[B

    monitor-enter v0

    :try_start_0
    const-string v1, "TssSignHelper"

    const-string v2, "clearLocalCertifiedCredential"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->clearValues()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v2, "location_credential"

    invoke-direct {v1, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    const-string v2, "location_credential"

    invoke-virtual {v1, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->remove(Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSignature(Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->SYNC_LOCK:[B

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->isSignMessageReqValid(Lcom/huawei/location/lite/common/http/sign/Vw;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->LW()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "TssSignHelper"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to signature, transId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    const-string v3, "TssSignHelper"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get certified credential times:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getExpireTime()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->isNeedUpdate(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_1
    const-string v3, "TssSignHelper"

    const-string v4, "need to request certifiedCredential"

    invoke-static {v3, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;-><init>()V

    iput-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-direct {p0, v1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getSecretKey(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->getRawSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "TssSignHelper"

    const-string v4, "get RawSecretKey from sp, to decrypted"

    invoke-static {v3, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getRawCertificationKey(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->isInitOk()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "TssSignHelper"

    const-string v2, "mCertifiedCredential init ok"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    iget v1, v1, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->isInitOk()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->generateSignedString(Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    const-string p1, "TssSignHelper"

    const-string v1, "mCertifiedCredential init failed"

    invoke-static {p1, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->mCertifiedCredential:Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/tss/CertifiedCredential;->clearValues()V

    new-instance p1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    const/16 v1, 0x74

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1

    :cond_6
    const-string p1, "TssSignHelper"

    const-string v1, "get sk, throw error code"

    invoke-static {p1, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    invoke-direct {p1, v1}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1

    :cond_7
    const-string p1, "TssSignHelper"

    const-string v1, "sign message request is invalid"

    invoke-static {p1, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    const/16 v1, 0x2845

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
