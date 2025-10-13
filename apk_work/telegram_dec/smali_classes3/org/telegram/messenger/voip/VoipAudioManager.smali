.class public Lorg/telegram/messenger/voip/VoipAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoipAudioManager$InstanceHolder;
    }
.end annotation


# instance fields
.field private isSpeakerphoneOn:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$Gk-upENbEtcGx9B-_eS_5XMimzM(Lorg/telegram/messenger/voip/VoipAudioManager;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->lambda$isBluetoothAndSpeakerOnAsync$2(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uy8WgwUuc7Z63HOCKQXEBuQqQ-s(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoipAudioManager;->lambda$isBluetoothAndSpeakerOnAsync$1(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yM9XGBMVT5UBlhELR0nIEFDWykI(Landroid/media/AudioManager;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->lambda$setSpeakerphoneOn$0(Landroid/media/AudioManager;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/voip/VoipAudioManager$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;-><init>()V

    return-void
.end method

.method public static get()Lorg/telegram/messenger/voip/VoipAudioManager;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/voip/VoipAudioManager$InstanceHolder;->instance:Lorg/telegram/messenger/voip/VoipAudioManager;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private static synthetic lambda$isBluetoothAndSpeakerOnAsync$1(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$isBluetoothAndSpeakerOnAsync$2(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    new-instance v2, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1, v0}, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$setSpeakerphoneOn$0(Landroid/media/AudioManager;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method


# virtual methods
.method public isBluetoothAndSpeakerOnAsync(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/VoipAudioManager;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn:Ljava/lang/Boolean;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioManager;Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
