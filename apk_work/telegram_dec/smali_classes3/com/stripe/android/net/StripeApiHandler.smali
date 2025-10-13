.class public abstract Lcom/stripe/android/net/StripeApiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/StripeApiHandler$Parameter;
    }
.end annotation


# static fields
.field private static final SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/android/net/StripeSSLSocketFactory;

    invoke-direct {v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;-><init>()V

    sput-object v0, Lcom/stripe/android/net/StripeApiHandler;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static createGetConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->formatURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/stripe/android/net/StripeApiHandler;->createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method private static createPostConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .locals 2

    invoke-static {p0, p2}, Lcom/stripe/android/net/StripeApiHandler;->createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v1, "application/x-www-form-urlencoded;charset=%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_0
    throw p0
.end method

.method static createQuery(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/stripe/android/net/StripeApiHandler;->flattenParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    iget-object v2, v1, Lcom/stripe/android/net/StripeApiHandler$Parameter;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/stripe/android/net/StripeApiHandler$Parameter;->value:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/stripe/android/net/StripeApiHandler;->urlEncodePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .locals 2

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0x13880

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->getHeaders(Lcom/stripe/android/net/RequestOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v0, Lcom/stripe/android/net/StripeApiHandler;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    return-object p0
.end method

.method public static createToken(Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;
    .locals 2

    const-string v0, "POST"

    invoke-static {}, Lcom/stripe/android/net/StripeApiHandler;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;

    move-result-object p0

    return-object p0
.end method

.method private static flattenParams(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static flattenParamsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "%s[]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v3, "%s[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v1, v2}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    invoke-direct {v1, p1, v0}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lcom/stripe/android/exception/InvalidRequestException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You cannot set \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' to an empty string. We interpret empty strings as null in requests. You may set \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' to null to delete the property."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static formatURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "&"

    :cond_1
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method static getApiUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "https://api.stripe.com"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "tokens"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s/v1/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHeaders(Lcom/stripe/android/net/RequestOptions;)Ljava/util/Map;
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "3.5.0"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "Stripe/v1 JavaBindings/%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "User-Agent"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getPublishableApiKey()Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "Bearer %s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Authorization"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "java.vm.version"

    const-string v13, "java.vm.vendor"

    const-string v7, "os.name"

    const-string v8, "os.version"

    const-string v9, "os.arch"

    const-string v10, "java.version"

    const-string v11, "java.vendor"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v7, 0x7

    if-ge v5, v7, :cond_0

    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v3

    goto :goto_0

    :cond_0
    const-string v3, "bindings.version"

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lang"

    const-string v3, "Java"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "publisher"

    const-string v3, "Stripe"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "X-Stripe-Client-User-Agent"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "Stripe-Version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getIdempotencyKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Idempotency-Key"

    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getIdempotencyKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private static getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private static getStripeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;
    .locals 6

    :try_start_0
    invoke-static {p2}, Lcom/stripe/android/net/StripeApiHandler;->createQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->makeURLConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v5

    new-instance p0, Lcom/stripe/android/exception/InvalidRequestException;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v1, "Unable to encode parameters to UTF-8. Please contact support@stripe.com for assistance."

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static handleAPIError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    invoke-static {p0}, Lcom/stripe/android/net/ErrorParser;->parseError(Ljava/lang/String;)Lcom/stripe/android/net/ErrorParser$StripeError;

    move-result-object p0

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/stripe/android/exception/APIException;

    iget-object p0, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/stripe/android/exception/APIException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    iget-object v3, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v4, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/stripe/android/exception/PermissionException;

    iget-object p0, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/stripe/android/exception/PermissionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/stripe/android/exception/CardException;

    iget-object v2, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v4, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->code:Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    iget-object v6, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->decline_code:Ljava/lang/String;

    iget-object v7, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->charge:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/stripe/android/exception/CardException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    iget-object p0, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    iget-object v2, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/stripe/android/exception/RateLimitException;

    iget-object v8, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v9, p0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v0

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/stripe/android/exception/RateLimitException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeURLConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x11336

    if-eq v3, v4, :cond_1

    const v4, 0x2590a0

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_1
    const-string v3, "GET"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_4

    if-ne v3, v1, :cond_3

    invoke-static {p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object p0

    :goto_2
    move-object v2, p0

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/stripe/android/exception/APIConnectionException;

    const-string p2, "Unrecognized HTTP method %s. This indicates a bug in the Stripe bindings. Please contact support@stripe.com for assistance."

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/stripe/android/exception/APIConnectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->createGetConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-lt p0, p1, :cond_5

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_5

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_4

    :goto_5
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    new-instance p3, Lcom/stripe/android/net/StripeResponse;

    invoke-direct {p3, p0, p1, p2}, Lcom/stripe/android/net/StripeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p3

    :goto_6
    :try_start_1
    new-instance p1, Lcom/stripe/android/exception/APIConnectionException;

    const-string p2, "IOException during API request to Stripe (%s): %s Please check your internet connection and try again. If this problem persists, you should check Stripe\'s service status at https://twitter.com/stripestatus, or let us know at support@stripe.com."

    invoke-static {}, Lcom/stripe/android/net/StripeApiHandler;->getApiUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    aput-object v3, v4, v1

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/stripe/android/exception/APIConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method private static requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;
    .locals 7

    const-string v0, "-1"

    const-string v1, "networkaddress.cache.ttl"

    const/4 v2, 0x0

    if-nez p3, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :try_start_0
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "0"

    invoke-static {v1, v5}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v4, v2

    :catch_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p3}, Lcom/stripe/android/net/RequestOptions;->getPublishableApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_b

    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->getStripeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/android/net/StripeResponse;->getResponseCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/stripe/android/net/StripeResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/stripe/android/net/StripeResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v2

    goto :goto_1

    :cond_1
    const-string p3, "Request-Id"

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    nop

    goto :goto_6

    :cond_2
    move-object p0, v2

    :goto_2
    const/16 p3, 0xc8

    if-lt p1, p3, :cond_3

    const/16 p3, 0x12c

    if-lt p1, p3, :cond_4

    :cond_3
    invoke-static {p2, p1, p0}, Lcom/stripe/android/net/StripeApiHandler;->handleAPIError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    invoke-static {p2}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v4, :cond_5

    invoke-static {v1, v0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v1, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object p0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez v4, :cond_7

    invoke-static {v1, v0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-static {v1, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    throw p0

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    if-nez v4, :cond_9

    invoke-static {v1, v0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    invoke-static {v1, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-object v2

    :cond_b
    new-instance p0, Lcom/stripe/android/exception/AuthenticationException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "No API key provided. (HINT: set your API key using \'Stripe.apiKey = <API-KEY>\'. You can generate API keys from the Stripe web interface. See https://stripe.com/api for details or email support@stripe.com if you have questions."

    invoke-direct {p0, p2, v2, p1}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw p0
.end method

.method private static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static urlEncodePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/stripe/android/net/StripeApiHandler;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
