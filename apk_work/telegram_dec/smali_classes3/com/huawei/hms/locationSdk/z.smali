.class public Lcom/huawei/hms/locationSdk/z;
.super Lcom/huawei/hms/locationSdk/b0;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/huawei/hms/locationSdk/z;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/hms/locationSdk/z;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/locationSdk/b0;-><init>()V

    return-void
.end method

.method public static b()Lcom/huawei/hms/locationSdk/z;
    .locals 2

    sget-object v0, Lcom/huawei/hms/locationSdk/z;->b:Lcom/huawei/hms/locationSdk/z;

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/hms/locationSdk/z;->c:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/locationSdk/z;->b:Lcom/huawei/hms/locationSdk/z;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/locationSdk/z;

    invoke-direct {v1}, Lcom/huawei/hms/locationSdk/z;-><init>()V

    sput-object v1, Lcom/huawei/hms/locationSdk/z;->b:Lcom/huawei/hms/locationSdk/z;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/huawei/hms/locationSdk/z;->b:Lcom/huawei/hms/locationSdk/z;

    return-object v0
.end method
