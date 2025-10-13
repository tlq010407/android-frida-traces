.class public final Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/request/RequestJsonBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private body:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->body:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->body:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->body:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RequestJsonBody"

    const-string p2, "add: failed"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public build()Lcom/huawei/location/lite/common/http/request/RequestJsonBody;
    .locals 1

    .line 0
    new-instance v0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;-><init>(Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;)V

    return-object v0
.end method

.method public build(Lorg/json/JSONObject;)Lcom/huawei/location/lite/common/http/request/RequestJsonBody;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;->body:Lorg/json/JSONObject;

    new-instance p1, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;

    invoke-direct {p1, p0}, Lcom/huawei/location/lite/common/http/request/RequestJsonBody;-><init>(Lcom/huawei/location/lite/common/http/request/RequestJsonBody$Builder;)V

    return-object p1
.end method
