.class public Lcom/huawei/hms/framework/network/grs/g/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Lcom/huawei/hms/framework/network/grs/g/k/d;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/g/k/d;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/huawei/hms/framework/network/grs/g/j/a;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-object v3

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "grs_sdk_server_config.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/huawei/hms/framework/network/grs/h/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    monitor-exit v2

    return-object v4

    :cond_1
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "grs_server"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "grs_base_url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/huawei/hms/framework/network/grs/g/k/d;

    invoke-direct {v3}, Lcom/huawei/hms/framework/network/grs/g/k/d;-><init>()V

    sput-object v3, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;

    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/g/k/d;->a(Ljava/util/List;)V

    const-string v3, "grs_query_endpoint_1.0"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;

    invoke-virtual {v4, v3}, Lcom/huawei/hms/framework/network/grs/g/k/d;->b(Ljava/lang/String;)V

    const-string v3, "grs_query_endpoint_2.0"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;

    invoke-virtual {v4, v3}, Lcom/huawei/hms/framework/network/grs/g/k/d;->a(Ljava/lang/String;)V

    const-string v3, "grs_query_timeout"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v3, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;

    invoke-virtual {v3, p0}, Lcom/huawei/hms/framework/network/grs/g/k/d;->a(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    sget-object v3, Lcom/huawei/hms/framework/network/grs/g/j/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "getGrsServerBean catch JSONException: %s"

    invoke-static {v3, p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Lcom/huawei/hms/framework/network/grs/g/j/a;->b:Lcom/huawei/hms/framework/network/grs/g/k/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object p0

    :goto_3
    monitor-exit v2

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method
