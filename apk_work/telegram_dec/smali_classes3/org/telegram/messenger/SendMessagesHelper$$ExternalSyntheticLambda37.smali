.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public final synthetic f$2:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$2:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda37;->f$2:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$RzQby5zQ3VqxWRdN4gv1Ma0bJ24(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
