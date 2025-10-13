.class public Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errorCode:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;->errorCode:J

    return-void
.end method


# virtual methods
.method public getCode()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;->errorCode:J

    return-wide v0
.end method
