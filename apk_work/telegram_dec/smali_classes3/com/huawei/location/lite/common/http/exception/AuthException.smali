.class public Lcom/huawei/location/lite/common/http/exception/AuthException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/exception/AuthException;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/huawei/location/lite/common/http/exception/ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/exception/AuthException;->errorCode:Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    return-object v0
.end method
