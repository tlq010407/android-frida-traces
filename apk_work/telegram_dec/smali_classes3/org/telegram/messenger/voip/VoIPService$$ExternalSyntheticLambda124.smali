.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$5kuGKJ6XYoF2b3W_XHBKQpaTHPI(Lorg/telegram/messenger/voip/VoIPService;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
