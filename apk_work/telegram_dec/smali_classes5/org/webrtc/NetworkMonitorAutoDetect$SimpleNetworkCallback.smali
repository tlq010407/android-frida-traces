.class Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/NetworkMonitorAutoDetect;


# direct methods
.method private constructor <init>(Lorg/webrtc/NetworkMonitorAutoDetect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/NetworkMonitorAutoDetect;Lorg/webrtc/NetworkMonitorAutoDetect$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect;)V

    return-void
.end method

.method private onNetworkChanged(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$200(Lorg/webrtc/NetworkMonitorAutoDetect;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->access$300(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lorg/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$100(Lorg/webrtc/NetworkMonitorAutoDetect;)Lorg/webrtc/NetworkChangeDetector$Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/NetworkChangeDetector$Observer;->onNetworkConnect(Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network becomes available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilities changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkMonitorAutoDetect"

    invoke-static {v0, p2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    const-string p2, "NetworkMonitorAutoDetect"

    const-string v0, "link properties changed"

    invoke-static {p2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is about to lose in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkMonitorAutoDetect"

    invoke-static {p2, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$100(Lorg/webrtc/NetworkMonitorAutoDetect;)Lorg/webrtc/NetworkChangeDetector$Observer;

    move-result-object v0

    invoke-static {p1}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/webrtc/NetworkChangeDetector$Observer;->onNetworkDisconnect(J)V

    return-void
.end method
