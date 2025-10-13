.class public Lorg/webrtc/RtpCapabilities$CodecCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RtpCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecCapability"
.end annotation


# instance fields
.field public clockRate:Ljava/lang/Integer;

.field public kind:Lorg/webrtc/MediaStreamTrack$MediaType;

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public numChannels:Ljava/lang/Integer;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredPayloadType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lorg/webrtc/MediaStreamTrack$MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/webrtc/MediaStreamTrack$MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->preferredPayloadType:I

    iput-object p2, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    iput-object p4, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->clockRate:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->numChannels:Ljava/lang/Integer;

    iput-object p7, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->parameters:Ljava/util/Map;

    iput-object p6, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getClockRate()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->clockRate:Ljava/lang/Integer;

    return-object v0
.end method

.method getKind()Lorg/webrtc/MediaStreamTrack$MediaType;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNumChannels()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->numChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method getPreferredPayloadType()I
    .locals 1

    iget v0, p0, Lorg/webrtc/RtpCapabilities$CodecCapability;->preferredPayloadType:I

    return v0
.end method
