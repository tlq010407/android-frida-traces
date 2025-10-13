.class Lcom/huawei/location/nlp/scan/wifi/yn$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/nlp/scan/wifi/FB$yn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/nlp/scan/wifi/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/nlp/scan/wifi/yn;


# direct methods
.method constructor <init>(Lcom/huawei/location/nlp/scan/wifi/yn;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/scan/wifi/yn$yn;->yn:Lcom/huawei/location/nlp/scan/wifi/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wifi scan fail, code is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnlyWifi"

    invoke-static {p2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public yn(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OnlyWifi"

    const-string v0, "scan wifi success, scanResultList is empty"

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/nlp/scan/wifi/yn$yn;->yn:Lcom/huawei/location/nlp/scan/wifi/yn;

    invoke-static {v0, p1}, Lcom/huawei/location/nlp/scan/wifi/yn;->yn(Lcom/huawei/location/nlp/scan/wifi/yn;Ljava/util/List;)V

    return-void
.end method
