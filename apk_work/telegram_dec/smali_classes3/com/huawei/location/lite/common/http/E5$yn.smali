.class Lcom/huawei/location/lite/common/http/E5$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5$Vw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vw:Lcom/huawei/location/lite/common/http/E5;

.field final synthetic yn:Lcom/huawei/location/lite/common/http/E5$Vw;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/http/E5;Lcom/huawei/location/lite/common/http/E5$Vw;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    iput-object p2, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    instance-of p1, p2, Lcom/huawei/location/lite/common/http/exception/AuthException;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/huawei/location/lite/common/http/exception/AuthException;

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/http/exception/AuthException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v2

    iget v2, v2, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/http/exception/AuthException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p2

    iget-object p2, p2, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->msg:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p2}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    const/16 v0, 0x283c

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    const-string v2, "10300"

    invoke-static {p2, v1, v2, v0}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    const/16 p1, 0x65

    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    invoke-static {v0, p2}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;->setResponseString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    invoke-interface {p2, v0}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V
    :try_end_0
    .catch Lcom/huawei/location/lite/common/http/exception/OnFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    iget-object p2, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    const/16 v1, 0x283c

    invoke-static {v1}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOfKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10300"

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/E5$yn;->yn:Lcom/huawei/location/lite/common/http/E5$Vw;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/E5$yn;->Vw:Lcom/huawei/location/lite/common/http/E5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v3

    iget v3, v3, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/http/exception/BaseException;->getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object p2

    iget-object p2, p2, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->msg:Ljava/lang/String;

    invoke-static {v1, p1, v2, p2}, Lcom/huawei/location/lite/common/http/E5;->yn(Lcom/huawei/location/lite/common/http/E5;ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/location/lite/common/http/E5$Vw;->yn(Lcom/huawei/location/lite/common/http/response/ResponseInfo;)V

    :goto_1
    return-void
.end method
