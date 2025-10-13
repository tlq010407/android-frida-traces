.class public abstract Lcom/huawei/location/lite/common/http/interceptor/Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected yn(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 7

    .line 0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "X-Request-ID"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "X-CP-Info"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/Vw$Vw;

    move-result-object v0

    new-instance v1, Lcom/huawei/location/lite/common/http/sign/yn$yn;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/sign/yn$yn;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3, v2}, Lcom/huawei/location/lite/common/http/sign/yn$yn;->yn(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/yn$yn;

    :cond_2
    new-instance v2, Lcom/huawei/location/lite/common/http/sign/yn;

    invoke-direct {v2, v1}, Lcom/huawei/location/lite/common/http/sign/yn;-><init>(Lcom/huawei/location/lite/common/http/sign/yn$yn;)V

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/http/sign/yn;->yn()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn([Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/Vw$Vw;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn()Lcom/huawei/location/lite/common/http/sign/Vw;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/location/lite/common/http/interceptor/Vw;->yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public abstract yn(Lokhttp3/Request;Lcom/huawei/location/lite/common/http/sign/Vw;)Lokhttp3/Request;
.end method
