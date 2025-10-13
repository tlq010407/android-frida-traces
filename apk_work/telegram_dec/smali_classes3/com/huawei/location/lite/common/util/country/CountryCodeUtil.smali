.class public abstract Lcom/huawei/location/lite/common/util/country/CountryCodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getLocationCountryCode()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->isAirplaneModeOn()Z

    move-result v0

    const-string v1, "UNKNOWN"

    const-string v2, "CountryCodeUtil"

    if-eqz v0, :cond_0

    const-string v0, "airplane Mode is on"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->isSimNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/TelephonyUtil;->getSimCountryCode()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "get countryCode is UNKNOWN"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocatorCountryCode\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
