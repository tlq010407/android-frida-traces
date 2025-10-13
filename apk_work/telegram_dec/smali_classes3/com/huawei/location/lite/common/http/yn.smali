.class public Lcom/huawei/location/lite/common/http/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yn:Lcom/huawei/location/lite/common/report/ReportBuilder;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/report/ReportBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/yn;->yn()V

    return-void
.end method

.method private yn()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setCallTime()Lcom/huawei/location/lite/common/report/ReportBuilder;

    return-void
.end method


# virtual methods
.method public yn(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 0
    const-string v0, "CommonDataHandler"

    const/16 v1, 0x2840

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const-string p2, "param exception"

    invoke-static {v0, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntity exception body is :"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/location/lite/common/http/exception/OnFailureException;

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/huawei/location/lite/common/http/exception/OnFailureException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    throw p1
.end method

.method public yn(Lcom/huawei/location/lite/common/http/request/BaseRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    const-string v0, "CommonDataHandler"

    if-nez p1, :cond_0

    const-string p1, "request param exception"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    if-nez v1, :cond_1

    new-instance v1, Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/report/ReportBuilder;-><init>()V

    iput-object v1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    :cond_1
    iget-object v1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    const-string v2, "Location_serverApi"

    invoke-virtual {v1, v2}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setApiName(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getHeads()Lokhttp3/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "X-Request-ID"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {v2, v1}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setTransactionID(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/http/request/BaseRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setRequestUrl(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-static {p2}, Lcom/huawei/location/lite/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1, p2}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setErrorCode(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    :cond_2
    invoke-static {p3}, Lcom/huawei/location/lite/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1, p3}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setErrorMessage(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    :cond_3
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setCostTime()Lcom/huawei/location/lite/common/report/ReportBuilder;

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/report/Tracker;->getInstance()Lcom/huawei/location/lite/common/report/Tracker;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1, p2}, Lcom/huawei/location/lite/common/report/Tracker;->onMaintEvent(Lcom/huawei/location/lite/common/report/ReportBuilder;)V

    invoke-static {}, Lcom/huawei/location/lite/common/report/Tracker;->getInstance()Lcom/huawei/location/lite/common/report/Tracker;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/yn;->yn:Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p1, p2}, Lcom/huawei/location/lite/common/report/Tracker;->onOperationEvent(Lcom/huawei/location/lite/common/report/ReportBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "reportHttpResult exception"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
