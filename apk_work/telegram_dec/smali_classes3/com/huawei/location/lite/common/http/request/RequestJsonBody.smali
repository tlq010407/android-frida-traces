.class public Lcom/huawei/location/lite/common/http/request/RequestJsonBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->access$000(Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;->body:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;->body:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    return-void
.end method
