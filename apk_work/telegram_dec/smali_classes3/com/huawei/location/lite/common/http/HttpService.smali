.class public Lcom/huawei/location/lite/common/http/HttpService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/HttpService$yn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpService"

.field private static final TIME_OUT:I = 0x7530


# instance fields
.field private httpClient:Lokhttp3/OkHttpClient;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$walEj742ba2B32bM7KDm3Bv5cZk(Lcom/huawei/location/lite/common/http/HttpService;Lcom/huawei/location/lite/common/http/dC;Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/http/HttpService;->lambda$realEnquene$0(Lcom/huawei/location/lite/common/http/dC;Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/huawei/location/lite/common/http/HttpService$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/HttpService$yn;-><init>(Lcom/huawei/location/lite/common/http/HttpService;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/HttpService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/location/lite/common/http/HttpService;)Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/huawei/location/lite/common/http/HttpService;Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/location/lite/common/http/HttpService;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/HttpService;->initHttpClient(Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/location/lite/common/http/HttpService;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/HttpService;->realExecute(Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/location/lite/common/http/HttpService;Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/dC;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/lite/common/http/HttpService;->realEnquene(Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/dC;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/location/lite/common/http/HttpService;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/HttpService;->closeSocket()V

    return-void
.end method

.method private closeSocket()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method

.method private initHttpClient(Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;
    .locals 3

    new-instance v0, Lcom/huawei/location/lite/common/http/Vw;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/Vw;-><init>()V

    new-instance v1, Lcom/huawei/location/lite/common/http/Vw$yn;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/Vw$yn;-><init>()V

    const/16 v2, 0x7530

    iput v2, v1, Lcom/huawei/location/lite/common/http/Vw$yn;->FB:I

    iput v2, v1, Lcom/huawei/location/lite/common/http/Vw$yn;->LW:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/huawei/location/lite/common/http/Vw;->yn(Landroid/content/Context;Lcom/huawei/location/lite/common/http/Vw$yn;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$realEnquene$0(Lcom/huawei/location/lite/common/http/dC;Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/HttpService;->closeSocket()V

    invoke-interface {p1, p2}, Lcom/huawei/location/lite/common/http/dC;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HttpService"

    const-string p2, "RemoteExceptio"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private realEnquene(Lcom/huawei/location/lite/common/http/request/BaseRequest;Lcom/huawei/location/lite/common/http/dC;)V
    .locals 2

    new-instance v0, Lcom/huawei/location/lite/common/http/E5;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/location/lite/common/http/E5;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V

    new-instance p1, Lcom/huawei/location/lite/common/http/HttpService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/huawei/location/lite/common/http/HttpService$$ExternalSyntheticLambda0;-><init>(Lcom/huawei/location/lite/common/http/HttpService;Lcom/huawei/location/lite/common/http/dC;)V

    invoke-virtual {v0, p1}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5$Vw;)V

    return-void
.end method

.method private realExecute(Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 2

    new-instance v0, Lcom/huawei/location/lite/common/http/E5;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/HttpService;->httpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/location/lite/common/http/E5;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/huawei/location/lite/common/http/request/BaseRequest;)V

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/http/E5;->yn()Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/HttpService;->closeSocket()V

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/HttpService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HttpService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "HttpService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
