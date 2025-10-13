.class public final Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/request/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private body:[B

.field private contentType:Ljava/lang/String;

.field private heads:Lcom/huawei/location/lite/common/http/request/HeadBuilder;

.field private method:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)Lcom/huawei/location/lite/common/http/request/HeadBuilder;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->heads:Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->body:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public builder()Lcom/huawei/location/lite/common/http/request/BaseRequest;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->baseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.huawei.hms.location"

    invoke-static {v0}, Lcom/huawei/location/lite/common/grs/LocationNlpGrsHelper;->getGrsHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->baseUrl:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/http/request/BaseRequest;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/request/BaseRequest;-><init>(Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;)V

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Lcom/huawei/location/lite/common/http/request/RequestJsonBody;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->body:[B

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public setHeads(Lcom/huawei/location/lite/common/http/request/HeadBuilder;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->heads:Lcom/huawei/location/lite/common/http/request/HeadBuilder;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/BaseRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method
