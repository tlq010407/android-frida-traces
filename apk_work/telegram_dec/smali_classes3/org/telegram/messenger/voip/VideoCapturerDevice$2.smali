.class Lorg/telegram/messenger/voip/VideoCapturerDevice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VideoCapturerDevice;->init(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;


# direct methods
.method public static synthetic $r8$lambda$nw9ghc47P82EeNmCdLj2fBnzRy0()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice$2;->lambda$onFirstFrameAvailable$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$2;->this$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onFirstFrameAvailable$0()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->onCameraFirstFrameAvailable()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    return-void
.end method

.method public onCameraError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
