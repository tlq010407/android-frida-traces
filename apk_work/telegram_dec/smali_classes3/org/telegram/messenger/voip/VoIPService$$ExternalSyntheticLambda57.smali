.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$S5gjgnD7aGi1tE_cILy6YAyNxlM(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    return-void
.end method
