.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$2eoe4-1wb_r0H4c3FoHcV_4win8(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V

    return-void
.end method
