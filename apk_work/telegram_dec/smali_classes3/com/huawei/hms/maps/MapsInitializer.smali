.class public final Lcom/huawei/hms/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/hms/maps/MapsInitializer;->a:Z

    return v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/huawei/hms/maps/MapsInitializer;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->setContext(Landroid/content/Context;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/huawei/hms/maps/MapsInitializer;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/huawei/hms/maps/MapClientIdentify;->setApiKey(Ljava/lang/String;)V

    return-void
.end method
