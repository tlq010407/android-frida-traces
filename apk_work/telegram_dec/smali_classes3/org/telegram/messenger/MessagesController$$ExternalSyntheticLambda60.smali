.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda60;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$wSPgemnYxHFX3W5mDtX6HZHAOhk(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
