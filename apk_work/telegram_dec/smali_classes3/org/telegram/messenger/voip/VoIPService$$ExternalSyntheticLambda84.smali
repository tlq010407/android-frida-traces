.class public final synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VoIPService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iput p2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/messenger/voip/VoIPService;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->$r8$lambda$zrVo2cH0VD3hhYXB5_ahzoaWYBs(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
