.class public abstract Lcom/huawei/location/lite/common/exception/BaseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private exceptionCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/exception/BaseException;->setExceptionCode(I)V

    return-void
.end method

.method private setExceptionCode(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/lite/common/exception/BaseException;->exceptionCode:I

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/lite/common/exception/BaseException;->exceptionCode:I

    return v0
.end method
