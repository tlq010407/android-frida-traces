.class public Lcom/huawei/location/lite/common/http/interceptor/E5;
.super Lcom/huawei/location/lite/common/http/interceptor/Vw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/interceptor/Vw;-><init>()V

    return-void
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
    .locals 1

    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getInstance()Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/location/lite/common/http/sign/tss/TssSignHelper;->getSignature(Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
