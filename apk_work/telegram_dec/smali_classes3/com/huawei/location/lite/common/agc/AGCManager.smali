.class public Lcom/huawei/location/lite/common/agc/AGCManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SYNC_LOCK:[B

.field private static volatile instance:Lcom/huawei/location/lite/common/agc/AGCManager;


# instance fields
.field private mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

.field private mOnlineAgcService:Lcom/huawei/location/lite/common/agc/net/yn;

.field private final preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/lite/common/agc/AGCManager;->SYNC_LOCK:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v1, "AGCInfo"

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;

    return-void
.end method

.method private asyncGetAgcInfo()Lcom/huawei/location/lite/common/agc/yn;
    .locals 9

    const-string v0, ", msg is "

    iget-object v1, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mOnlineAgcService:Lcom/huawei/location/lite/common/agc/net/yn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/location/lite/common/agc/net/yn;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/agc/net/yn;-><init>()V

    iput-object v1, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mOnlineAgcService:Lcom/huawei/location/lite/common/agc/net/yn;

    :cond_0
    iget-object v1, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mOnlineAgcService:Lcom/huawei/location/lite/common/agc/net/yn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "getOnlineAgcInfo"

    const-string v2, "OnlineAgcService"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/lite/common/agc/net/AGCResponse;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/agc/net/AGCResponse;-><init>()V

    :try_start_0
    new-instance v3, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;-><init>()V
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v4, "fingerprint"

    :try_start_1
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/location/lite/common/util/APKUtil;->getSignatureForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->build()Lcom/huawei/location/lite/common/http/request/RequestJsonBody;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.huawei.hms.location"

    invoke-static {v5}, Lcom/huawei/location/lite/common/grs/LocationNlpGrsHelper;->getGrsHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "grsHostAddress is null"

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    invoke-direct {v7, v4}, Lcom/huawei/location/lite/common/http/request/HeadBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/huawei/location/lite/common/http/request/HeadBuilder;->setPackageName(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    move-result-object v4

    new-instance v6, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    const-string v7, "/location/v1/getToken"

    invoke-direct {v6, v7}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setHeads(Lcom/huawei/location/lite/common/http/request/HeadBuilder;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setBody(Lcom/huawei/location/lite/common/http/request/RequestJsonBody;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object v3

    new-instance v4, Lcom/huawei/location/lite/common/http/HttpClientEx;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;

    invoke-direct {v6}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->setNeedCheckAGC(Z)Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->build()Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/huawei/location/lite/common/http/HttpClientEx;-><init>(Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->builder()Lcom/huawei/location/lite/common/http/request/BaseRequest;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/lite/common/http/HttpClientEx;->newSubmit(Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/SubmitEx;

    move-result-object v3

    const-class v4, Lcom/huawei/location/lite/common/agc/net/AGCResponse;

    invoke-virtual {v3, v4}, Lcom/huawei/location/lite/common/http/SubmitEx;->execute(Ljava/lang/Class;)Lcom/huawei/location/lite/common/http/response/BaseResponse;

    move-result-object v3

    check-cast v3, Lcom/huawei/location/lite/common/agc/net/AGCResponse;
    :try_end_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHttp, response code is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/agc/net/AGCResponse;->getApiCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v3

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    :catch_4
    move-object v1, v3

    :catch_5
    const-string v0, "unknown exception"

    :goto_0
    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doHttp, OnErrorException: code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiMsg()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doHttp, OnFailureException: code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_4
    invoke-virtual {v1}, Lcom/huawei/location/lite/common/agc/net/AGCResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getOnlineAgcInfo success,save to cache"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/agc/yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/agc/yn;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/agc/net/AGCResponse;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/huawei/location/lite/common/agc/yn;->yn(J)V

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/agc/net/AGCResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/agc/yn;->yn(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/agc/AGCManager;->getInstance()Lcom/huawei/location/lite/common/agc/AGCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/location/lite/common/agc/AGCManager;->setAgcCache(Lcom/huawei/location/lite/common/agc/yn;)V

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    :goto_5
    return-object v0
.end method

.method public static getInstance()Lcom/huawei/location/lite/common/agc/AGCManager;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/agc/AGCManager;->instance:Lcom/huawei/location/lite/common/agc/AGCManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/location/lite/common/agc/AGCManager;->SYNC_LOCK:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/location/lite/common/agc/AGCManager;->instance:Lcom/huawei/location/lite/common/agc/AGCManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/location/lite/common/agc/AGCManager;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/agc/AGCManager;-><init>()V

    sput-object v1, Lcom/huawei/location/lite/common/agc/AGCManager;->instance:Lcom/huawei/location/lite/common/agc/AGCManager;

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
    sget-object v0, Lcom/huawei/location/lite/common/agc/AGCManager;->instance:Lcom/huawei/location/lite/common/agc/AGCManager;

    return-object v0
.end method


# virtual methods
.method public checkAgc()Z
    .locals 1

    invoke-static {}, Lcom/huawei/location/lite/common/agc/AGCManager;->getInstance()Lcom/huawei/location/lite/common/agc/AGCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/agc/AGCManager;->getAgcInfo()Lcom/huawei/location/lite/common/agc/yn;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAgcInfo()Lcom/huawei/location/lite/common/agc/yn;
    .locals 7

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    const-string v1, "AGCManager"

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/agc/yn;->yn()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const-string v0, "use cache agcInfo"

    :goto_0
    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/agc/AGCManager;->asyncGetAgcInfo()Lcom/huawei/location/lite/common/agc/yn;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    if-eqz v0, :cond_1

    const-string v0, "use agcInfo from online"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v2, "ExpireTime"

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v4, "Token"

    invoke-virtual {v0, v4}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "use agcInfo from sp"

    invoke-static {v1, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/lite/common/security/LocationSecurityManager;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;-><init>(I)V

    new-instance v4, Lcom/huawei/location/lite/common/agc/yn;

    invoke-direct {v4}, Lcom/huawei/location/lite/common/agc/yn;-><init>()V

    iput-object v4, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    const-string v5, "AGC_INFO"

    invoke-virtual {v1, v0, v5}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/huawei/location/lite/common/agc/yn;->yn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/location/lite/common/agc/yn;->yn(J)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "client/app_id"

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v2, v1}, Lcom/huawei/agconnect/AGConnectOptions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "AGCManager"

    const-string v2, "get agc appId by exception"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized notifyAkChange()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAgcCache(Lcom/huawei/location/lite/common/agc/yn;)V
    .locals 4

    iput-object p1, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->mAgcInfo:Lcom/huawei/location/lite/common/agc/yn;

    new-instance v0, Lcom/huawei/location/lite/common/security/LocationSecurityManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;-><init>(I)V

    iget-object v1, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/agc/yn;->Vw()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AGC_INFO"

    invoke-virtual {v0, v2, v3}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Token"

    invoke-virtual {v1, v2, v0}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/AGCManager;->preferencesHelper:Lcom/huawei/location/lite/common/util/PreferencesHelper;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/agc/yn;->yn()J

    move-result-wide v1

    const-string p1, "ExpireTime"

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveLong(Ljava/lang/String;J)Z

    return-void
.end method
