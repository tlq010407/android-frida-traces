.class public Lorg/webrtc/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/NetworkChangeDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;,
        Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;
    }
.end annotation


# static fields
.field private static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

.field private connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final observer:Lorg/webrtc/NetworkChangeDetector$Observer;

.field private wifiDirectManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/NetworkChangeDetector$Observer;

    iput-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v0, p2}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-direct {v0, p2}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "IncludeWifiDirect"

    invoke-static {v0}, Lorg/webrtc/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lorg/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    :cond_0
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->registerReceiver()V

    iget-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NetworkMonitorAutoDetect"

    const-string v0, "Unable to obtain permission to request a cellular network."

    invoke-static {p1, v0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance p1, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    invoke-direct {p1, p0, p2}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect;Lorg/webrtc/NetworkMonitorAutoDetect$1;)V

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p2, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/net/Network;)J
    .locals 2

    invoke-static {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/webrtc/NetworkMonitorAutoDetect;)Lorg/webrtc/NetworkChangeDetector$Observer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/NetworkChangeDetector$Observer;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/NetworkMonitorAutoDetect;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    invoke-static {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getUnderlyingConnectionTypeForVpn(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private connectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 2

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network connectivity changed, type is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/NetworkChangeDetector$Observer;

    invoke-interface {p1, v0}, Lorg/webrtc/NetworkChangeDetector$Observer;->onConnectionTypeChanged(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method public static getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionType(ZII)Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    .line 0
    if-nez p0, :cond_0

    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_1
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_VPN:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_ETHERNET:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_4
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_5
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_6
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_5G:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_3G:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_2G:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUnderlyingConnectionTypeForVpn(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkTypeForVpn()I

    move-result v1

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkSubtypeForVpn()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private getWifiSSID(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p1

    sget-object v0, Lorg/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-virtual {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x4

    invoke-static {v0, p0, v1, v2}, Lcom/android/billingclient/api/zzg$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    :cond_2
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->unregisterReceiver()V

    return-void
.end method

.method public getActiveNetworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public getCurrentConnectionType()Lorg/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    move-result-wide v0

    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->connectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    return v0
.end method
