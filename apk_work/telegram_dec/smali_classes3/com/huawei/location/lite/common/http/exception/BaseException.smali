.class public abstract Lcom/huawei/location/lite/common/http/exception/BaseException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field protected errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/exception/BaseException;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/exception/BaseException;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    return-object v0
.end method
