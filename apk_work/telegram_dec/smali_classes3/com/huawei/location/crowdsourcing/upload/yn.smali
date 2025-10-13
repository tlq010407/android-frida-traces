.class public Lcom/huawei/location/crowdsourcing/upload/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/crowdsourcing/upload/yn$yn;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yn(Lcom/huawei/location/crowdsourcing/upload/entity/Vw;Ljava/util/Map;Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/upload/entity/Vw;
    .locals 4

    const-string v0, "getDomainFromCloud start"

    const-string v1, "GetServerDomain"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/crowdsourcing/upload/http/FB;

    iget-object v2, p1, Lcom/huawei/location/crowdsourcing/upload/entity/Vw;->yn:Ljava/lang/String;

    const-string v3, "/v2/getServerDomain"

    invoke-direct {v0, v2, v3}, Lcom/huawei/location/crowdsourcing/upload/http/FB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/huawei/location/crowdsourcing/upload/http/FB;->yn(Ljava/util/Map;)Lcom/huawei/location/crowdsourcing/upload/http/FB;

    move-result-object p2

    iget-object p1, p1, Lcom/huawei/location/crowdsourcing/upload/entity/Vw;->Vw:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/huawei/location/crowdsourcing/upload/http/FB;->dC(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/upload/http/FB;

    move-result-object p1

    const-string p2, "appID"

    invoke-virtual {p1, p2, p3}, Lcom/huawei/location/crowdsourcing/upload/http/Vw;->Vw(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/upload/http/Vw;

    const-class p1, Lcom/huawei/location/crowdsourcing/upload/yn$yn;

    invoke-virtual {v0, p1}, Lcom/huawei/location/crowdsourcing/upload/http/Vw;->yn(Ljava/lang/Class;)Lcom/huawei/location/crowdsourcing/upload/http/yn;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/crowdsourcing/upload/yn$yn;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/huawei/location/crowdsourcing/upload/entity/Vw;

    invoke-virtual {p1}, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->LW()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->FB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/huawei/location/crowdsourcing/upload/entity/Vw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string p1, "resp is null:"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
