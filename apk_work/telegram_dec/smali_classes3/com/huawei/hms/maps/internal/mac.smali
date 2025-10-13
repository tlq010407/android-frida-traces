.class public Lcom/huawei/hms/maps/internal/mac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Lcom/huawei/hms/maps/internal/ICreator; = null

.field private static c:Z = true

.field private static volatile d:Z = false

.field private static e:I

.field private static f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->isAndroidN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MapCreator"

    const-string v1, "get creator async."

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/huawei/hms/maps/internal/mac;->c(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/huawei/hms/maps/internal/mac;->b:Lcom/huawei/hms/maps/internal/ICreator;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hms/maps/internal/mac;->a:Landroid/content/Context;

    sput-object v0, Lcom/huawei/hms/maps/internal/mac;->b:Lcom/huawei/hms/maps/internal/ICreator;

    return-void
.end method

.method protected static a(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/huawei/hms/maps/internal/mac;->c:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;
    .locals 1

    .line 0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/hms/maps/internal/mac;->d:Z

    invoke-static {p0}, Lcom/huawei/hms/maps/internal/mac;->c(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object p0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/hms/maps/internal/mac;->d:Z

    return-object p0
.end method

.method public static b(Z)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/hms/maps/internal/mac;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "providerUpdateFlag"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;
    .locals 4

    const-class v0, Lcom/huawei/hms/maps/internal/mac;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/hms/maps/internal/mac;->b:Lcom/huawei/hms/maps/internal/ICreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "MapCreator"

    const-string v2, "Making Creator dynamically"

    invoke-static {v1, v2}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/huawei/hms/maps/internal/mac;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "MapCreator"

    const-string v2, "getRemoteMapContext failed"

    invoke-static {p0, v2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.huawei.hms.maps.CreatorImpl"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/huawei/hms/maps/internal/ICreator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p0

    const/16 v3, 0x3e8

    invoke-interface {v2, p0, v3}, Lcom/huawei/hms/maps/internal/ICreator;->init(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    :cond_2
    :try_start_4
    sput-object v1, Lcom/huawei/hms/maps/internal/mac;->b:Lcom/huawei/hms/maps/internal/ICreator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    :try_start_5
    const-string p0, "MapCreator"

    const-string v2, "loadClass failed"

    invoke-static {p0, v2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/maps/internal/mac;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/maps/utils/DynamicUtil;->setDynamicModule(Lcom/huawei/hms/feature/dynamic/DynamicModule;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/huawei/hms/maps/MapClientIdentify;->setAppContext(Landroid/content/Context;)V

    sget-object v0, Lcom/huawei/hms/maps/internal/mac;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/maps/internal/mac;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/huawei/hms/maps/internal/mac;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/huawei/hms/maps/internal/mac;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "com.huawei.hmsmap.updateFlag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/huawei/hms/maps/internal/mac;->f:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lcom/huawei/hms/maps/internal/mac;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const-string v0, "huawei_module_maps"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lcom/huawei/hms/maps/utils/DynamicUtil;->handlerDynamicLoadAfterLogic(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getDynamicModule()Lcom/huawei/hms/feature/dynamic/DynamicModule;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/huawei/hms/feature/dynamic/DynamicModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/huawei/hms/feature/dynamic/DynamicModule$VersionPolicy;

    invoke-static {p0, v2, v0}, Lcom/huawei/hms/feature/dynamic/DynamicModule;->load(Landroid/content/Context;Lcom/huawei/hms/feature/dynamic/DynamicModule$VersionPolicy;Ljava/lang/String;)Lcom/huawei/hms/feature/dynamic/DynamicModule;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/utils/DynamicUtil;->setDynamicModule(Lcom/huawei/hms/feature/dynamic/DynamicModule;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getDynamicModule()Lcom/huawei/hms/feature/dynamic/DynamicModule;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->getDynamicModule()Lcom/huawei/hms/feature/dynamic/DynamicModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DynamicModule;->getModuleContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Lcom/huawei/hms/feature/dynamic/DynamicModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading mapRoute dynamically failed, exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MapCreator"

    invoke-static {v3, v2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DynamicModule$LoadingException;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "errcode"

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemoteContext: LoadingException: errcode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resolution"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    const-string p0, "null intent, please check it."

    :goto_2
    invoke-static {v3, p0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v2, "get intent successfully."

    invoke-static {v3, v2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v2, Lcom/huawei/hms/maps/internal/mac;->c:Z

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/huawei/hms/maps/internal/mac;->c:Z

    const-string p0, "startUpdateActivity Success."

    invoke-static {v3, p0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p0, "startActivity error ActivityNotFound."

    invoke-static {v3, p0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemoteContext: LoadingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const-string v0, "bundle = null"

    goto :goto_5

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", and retryCount is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huawei/hms/maps/internal/mac;->e:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/maps/utils/DynamicUtil;->isAndroidN()Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/huawei/hms/maps/internal/mac;->d:Z

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_6

    goto :goto_7

    :cond_6
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    const-string v0, "InterruptedException: getRemoteContext failed."

    invoke-static {v3, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    sget v0, Lcom/huawei/hms/maps/internal/mac;->e:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/hms/maps/internal/mac;->e:I

    invoke-static {p0}, Lcom/huawei/hms/maps/internal/mac;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "Failed to obtain remote context. The maximum number of times has been reached."

    goto/16 :goto_2

    :cond_8
    :goto_7
    return-object v1
.end method
