.class public abstract Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile androidVersion:Ljava/lang/String;

.field private static volatile characteristics:Ljava/lang/String;

.field private static volatile emuiVerion:Ljava/lang/String;

.field private static volatile fullVersionId:Ljava/lang/String;

.field private static honorProMap:Ljava/util/Map;

.field private static volatile platform:Ljava/lang/String;

.field private static volatile region:Ljava/lang/String;


# direct methods
.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Lcom/huawei/location/lite/common/util/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "get"

    :try_start_1
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/huawei/location/lite/common/util/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v3, v2}, Lcom/huawei/location/lite/common/util/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SystemPropertiesUtil"

    const-string v1, "get SystemProperties Exception"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->getHonorProKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->androidVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->androidVersion:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.build.version.release"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->androidVersion:Ljava/lang/String;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getCharacter()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->characteristics:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->characteristics:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->characteristics:Ljava/lang/String;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->characteristics:Ljava/lang/String;

    return-object v0
.end method

.method public static getEMUIVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->emuiVerion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->emuiVerion:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.build.version.emui"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->emuiVerion:Ljava/lang/String;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->emuiVerion:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized getHonorProKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->initHonorProMapMap()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->platform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->platform:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->platform:Ljava/lang/String;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public static getProRegion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->region:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.product.locale.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->region:Ljava/lang/String;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->region:Ljava/lang/String;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->fullVersionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->fullVersionId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ro.build.realversion.id"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.build.cust.id"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.build.display.id"

    invoke-static {v3, v1}, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v2, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->fullVersionId:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->fullVersionId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->fullVersionId:Ljava/lang/String;

    return-object v0
.end method

.method private static initHonorProMapMap()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    const-string v1, "ro.hw.country"

    const-string v2, "msc.sys.country"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    const-string v1, "ro.build.hw_emui_api_level"

    const-string v2, "ro.build.magic_api_level"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    const-string v1, "ro.build.version.emui"

    const-string v2, "ro.build.version.magic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/location/lite/common/util/SystemPropertiesUtil;->honorProMap:Ljava/util/Map;

    const-string v1, "ro.config.hw_nlp"

    const-string v2, "msc.config.nlp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
