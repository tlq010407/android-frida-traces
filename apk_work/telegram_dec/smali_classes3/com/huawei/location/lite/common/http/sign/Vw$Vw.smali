.class public Lcom/huawei/location/lite/common/http/sign/Vw$Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/sign/Vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vw"
.end annotation


# instance fields
.field private yn:Lcom/huawei/location/lite/common/http/sign/Vw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/location/lite/common/http/sign/Vw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/sign/Vw;-><init>(Lcom/huawei/location/lite/common/http/sign/Vw$yn;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "SignRequest"

    const-string v0, "create transId"

    invoke-static {p3, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-static {v0, p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-virtual {p2, p3}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-static {p2, p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public yn(Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/Vw$Vw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->FB(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V

    return-object p0
.end method

.method public yn([Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/Vw$Vw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn(Lcom/huawei/location/lite/common/http/sign/Vw;[Ljava/lang/String;)V

    return-object p0
.end method

.method public yn()Lcom/huawei/location/lite/common/http/sign/Vw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw$Vw;->yn:Lcom/huawei/location/lite/common/http/sign/Vw;

    return-object v0
.end method
