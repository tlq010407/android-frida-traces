.class public Lcom/huawei/location/nlp/scan/Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/nlp/scan/yn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vw()V
    .locals 2

    const-string v0, "IdleModel"

    const-string v1, "current model is idle,do nothing"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public yn()V
    .locals 2

    .line 0
    const-string v0, "IdleModel"

    const-string v1, "current model is idle,do nothing"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public yn(J)V
    .locals 0

    .line 0
    const-string p1, "IdleModel"

    const-string p2, "current model is idle,do nothing"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
