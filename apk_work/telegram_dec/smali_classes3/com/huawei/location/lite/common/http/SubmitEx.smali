.class public Lcom/huawei/location/lite/common/http/SubmitEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/SubmitEx$TempResponse;
    }
.end annotation


# instance fields
.field private baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

.field private commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

.field private httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

.field private httpLocClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;-><init>(Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/report/ReportBuilder;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;-><init>(Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/report/ReportBuilder;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/report/ReportBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    iput-object p3, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    new-instance p2, Lcom/huawei/location/lite/common/http/yn;

    invoke-direct {p2, p4}, Lcom/huawei/location/lite/common/http/yn;-><init>(Lcom/huawei/location/lite/common/report/ReportBuilder;)V

    iput-object p2, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpLocClient:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method

.method private proxyGetExecuteResponse(Z)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 4

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpLocClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/huawei/location/lite/common/http/E5;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpLocClient:Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/location/lite/common/http/E5;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/E5;->FB()Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/E5;->yn()Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/huawei/location/lite/common/http/FB$Vw;->yn()Lcom/huawei/location/lite/common/http/FB;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {p1, v0, v1}, Lcom/huawei/location/lite/common/http/FB;->Vw(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/huawei/location/lite/common/http/FB$Vw;->yn()Lcom/huawei/location/lite/common/http/FB;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {p1, v0, v1}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private throwErrorLevelException(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getErrorLevel()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/location/lite/common/http/yn;->yn(Lcom/huawei/location/lite/common/http/request/BaseRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnErrorException;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/location/lite/common/http/yn;->yn(Lcom/huawei/location/lite/common/http/request/BaseRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    new-instance v1, Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Class;)Lcom/huawei/location/lite/common/http/response/BaseResponse;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;->proxyGetExecuteResponse(Z)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getResponseString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/location/lite/common/http/yn;->yn(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/lite/common/http/response/BaseResponse;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/huawei/location/lite/common/http/yn;->yn(Lcom/huawei/location/lite/common/http/request/BaseRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->commonDataHandler:Lcom/huawei/location/lite/common/http/yn;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/SubmitEx;->baseRequest:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/BaseResponse;->getApiCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/location/lite/common/http/yn;->yn(Lcom/huawei/location/lite/common/http/request/BaseRequest;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnErrorException;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/BaseResponse;->getApiCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/response/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;->throwErrorLevelException(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/lite/common/http/response/BaseResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executeOriginal()[B
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;->proxyGetExecuteResponse(Z)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->getResponseBytes()[B

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/SubmitEx;->throwErrorLevelException(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
