.class public final Lcom/huawei/agconnect/AGConnectOptionsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final customConfigMap:Ljava/util/Map;

.field private final customServices:Ljava/util/List;

.field private inputStream:Ljava/io/InputStream;

.field private packageName:Ljava/lang/String;

.field private routePolicy:Lcom/huawei/agconnect/AGCRoutePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huawei/agconnect/AGCRoutePolicy;->UNKNOWN:Lcom/huawei/agconnect/AGCRoutePolicy;

    iput-object v0, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->routePolicy:Lcom/huawei/agconnect/AGCRoutePolicy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->customConfigMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->customServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/huawei/agconnect/AGConnectOptions;
    .locals 9

    new-instance v8, Lcom/huawei/agconnect/config/impl/b;

    iget-object v2, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->routePolicy:Lcom/huawei/agconnect/AGCRoutePolicy;

    iget-object v4, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->customConfigMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->customServices:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/huawei/agconnect/config/impl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/agconnect/AGCRoutePolicy;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public setInputStream(Ljava/io/InputStream;)Lcom/huawei/agconnect/AGConnectOptionsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method
