.class public Lcom/huawei/wisesecurity/ucs_credential/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/q;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;)Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;
    .locals 1

    new-instance v0, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;

    invoke-direct {v0}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;->getUrl()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;->getHeaders()Ljava/util/Map;

    const/4 p1, 0x0

    throw p1
.end method

.method public initConfig(II)V
    .locals 5

    iget-object v0, p0, Lcom/huawei/wisesecurity/ucs_credential/q;->b:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/huawei/wisesecurity/ucs_credential/p;

    invoke-direct {v1, p0}, Lcom/huawei/wisesecurity/ucs_credential/p;-><init>(Lcom/huawei/wisesecurity/ucs_credential/q;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/network/NetworkKit;->init(Landroid/content/Context;Lcom/huawei/hms/network/NetworkKit$Callback;)Ljava/util/concurrent/Future;

    new-instance v1, Lcom/huawei/hms/network/restclient/RestClient$Builder;

    invoke-direct {v1}, Lcom/huawei/hms/network/restclient/RestClient$Builder;-><init>()V

    new-instance v2, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;

    invoke-direct {v2}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;-><init>()V

    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    move-result-object v3

    new-instance v4, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-direct {v4, v0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/huawei/hms/network/httpclient/HttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;->connectTimeout(I)Lcom/huawei/hms/network/httpclient/HttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;->retryTimeOnConnectionFailure(I)Lcom/huawei/hms/network/httpclient/HttpClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;

    invoke-direct {p2}, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;-><init>()V

    invoke-virtual {p1, p2}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/huawei/hms/network/httpclient/HttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/network/httpclient/HttpClient$Builder;->build()Lcom/huawei/hms/network/httpclient/HttpClient;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/network/restclient/RestClient$Builder;->httpClient(Lcom/huawei/hms/network/httpclient/HttpClient;)Lcom/huawei/hms/network/restclient/RestClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/network/restclient/RestClient$Builder;->build()Lcom/huawei/hms/network/restclient/RestClient;

    move-result-object p1

    const-class p2, Lcom/huawei/wisesecurity/ucs_credential/r;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/network/restclient/RestClient;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteRestClient init failed, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "RemoteRestClient"

    invoke-static {v0, p1, p2}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x7d1

    invoke-direct {p2, v0, v1, p1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p2
.end method

.method public post(Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;)Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;
    .locals 1

    new-instance v0, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;

    invoke-direct {v0}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkResponse;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;->getUrl()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;->getHeaders()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkRequest;->getBody()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
