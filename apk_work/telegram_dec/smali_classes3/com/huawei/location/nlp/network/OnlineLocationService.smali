.class public Lcom/huawei/location/nlp/network/OnlineLocationService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCATION_URL:Ljava/lang/String; = "/networklocation/v1/onlineLocation"

.field public static final SRC_DEFAULT:Ljava/lang/String; = "4"

.field private static final TAG:Ljava/lang/String; = "OnlineLocationService"

.field public static final X_REQ_SRC:Ljava/lang/String; = "X-Req-src"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertNativeLocation(Landroid/location/Location;Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getPosition()Lcom/huawei/location/nlp/network/response/Location;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "OnlineLocationService"

    if-nez v0, :cond_0

    const-string p1, "convertNativeLocation, responseLocation is null."

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getFlags()S

    move-result v3

    if-gtz v3, :cond_1

    const-string p1, "convertNativeLocation, flag is invalid."

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-gtz v4, :cond_2

    const-string p1, "convertNativeLocation, lon&lat is invalid."

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    and-int/lit8 v1, v3, 0x4

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getSpeed()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/location/Location;->setSpeed(F)V

    :cond_3
    and-int/lit8 v1, v3, 0x8

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getBearing()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/location/Location;->setBearing(F)V

    :cond_4
    and-int/lit8 v1, v3, 0x10

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_5
    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setTime(J)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getTime()J

    move-result-wide v1

    goto :goto_1

    :goto_2
    const-string v1, "network"

    invoke-virtual {p1, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "vendorType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getLocateType()Ljava/lang/String;

    move-result-object p2

    const-string v2, "locateType"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getBuildingId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "buildingId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getFloor()I

    move-result p2

    const-string v2, "floor"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getFloorAcc()I

    move-result p2

    const-string v2, "floorAcc"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getTime()J

    move-result-wide v4

    const-string p2, "time"

    invoke-virtual {v1, p2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/huawei/location/nlp/network/response/Location;->getFlags()S

    move-result p2

    const-string v0, "flags"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    invoke-virtual {p1, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return v3
.end method

.method private doHttp(Lcom/huawei/location/nlp/network/request/OnlineLocationRequest;)Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;
    .locals 9

    const-string v0, ", msg is "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doHttp, request is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/OnlineLocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnlineLocationService"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;

    invoke-direct {v1}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;-><init>()V

    invoke-static {}, Lcom/huawei/location/lite/common/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    new-instance p1, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;

    invoke-direct {p1}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;-><init>()V

    invoke-virtual {p1, v3}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->build(Lorg/json/JSONObject;)Lcom/huawei/location/lite/common/http/request/RequestJsonBody;

    move-result-object p1

    const-string v3, "com.huawei.hms.location"

    invoke-static {v3}, Lcom/huawei/location/lite/common/grs/LocationNlpGrsHelper;->getGrsHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "grsHostAddress is null"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "X-Req-src"

    const-string v7, "4"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    invoke-direct {v7, v6}, Lcom/huawei/location/lite/common/http/request/HeadBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/huawei/location/lite/common/http/request/HeadBuilder;->setPackageName(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/huawei/location/lite/common/http/request/HeadBuilder;->setExHeaders(Ljava/util/HashMap;)Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    move-result-object v4

    new-instance v5, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    const-string v7, "/networklocation/v1/onlineLocation"

    invoke-direct {v5, v7}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setHeads(Lcom/huawei/location/lite/common/http/request/HeadBuilder;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->setBody(Lcom/huawei/location/lite/common/http/request/RequestJsonBody;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->builder()Lcom/huawei/location/lite/common/http/request/BaseRequest;

    move-result-object p1

    new-instance v3, Lcom/huawei/location/lite/common/http/HttpClientEx;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/HttpClientEx;-><init>()V

    invoke-virtual {v3, p1}, Lcom/huawei/location/lite/common/http/HttpClientEx;->newSubmit(Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/SubmitEx;

    move-result-object p1

    const-class v3, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;

    invoke-virtual {p1, v3}, Lcom/huawei/location/lite/common/http/SubmitEx;->execute(Ljava/lang/Class;)Lcom/huawei/location/lite/common/http/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;
    :try_end_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {p1, v6}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->setSessionId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHttp, response code is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getApiCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_3

    :catch_4
    move-object v1, p1

    :catch_5
    const-string p1, "unknown exception"

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_4

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHttp, OnErrorException: code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiMsg()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHttp, OnFailureException: code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_4
    return-object p1

    :catch_6
    const-string p1, "doHttp, transfer to JSONException failed"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getLocationFromCloud(Lcom/huawei/location/nlp/network/request/OnlineLocationRequest;)Lcom/huawei/hms/location/HwLocationResult;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/huawei/location/nlp/network/request/OnlineLocationRequest;->setBoottime(J)V

    invoke-direct {p0, p1}, Lcom/huawei/location/nlp/network/OnlineLocationService;->doHttp(Lcom/huawei/location/nlp/network/request/OnlineLocationRequest;)Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/location/HwLocationResult;

    invoke-direct {v0}, Lcom/huawei/hms/location/HwLocationResult;-><init>()V

    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->isSuccess()Z

    move-result v2

    const/16 v3, 0x2af8

    if-nez v2, :cond_0

    const-string p1, "OnlineLocationService"

    const-string v1, "getLocationFromCloud, response is failed"

    invoke-static {p1, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/huawei/hms/location/HwLocationResult;->setCode(I)V

    invoke-static {v3}, Lcom/huawei/location/nlp/constant/yn;->yn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/HwLocationResult;->setMessage(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/huawei/location/nlp/network/OnlineLocationService;->convertNativeLocation(Landroid/location/Location;Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/huawei/hms/location/HwLocationResult;->setCode(I)V

    invoke-static {v3}, Lcom/huawei/location/nlp/constant/yn;->yn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/HwLocationResult;->setMessage(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getIndoor()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/response/OnlineLocationResponse;->getLocateType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "wifi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/huawei/location/nlp/logic/yn;->dC()Lcom/huawei/location/nlp/logic/yn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/location/nlp/logic/yn;->d2()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_2
    const-string v2, "cell"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/huawei/location/nlp/logic/yn;->dC()Lcom/huawei/location/nlp/logic/yn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/nlp/logic/yn;->LW()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/HwLocationResult;->setCode(I)V

    invoke-static {p1}, Lcom/huawei/location/nlp/constant/yn;->yn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/HwLocationResult;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/HwLocationResult;->setLocation(Landroid/location/Location;)V

    return-object v0
.end method
