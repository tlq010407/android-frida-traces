.class public final synthetic Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/VoIPFragment;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, p1}, Lorg/telegram/ui/VoIPFragment;->$r8$lambda$4pt06JYc5OrCuVl_vGU280WcpPY(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method
