.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iput-wide p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda135;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$Tdf6QOU8bFcxl1aBWa7XJWm1CsU(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V

    return-void
.end method
