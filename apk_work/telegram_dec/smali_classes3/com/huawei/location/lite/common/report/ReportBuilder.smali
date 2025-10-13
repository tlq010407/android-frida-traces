.class public Lcom/huawei/location/lite/common/report/ReportBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CLOUD_FENCE_TYPE:Ljava/lang/String; = "3"

.field protected static final CP_SDK_TYPE:Ljava/lang/String; = "1"

.field protected static final FULL_SDK_TYPE:Ljava/lang/String; = "4"

.field protected static final OPEN_SDK_TYPE:Ljava/lang/String; = "2"

.field private static final ROM_CN_HW:Ljava/lang/String; = "1003"

.field private static final ROM_G_ABROAD:Ljava/lang/String; = "1002"

.field private static final ROM_HW_PAD:Ljava/lang/String; = "1100"

.field private static final ROM_HW_WATCH:Ljava/lang/String; = "1200"

.field private static final ROM_NOG_ABROAD:Ljava/lang/String; = "1001"

.field private static final ROM_NO_HW:Ljava/lang/String; = "2001"


# instance fields
.field private callTime:J

.field private eventId:Ljava/lang/String;

.field protected linkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setBrand()Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setManufacturer()Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setCallTime()Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setWifiEnable()Lcom/huawei/location/lite/common/report/ReportBuilder;

    const-string v0, "hwLocation"

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setService(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-static {}, Lcom/huawei/location/lite/common/util/NetworkUtil;->getNetworkState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setNetworkType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-static {}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->getMccCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setMCC(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setLocationSdkType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-static {}, Lcom/huawei/location/lite/common/util/APKUtil;->getLBSVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setLBSVersionCode(J)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setRomType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setPackage(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    const v0, 0x13748ac

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/lite/common/report/ReportBuilder;->setVersion(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isHuaweiPlatformDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/DeviceInfoUtil;->getDeviceFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "1100"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/DeviceInfoUtil;->isHuaweiWatch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1200"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isChineseRom()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1003"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isGmsRom()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1002"

    goto :goto_0

    :cond_3
    const-string v0, "1001"

    goto :goto_0

    :cond_4
    const-string v0, "2001"

    :goto_0
    return-object v0
.end method

.method public setApiName(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "apiName"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppID(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBrand()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/huawei/location/lite/common/util/DeviceInfoUtil;->getBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCallTime()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->callTime:J

    return-object p0
.end method

.method public setCostTime()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->callTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iget-object v2, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "costTime"

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCpAppVersion(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "cpAppVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "ext"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected setLBSVersionCode(J)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lbs_version"

    invoke-virtual {v0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLocationEnable(Z)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v0, "locEnable"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setLocationSdkType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "lcSdkType"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMCC(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "MCC"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setManufacturer()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/huawei/location/lite/common/util/DeviceInfoUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pub_mfc"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setModuleName(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "networkType"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOperator(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "operator"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRequestUrl(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "requestUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setResult(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRomType(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "rom_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "service"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSrc(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "src"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTransactionID(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "transId"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setWLANScan()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 3

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->checkWLANScan(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "WLANScan"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setWifiEnable()Lcom/huawei/location/lite/common/report/ReportBuilder;
    .locals 3

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->checkWifiIsEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/report/ReportBuilder;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "wifiEnable"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
