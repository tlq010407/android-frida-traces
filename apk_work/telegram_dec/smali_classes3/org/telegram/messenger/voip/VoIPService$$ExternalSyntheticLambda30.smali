.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$PaP-BzqvxL3xvJckB30htjhFQH0(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method
