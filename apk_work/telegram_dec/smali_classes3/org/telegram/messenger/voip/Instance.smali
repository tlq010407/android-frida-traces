.class public final Lorg/telegram/messenger/voip/Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/Instance$ServerConfig;,
        Lorg/telegram/messenger/voip/Instance$Config;,
        Lorg/telegram/messenger/voip/Instance$Endpoint;,
        Lorg/telegram/messenger/voip/Instance$Proxy;,
        Lorg/telegram/messenger/voip/Instance$EncryptionKey;,
        Lorg/telegram/messenger/voip/Instance$Candidate;,
        Lorg/telegram/messenger/voip/Instance$Fingerprint;,
        Lorg/telegram/messenger/voip/Instance$TrafficStats;,
        Lorg/telegram/messenger/voip/Instance$FinalState;,
        Lorg/telegram/messenger/voip/Instance$OnRemoteMediaStateUpdatedListener;,
        Lorg/telegram/messenger/voip/Instance$OnSignalingDataListener;,
        Lorg/telegram/messenger/voip/Instance$OnSignalBarsUpdatedListener;,
        Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;
    }
.end annotation


# static fields
.field public static final AUDIO_STATE_ACTIVE:I = 0x1

.field public static final AUDIO_STATE_MUTED:I = 0x0

.field public static final DATA_SAVING_ALWAYS:I = 0x2

.field public static final DATA_SAVING_MOBILE:I = 0x1

.field public static final DATA_SAVING_NEVER:I = 0x0

.field public static final DATA_SAVING_ROAMING:I = 0x3

.field public static final ENDPOINT_TYPE_INET:I = 0x0

.field public static final ENDPOINT_TYPE_LAN:I = 0x1

.field public static final ENDPOINT_TYPE_TCP_RELAY:I = 0x3

.field public static final ENDPOINT_TYPE_UDP_RELAY:I = 0x2

.field public static final ERROR_AUDIO_IO:Ljava/lang/String; = "ERROR_AUDIO_IO"

.field public static final ERROR_CONNECTION_SERVICE:Ljava/lang/String; = "ERROR_CONNECTION_SERVICE"

.field public static final ERROR_INCOMPATIBLE:Ljava/lang/String; = "ERROR_INCOMPATIBLE"

.field public static final ERROR_INSECURE_UPGRADE:Ljava/lang/String; = "ERROR_INSECURE_UPGRADE"

.field public static final ERROR_LOCALIZED:Ljava/lang/String; = "ERROR_LOCALIZED"

.field public static final ERROR_PEER_OUTDATED:Ljava/lang/String; = "ERROR_PEER_OUTDATED"

.field public static final ERROR_PRIVACY:Ljava/lang/String; = "ERROR_PRIVACY"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "ERROR_TIMEOUT"

.field public static final ERROR_UNKNOWN:Ljava/lang/String; = "ERROR_UNKNOWN"

.field public static final NET_TYPE_3G:I = 0x3

.field public static final NET_TYPE_DIALUP:I = 0xa

.field public static final NET_TYPE_EDGE:I = 0x2

.field public static final NET_TYPE_ETHERNET:I = 0x7

.field public static final NET_TYPE_GPRS:I = 0x1

.field public static final NET_TYPE_HSPA:I = 0x4

.field public static final NET_TYPE_LTE:I = 0x5

.field public static final NET_TYPE_OTHER_HIGH_SPEED:I = 0x8

.field public static final NET_TYPE_OTHER_LOW_SPEED:I = 0x9

.field public static final NET_TYPE_OTHER_MOBILE:I = 0xb

.field public static final NET_TYPE_UNKNOWN:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x6

.field public static final PEER_CAP_GROUP_CALLS:I = 0x1

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_RECONNECTING:I = 0x5

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2

.field public static final VIDEO_STATE_ACTIVE:I = 0x2

.field public static final VIDEO_STATE_INACTIVE:I = 0x0

.field public static final VIDEO_STATE_PAUSED:I = 0x1

.field private static bufferSize:I

.field private static globalServerConfig:Lorg/telegram/messenger/voip/Instance$ServerConfig;

.field private static instance:Lorg/telegram/messenger/voip/NativeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/messenger/voip/Instance$ServerConfig;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/voip/Instance$ServerConfig;-><init>(Lorg/json/JSONObject;Lorg/telegram/messenger/voip/Instance$1;)V

    sput-object v0, Lorg/telegram/messenger/voip/Instance;->globalServerConfig:Lorg/telegram/messenger/voip/Instance$ServerConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHasDelegate()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tgvoip version is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    return-void
.end method

.method public static getConnectionMaxLayer()I
    .locals 1

    const/16 v0, 0x5c

    return v0
.end method

.method public static getGlobalServerConfig()Lorg/telegram/messenger/voip/Instance$ServerConfig;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/voip/Instance;->globalServerConfig:Lorg/telegram/messenger/voip/Instance$ServerConfig;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static makeInstance(Ljava/lang/String;Lorg/telegram/messenger/voip/Instance$Config;Ljava/lang/String;[Lorg/telegram/messenger/voip/Instance$Endpoint;Lorg/telegram/messenger/voip/Instance$Proxy;ILorg/telegram/messenger/voip/Instance$EncryptionKey;Lorg/webrtc/VideoSink;JLorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;)Lorg/telegram/messenger/voip/NativeInstance;
    .locals 1

    const-string v0, "2.4.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    :cond_0
    invoke-static/range {p0 .. p10}, Lorg/telegram/messenger/voip/NativeInstance;->make(Ljava/lang/String;Lorg/telegram/messenger/voip/Instance$Config;Ljava/lang/String;[Lorg/telegram/messenger/voip/Instance$Endpoint;Lorg/telegram/messenger/voip/Instance$Proxy;ILorg/telegram/messenger/voip/Instance$EncryptionKey;Lorg/webrtc/VideoSink;JLorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    sget-object p0, Lorg/telegram/messenger/voip/Instance;->globalServerConfig:Lorg/telegram/messenger/voip/Instance$ServerConfig;

    invoke-static {p0}, Lorg/telegram/messenger/voip/Instance$ServerConfig;->access$100(Lorg/telegram/messenger/voip/Instance$ServerConfig;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    sget p0, Lorg/telegram/messenger/voip/Instance;->bufferSize:I

    invoke-static {p0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    sget-object p0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    return-object p0
.end method

.method public static setBufferSize(I)V
    .locals 1

    sput p0, Lorg/telegram/messenger/voip/Instance;->bufferSize:I

    sget-object v0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/NativeInstance;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public static setGlobalServerConfig(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/voip/Instance$ServerConfig;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/voip/Instance$ServerConfig;-><init>(Lorg/json/JSONObject;Lorg/telegram/messenger/voip/Instance$1;)V

    sput-object v0, Lorg/telegram/messenger/voip/Instance;->globalServerConfig:Lorg/telegram/messenger/voip/Instance$ServerConfig;

    sget-object v0, Lorg/telegram/messenger/voip/Instance;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/NativeInstance;->setGlobalServerConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "failed to parse tgvoip server config"

    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
