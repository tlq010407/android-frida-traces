.class public Lcom/huawei/location/lite/common/http/HttpClientEx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private httpBuilder:Lcom/huawei/location/lite/common/http/Vw$yn;

.field private httpClient:Lokhttp3/OkHttpClient;

.field private httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/huawei/location/lite/common/http/Vw$yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/Vw$yn;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->yn(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->Vw(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/huawei/location/lite/common/http/HttpClientEx;-><init>(Lcom/huawei/location/lite/common/http/Vw$yn;Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    new-instance v0, Lcom/huawei/location/lite/common/http/Vw$yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/Vw$yn;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->yn(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->Vw(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/huawei/location/lite/common/http/HttpClientEx;-><init>(Lcom/huawei/location/lite/common/http/Vw$yn;Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V
    .locals 2

    .line 0
    new-instance v0, Lcom/huawei/location/lite/common/http/Vw$yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/Vw$yn;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->yn(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/http/Vw$yn;->Vw(I)Lcom/huawei/location/lite/common/http/Vw$yn;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/huawei/location/lite/common/http/HttpClientEx;-><init>(Lcom/huawei/location/lite/common/http/Vw$yn;Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/location/lite/common/http/Vw$yn;Landroid/content/Context;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->context:Landroid/content/Context;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    new-instance p2, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;

    invoke-direct {p2}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->build()Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    goto :goto_2

    :cond_1
    iput-object p3, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    :goto_2
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpBuilder:Lcom/huawei/location/lite/common/http/Vw$yn;

    return-void
.end method

.method private isCrossingProcess()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isBinderProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/location/lite/common/http/FB$Vw;->yn()Lcom/huawei/location/lite/common/http/FB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/FB;->LW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public newSubmit(Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/SubmitEx;
    .locals 4

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/HttpClientEx;->isCrossingProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/location/lite/common/http/SubmitEx;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    invoke-direct {v0, v1, p1}, Lcom/huawei/location/lite/common/http/SubmitEx;-><init>(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/http/Vw;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/Vw;-><init>()V

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpBuilder:Lcom/huawei/location/lite/common/http/Vw$yn;

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpConfigInfo:Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/location/lite/common/http/Vw;->yn(Landroid/content/Context;Lcom/huawei/location/lite/common/http/Vw$yn;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/HttpClientEx;->httpClient:Lokhttp3/OkHttpClient;

    new-instance v1, Lcom/huawei/location/lite/common/http/SubmitEx;

    invoke-direct {v1, v0, p1}, Lcom/huawei/location/lite/common/http/SubmitEx;-><init>(Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V

    return-object v1
.end method
