.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$1:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$1:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda272;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$OBmu3Tgns10RxYV6iDVEbka2p1k(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;I)V

    return-void
.end method
