.class public Lcom/huawei/location/nlp/scan/dC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yn:Lcom/huawei/location/nlp/scan/yn;


# direct methods
.method public constructor <init>(Lcom/huawei/location/nlp/api/Vw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/location/nlp/scan/dC;->yn()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/huawei/location/nlp/scan/Vw;

    invoke-direct {p1}, Lcom/huawei/location/nlp/scan/Vw;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/nlp/scan/dC;->yn:Lcom/huawei/location/nlp/scan/yn;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/huawei/location/nlp/scan/cell/Vw;

    invoke-direct {v0, p1}, Lcom/huawei/location/nlp/scan/cell/Vw;-><init>(Lcom/huawei/location/nlp/api/Vw;)V

    :goto_0
    iput-object v0, p0, Lcom/huawei/location/nlp/scan/dC;->yn:Lcom/huawei/location/nlp/scan/yn;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/huawei/location/nlp/scan/wifi/yn;

    invoke-direct {v0, p1}, Lcom/huawei/location/nlp/scan/wifi/yn;-><init>(Lcom/huawei/location/nlp/api/Vw;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/huawei/location/nlp/scan/E5;

    invoke-direct {v0, p1}, Lcom/huawei/location/nlp/scan/E5;-><init>(Lcom/huawei/location/nlp/api/Vw;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public FB()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/nlp/scan/dC;->yn:Lcom/huawei/location/nlp/scan/yn;

    invoke-interface {v0}, Lcom/huawei/location/nlp/scan/yn;->Vw()V

    return-void
.end method

.method public Vw()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/nlp/scan/dC;->yn:Lcom/huawei/location/nlp/scan/yn;

    invoke-interface {v0}, Lcom/huawei/location/nlp/scan/yn;->yn()V

    return-void
.end method

.method public yn()I
    .locals 4

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/config/ConfigManager;->getInstance()Lcom/huawei/location/lite/common/config/ConfigManager;

    move-result-object v0

    const-string v1, "location"

    const-string v2, "geo_position_type"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/location/lite/common/config/ConfigManager;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig, model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScanTask"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "scan model parse fail, NumberFormatException"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final model is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public yn(J)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/nlp/scan/dC;->yn:Lcom/huawei/location/nlp/scan/yn;

    invoke-interface {v0, p1, p2}, Lcom/huawei/location/nlp/scan/yn;->yn(J)V

    return-void
.end method
