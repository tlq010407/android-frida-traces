.class public Lcom/huawei/location/lite/common/http/interceptor/dC;
.super Lcom/huawei/location/lite/common/http/interceptor/Vw;
.source "SourceFile"


# instance fields
.field private yn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/interceptor/Vw;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn:I

    return-void
.end method

.method private yn(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 3

    .line 0
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const-string v0, "BaseAuthInterceptor"

    const-string v1, "401 error retry request"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getInstance()Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->clearLocalCertifiedCredential()V

    invoke-virtual {p0, p2}, Lcom/huawei/location/lite/common/http/interceptor/Vw;->yn(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2

    const-string v0, "CommonRespInterceptor handleResponse start"

    const-string v1, "BaseAuthInterceptor"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn:I

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/lite/common/http/interceptor/dC;->yn(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "CommonRespInterceptor handleResponse end"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;
    .locals 1

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getInstance()Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getSignature(Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
