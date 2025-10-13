.class abstract Lcom/huawei/location/crowdsourcing/common/util/LW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final yn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/crowdsourcing/common/util/LW;->yn:[B

    return-void
.end method

.method static yn(Landroid/telephony/TelephonyManager;)V
    .locals 4

    .line 0
    new-instance v0, Lcom/huawei/location/crowdsourcing/common/util/LW$yn;

    invoke-direct {v0}, Lcom/huawei/location/crowdsourcing/common/util/LW$yn;-><init>()V

    sget-object v1, Lcom/huawei/location/crowdsourcing/common/util/LW;->yn:[B

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/huawei/location/crowdsourcing/common/util/LW$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "RefreshByCellInfoCallback"

    const-string v0, "Request cellInfoUpdate failed"

    :goto_0
    invoke-static {p0, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p0, "RefreshByCellInfoCallback"

    const-string v0, "Get cell sleep interrupted!"

    goto :goto_0

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static synthetic yn()[B
    .locals 1

    .line 0
    sget-object v0, Lcom/huawei/location/crowdsourcing/common/util/LW;->yn:[B

    return-object v0
.end method
