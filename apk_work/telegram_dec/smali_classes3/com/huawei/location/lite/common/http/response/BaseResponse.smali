.class public abstract Lcom/huawei/location/lite/common/http/response/BaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "code",
            "returnCode"
        }
        value = "errorCode"
    .end annotation
.end field

.field protected msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "message",
            "returnDesc"
        }
        value = "errorMsg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApiCode()Ljava/lang/String;
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/response/BaseResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/response/BaseResponse;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
