.class public Lorg/webrtc/IceCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adapterType:Lorg/webrtc/PeerConnection$AdapterType;

.field public final sdp:Ljava/lang/String;

.field public final sdpMLineIndex:I

.field public final sdpMid:Ljava/lang/String;

.field public final serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iput p2, p0, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    iput-object p3, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lorg/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    sget-object p1, Lorg/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lorg/webrtc/PeerConnection$AdapterType;

    iput-object p1, p0, Lorg/webrtc/IceCandidate;->adapterType:Lorg/webrtc/PeerConnection$AdapterType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/webrtc/PeerConnection$AdapterType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iput p2, p0, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    iput-object p3, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    iput-object p4, p0, Lorg/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    iput-object p5, p0, Lorg/webrtc/IceCandidate;->adapterType:Lorg/webrtc/PeerConnection$AdapterType;

    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/webrtc/IceCandidate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/webrtc/IceCandidate;

    iget-object v0, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget-object v2, p1, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/webrtc/IceCandidate;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    iget v2, p1, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    iget-object p1, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/webrtc/IceCandidate;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getSdp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    return-object v0
.end method

.method getSdpMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p0, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/webrtc/IceCandidate;->adapterType:Lorg/webrtc/PeerConnection$AdapterType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
