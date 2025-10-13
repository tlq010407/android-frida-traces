.class public Lcom/huawei/location/lite/common/http/Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/Vw$yn;
    }
.end annotation


# static fields
.field private static final Vw:Lokhttp3/ConnectionPool;

.field private static final yn:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/huawei/location/lite/common/http/Vw;->yn:I

    new-instance v1, Lokhttp3/ConnectionPool;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-direct {v1, v0, v3, v4, v2}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    sput-object v1, Lcom/huawei/location/lite/common/http/Vw;->Vw:Lokhttp3/ConnectionPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vw()V
    .locals 1

    sget-object v0, Lcom/huawei/location/lite/common/http/Vw;->Vw:Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    return-void
.end method

.method static synthetic yn()Lokhttp3/ConnectionPool;
    .locals 1

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/http/Vw;->Vw:Lokhttp3/ConnectionPool;

    return-object v0
.end method


# virtual methods
.method public yn(Landroid/content/Context;Lcom/huawei/location/lite/common/http/Vw$yn;Lcom/huawei/location/lite/common/http/HttpConfigInfo;)Lokhttp3/OkHttpClient;
    .locals 4

    .line 0
    const/4 v0, 0x0

    const-string v1, "HttpClientFactory"

    invoke-static {}, Lcom/huawei/location/lite/common/util/LocationUtil;->registerScreenStatusBroadcast()V

    invoke-virtual {p3}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedInterceptor()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/huawei/location/lite/common/http/interceptor/FB;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/interceptor/FB;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/huawei/location/lite/common/http/interceptor/LW;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/interceptor/LW;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckUcsAuth()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/huawei/location/lite/common/http/interceptor/d2;

    invoke-direct {v3}, Lcom/huawei/location/lite/common/http/interceptor/d2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckAGC()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Lcom/huawei/location/lite/common/http/interceptor/yn;

    invoke-direct {p3}, Lcom/huawei/location/lite/common/http/interceptor/yn;-><init>()V

    :goto_0
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckTssAuth()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Lcom/huawei/location/lite/common/http/interceptor/E5;

    invoke-direct {p3}, Lcom/huawei/location/lite/common/http/interceptor/E5;-><init>()V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/huawei/location/lite/common/http/interceptor/dC;

    invoke-direct {p3}, Lcom/huawei/location/lite/common/http/interceptor/dC;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    iget-object v3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->yn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    move-result-object p3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-object v2, p3

    :catch_1
    const-string p1, "addSslSocketFactory IOException"

    :goto_3
    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-object v2, p3

    :catch_3
    const-string p1, "addSslSocketFactory KeyStoreException"

    goto :goto_3

    :catch_4
    move-object v2, p3

    :catch_5
    const-string p1, "addSslSocketFactory CertificateException"

    goto :goto_3

    :catch_6
    move-object v2, p3

    :catch_7
    const-string p1, "addSslSocketFactory IllegalArgumentException"

    goto :goto_3

    :catch_8
    move-object v2, p3

    :catch_9
    const-string p1, "addSslSocketFactory IllegalAccessException"

    goto :goto_3

    :catch_a
    move-object v2, p3

    :catch_b
    const-string p1, "addSslSocketFactory KeyManagementException"

    goto :goto_3

    :catch_c
    move-object v2, p3

    :catch_d
    const-string p1, "addSslSocketFactory NoSuchAlgorithmException"

    goto :goto_3

    :goto_4
    iput-object v2, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->dC:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->E5:Ljavax/net/ssl/X509TrustManager;

    new-instance p1, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;

    invoke-direct {p1}, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;-><init>()V

    iput-object p1, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->d2:Ljavax/net/ssl/HostnameVerifier;

    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/huawei/location/lite/common/http/Vw;->yn()Lokhttp3/ConnectionPool;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, p3, v0

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v1, 0x1

    aput-object v0, p3, v1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->LW:I

    if-lez p3, :cond_4

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_4
    iget p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->FB:I

    if-lez p3, :cond_5

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_5
    iget-object p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->d2:Ljavax/net/ssl/HostnameVerifier;

    if-eqz p3, :cond_6

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    :cond_6
    iget-object p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->dC:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p3, :cond_7

    iget-object v0, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->E5:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_7

    invoke-virtual {p1, p3, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    :cond_7
    iget-object p3, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->yn:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_5

    :cond_8
    iget-object p2, p2, Lcom/huawei/location/lite/common/http/Vw$yn;->Vw:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/Interceptor;

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
