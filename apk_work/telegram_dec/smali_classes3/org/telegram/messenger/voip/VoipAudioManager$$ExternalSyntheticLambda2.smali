.class public final synthetic Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/voip/VoipAudioManager;->$r8$lambda$Uy8WgwUuc7Z63HOCKQXEBuQqQ-s(Lorg/telegram/messenger/Utilities$Callback2;ZZ)V

    return-void
.end method
