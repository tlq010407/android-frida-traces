.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda139;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$Exg2vDPsIfjuAeEtpXIz_LPKTbQ(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
