.class public Lcom/huawei/location/lite/common/http/sign/ucs/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/sign/ucs/yn$LW;,
        Lcom/huawei/location/lite/common/http/sign/ucs/yn$FB;,
        Lcom/huawei/location/lite/common/http/sign/ucs/yn$dC;,
        Lcom/huawei/location/lite/common/http/sign/ucs/yn$Vw;,
        Lcom/huawei/location/lite/common/http/sign/ucs/yn$E5;
    }
.end annotation


# instance fields
.field private Vw:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

.field private yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;-><init>()V

    return-void
.end method

.method public static yn()Lcom/huawei/location/lite/common/http/sign/ucs/yn;
    .locals 1

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$E5;->yn()Lcom/huawei/location/lite/common/http/sign/ucs/yn;

    move-result-object v0

    return-object v0
.end method

.method private yn(Landroid/content/Context;)Z
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getExpireTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "UCSSignHelper"

    const-string v2, "init credential from sp"

    invoke-static {v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v2, "location_credential"

    invoke-direct {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    const-string v2, "credentialExpiredTime"

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "credentialCache"

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "UCSSignHelper"

    const-string v3, "sp credential is null"

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v2, v6

    goto :goto_3

    :cond_2
    :try_start_0
    new-instance v3, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    invoke-direct {v3}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->context(Landroid/content/Context;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->build()Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->Vw:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    invoke-virtual {v3, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;->genCredentialFromString(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/Credential;

    move-result-object v2
    :try_end_0
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init credential form sp failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;->errorCode:Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;

    invoke-virtual {v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;->getCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "UCSSignHelper"

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sp credential is expired,credentialExpiredTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_3
    iput-object v2, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    if-eqz v2, :cond_4

    return v1

    :cond_4
    const-string v2, "UCSSignHelper"

    const-string v3, "init credential from network"

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/huawei/location/lite/common/util/country/CountryCodeUtil;->getLocationCountryCode()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    invoke-direct {v3}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->context(Landroid/content/Context;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->serCountry(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->networkRetryTime(I)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->networkTimeOut(I)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    invoke-static {}, Lcom/huawei/location/lite/common/agc/AGCManager;->getInstance()Lcom/huawei/location/lite/common/agc/AGCManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/agc/AGCManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->appId(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    new-instance v2, Lcom/huawei/location/lite/common/http/sign/ucs/yn$Vw;

    invoke-direct {v2, v6}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$Vw;-><init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->grsCapability(Lcom/huawei/wisesecurity/ucs/credential/outer/GrsCapability;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    new-instance v2, Lcom/huawei/location/lite/common/http/sign/ucs/yn$FB;

    invoke-direct {v2, v6}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$FB;-><init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->haCapability(Lcom/huawei/wisesecurity/ucs/credential/outer/HACapability;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    new-instance v2, Lcom/huawei/location/lite/common/http/sign/ucs/yn$dC;

    invoke-direct {v2, v6}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$dC;-><init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->networkCapability(Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    new-instance v2, Lcom/huawei/location/lite/common/http/sign/ucs/yn$LW;

    invoke-direct {v2, v6}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$LW;-><init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->logInstance(Lcom/huawei/wisesecurity/ucs/common/log/ILogUcs;)Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient$Builder;->build()Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->Vw:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    const-string v2, "com.huawei.hms.location"

    invoke-virtual {p1, v2}, Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;->applyCredential(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/Credential;

    move-result-object v6
    :try_end_2
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init credential form network failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;->errorCode:Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsErrorCode;->getCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UCSSignHelper"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_5
    iput-object v6, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/huawei/location/lite/common/agc/AGCManager;->getInstance()Lcom/huawei/location/lite/common/agc/AGCManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/agc/AGCManager;->notifyAkChange()V

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getExpireTime()J

    move-result-wide v2

    const-string p1, "credentialExpiredTime"

    invoke-virtual {v0, p1, v2, v3}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveLong(Ljava/lang/String;J)Z

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "credentialCache"

    invoke-virtual {v0, v2, p1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Credential init success, expire time is :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v0}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UCSSignHelper"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1

    :goto_6
    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private yn(Ljava/lang/Long;)Z
    .locals 5

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public Vw()V
    .locals 2

    const-string v0, "UCSSignHelper"

    const-string v1, "reApplyCredential"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    new-instance v0, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v1, "location_credential"

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "credentialExpiredTime"

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->remove(Ljava/lang/String;)Z

    const-string v1, "credentialCache"

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->remove(Ljava/lang/String;)Z

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Landroid/content/Context;)Z

    return-void
.end method

.method public yn(Landroid/content/Context;Lcom/huawei/location/lite/common/http/sign/Vw;)Ljava/lang/String;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "begin to sign"

    const-string v7, "UCSSignHelper"

    invoke-static {v7, v6}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    const-string v8, ""

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getExpireTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->dC()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v8, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;

    invoke-direct {v8}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;-><init>()V

    iget-object v9, v0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v8, v9}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;->withCredential(Lcom/huawei/wisesecurity/ucs/credential/Credential;)Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;

    move-result-object v8

    sget-object v9, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->HMAC_SHA256:Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    invoke-virtual {v8, v9}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;->withAlg(Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;)Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;

    move-result-object v8

    iget-object v9, v0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->Vw:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    invoke-virtual {v8, v9}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;->withCredentialClient(Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;)Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner$Builder;->build()Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/huawei/location/lite/common/util/CanonicalQueryString;

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/huawei/location/lite/common/util/CanonicalQueryString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/huawei/location/lite/common/util/CanonicalQueryString;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->FB()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v14}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getAccessKey()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v5

    aput-object v6, v15, v4

    aput-object v10, v15, v3

    aput-object v13, v15, v2

    aput-object v14, v15, v1

    const/4 v6, 0x5

    aput-object v9, v15, v6

    const-string v6, "%s&%s&%s&%s&ak=%s&timestamp=%s"

    invoke-static {v11, v6, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v5

    aput-object v10, v12, v4

    const-string v6, "%s&%s"

    invoke-static {v11, v6, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v8}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSigner;->getSignHandler()Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignHandler;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignHandler;->from(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignHandler;->signBase64()Ljava/lang/String;

    move-result-object v6

    const-string v8, "sign successful"

    invoke-static {v7, v8}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/huawei/location/lite/common/http/sign/ucs/yn;->yn:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v7}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getAccessKey()Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v8, "hmslocation"

    aput-object v8, v1, v5

    aput-object v9, v1, v4

    aput-object v6, v1, v3

    aput-object v7, v1, v2

    const-string v2, "EXT-AUTH-CLOUDSOA-HMAC-SHA256 appid=%s,timestamp=%s,signature=%s,ak=%s"

    invoke-static {v11, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/location/lite/common/http/sign/Vw;->yn()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v8, v2, v5

    aput-object v1, v2, v4

    const-string v1, "%s,signedHeaders=%s"

    invoke-static {v11, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :catch_0
    const-string v1, "MalformedURLException"

    :goto_0
    invoke-static {v7, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "credential is not ready"

    goto :goto_0

    :cond_3
    :goto_2
    return-object v8

    :cond_4
    const-string v1, "Credential init fail,sign fail"

    invoke-static {v7, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/lite/common/http/exception/AuthException;

    const/16 v2, 0x29

    invoke-static {v2}, Lcom/huawei/location/lite/common/http/exception/ErrorCode;->valueOf(I)Lcom/huawei/location/lite/common/http/exception/ErrorCode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/location/lite/common/http/exception/AuthException;-><init>(Lcom/huawei/location/lite/common/http/exception/ErrorCode;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
