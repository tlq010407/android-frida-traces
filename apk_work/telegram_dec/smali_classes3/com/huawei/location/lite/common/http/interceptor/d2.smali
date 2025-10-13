.class public Lcom/huawei/location/lite/common/http/interceptor/d2;
.super Lcom/huawei/location/lite/common/http/interceptor/Vw;
.source "SourceFile"


# instance fields
.field private yn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/interceptor/Vw;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn:I

    return-void
.end method

.method private yn(J)Z
    .locals 3

    .line 0
    const-wide/16 v0, 0x3fc

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget p1, p0, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn()Lcom/huawei/location/lite/common/http/sign/ucs/yn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->Vw()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/http/interceptor/Vw;->yn(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;
    .locals 5

    .line 0
    const-string v0, "UcsAuthInterceptor"

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn()Lcom/huawei/location/lite/common/http/sign/ucs/yn;

    move-result-object v1

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Landroid/content/Context;Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "authorization"

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UcsCryptoException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsCryptoException;->getErrorCode()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UcsException:errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;->getErrorCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;->getErrorCode()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/location/lite/common/http/interceptor/d2;->yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "AuthException:41"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    const/16 p2, 0x29

    invoke-static {p2}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1
.end method
