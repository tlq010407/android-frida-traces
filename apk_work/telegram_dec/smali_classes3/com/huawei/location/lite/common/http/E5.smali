.class public Lcom/huawei/location/lite/common/http/E5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/E5$Vw;
    }
.end annotation


# instance fields
.field private FB:Landroid/content/Context;

.field private Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

.field private final yn:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    iput-object p2, p0, Lcom/huawei/location/lite/common/http/E5;->yn:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/E5;->FB:Landroid/content/Context;

    return-void
.end method

.method private LW()Lokhttp3/Request;
    .locals 7

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    const/16 v1, 0x2845

    if-eqz v0, :cond_4

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "application/json; charset=utf-8"

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v4}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getBody()[B

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v4}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/E5;->Vw:Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getHeads()Lokhttp3/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :catch_0
    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnErrorException;

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnErrorException;

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private Vw()Ljava/lang/String;
    .locals 2

    .line 0
    :try_start_0
    const-string v0, "RealSubmit"

    const-string v1, "executeCall()"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5;->yn:Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/E5;->LW()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/E5;->Vw(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_0
    instance-of v1, v0, Lcom/huawei/location/lite/common/http/exception/AuthException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/huawei/location/lite/common/http/exception/AuthException;

    new-instance v1, Lcom/huawei/location/lite/common/http/exception/OnErrorException;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/AuthException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    const/16 v1, 0x283c

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v0

    :goto_1
    throw v0

    :goto_2
    throw v0
.end method

.method private Vw(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    const/16 v0, 0x283d

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    const/16 v0, 0x2843

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1
.end method

.method private yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealSubmit"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setErrorCode(I)V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setMsg(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setErrorLevel(I)V

    return-object v0
.end method

.method static synthetic yn(Lcom/huawei/location/lite/common/http/E5;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic yn(Lcom/huawei/location/lite/common/http/E5;Lokhttp3/Response;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/E5;->Vw(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private yn(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    const/16 v0, 0x2843

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1
.end method


# virtual methods
.method public FB()Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 5

    const-string v0, ""

    const-string v1, "RealSubmit"

    const-string v2, "executeOriginal()"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/E5;->FB:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/location/lite/common/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x65

    if-nez v1, :cond_0

    const/16 v0, 0x283e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x64

    :try_start_0
    iget-object v3, p0, Lcom/huawei/location/lite/common/http/E5;->yn:Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/E5;->LW()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/location/lite/common/http/E5;->yn(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setResponseBytes([B)V

    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_0
    instance-of v4, v3, Lcom/huawei/location/lite/common/http/exception/AuthException;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/huawei/location/lite/common/http/exception/AuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/exception/AuthException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v4

    iget v4, v4, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/http/exception/AuthException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->msg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x283c

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10300"

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v4

    iget v4, v4, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->msg:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public yn()Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5;->FB:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x65

    if-nez v0, :cond_0

    const/16 v0, 0x283e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/E5;->Vw()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setResponseString(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v3

    iget v3, v3, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->msg:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiMsg()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public yn(Lcom/huawei/location/lite/common/http/E5$Vw;)V
    .locals 3

    .line 0
    if-nez p1, :cond_0

    const-string p1, "RealSubmit"

    const-string v0, "ICallBack is null"

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5;->FB:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x283e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/E5;->LW()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnErrorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/E5;->yn:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/huawei/location/lite/common/http/E5$yn;

    invoke-direct {v1, p0, p1}, Lcom/huawei/location/lite/common/http/E5$yn;-><init>(Lcom/huawei/location/lite/common/http/E5;Lcom/huawei/location/lite/common/http/E5$Vw;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/exception/OnErrorException;->getApiMsg()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    return-void
.end method
