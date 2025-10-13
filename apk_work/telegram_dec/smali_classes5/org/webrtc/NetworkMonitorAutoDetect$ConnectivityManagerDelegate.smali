.class Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerDelegate"
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lorg/webrtc/NetworkChangeDetector$NetworkInformation;
    .locals 0

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object p0

    return-object p0
.end method

.method private getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 13

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object p1
.end method

.method private networkToInfo(Landroid/net/Network;)Lorg/webrtc/NetworkChangeDetector$NetworkInformation;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    const-string v2, "NetworkMonitorAutoDetect"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected unknown network: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null interface name for network "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v3

    invoke-static {v3}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v6

    sget-object v4, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v5, "Network "

    if-ne v6, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disconnected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq v6, v0, :cond_4

    sget-object v0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    if-ne v6, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " connection type is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it has type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and subtype "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v3}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$400(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v7

    new-instance v0, Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    invoke-static {v1}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v8

    invoke-virtual {p0, v1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/NetworkChangeDetector$IPAddress;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/webrtc/NetworkChangeDetector$NetworkInformation;-><init>(Ljava/lang/String;Lorg/webrtc/NetworkChangeDetector$ConnectionType;Lorg/webrtc/NetworkChangeDetector$ConnectionType;J[Lorg/webrtc/NetworkChangeDetector$IPAddress;)V

    :cond_6
    :goto_0
    return-object v0
.end method


# virtual methods
.method getActiveNetworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getAllNetworks()[Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Network;

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline20;->m(Landroid/net/ConnectivityManager;)[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method getDefaultNetId()J
    .locals 11

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-wide v6, v1

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v8, v3, v5

    invoke-virtual {p0, v8}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v9, v8}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline21;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v9, v10, :cond_4

    cmp-long v9, v6, v1

    if-nez v9, :cond_3

    invoke-static {v8}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiple connected networks of same type are not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-wide v6
.end method

.method getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/NetworkChangeDetector$IPAddress;
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/webrtc/NetworkChangeDetector$IPAddress;

    invoke-static {p1}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/net/LinkAddress;

    move-result-object v2

    new-instance v3, Lorg/webrtc/NetworkChangeDetector$IPAddress;

    invoke-static {v2}, Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/LinkAddress;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/webrtc/NetworkChangeDetector$IPAddress;-><init>([B)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method getNetworkState(Landroid/net/Network;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    iget-object v2, v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline21;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve information from network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkMonitorAutoDetect"

    invoke-static {v2, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v3, v1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    const/16 v5, 0x11

    const/4 v6, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    :cond_3
    :goto_0
    invoke-direct {v0, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5

    iget-object v3, v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/Network;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_5

    new-instance v3, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v10

    const/16 v7, 0x11

    const/4 v8, -0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v3

    :cond_5
    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v13, 0x11

    const/4 v14, -0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    :cond_6
    invoke-direct {v0, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v1

    return-object v1

    :cond_7
    :goto_1
    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1
.end method

.method hasInternetCapability(Landroid/net/Network;)Z
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/NetworkRequest$Builder;I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/NetworkRequest$Builder;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkMonitorAutoDetect"

    const-string v1, "Unregister network callback"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/NetworkRequest$Builder;I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/NetworkRequest$Builder;I)Landroid/net/NetworkRequest$Builder;

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdd$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/NetworkRequest$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate$$ExternalSyntheticApiModelOutline6;->m(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
