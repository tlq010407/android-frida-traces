.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iput-wide p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda89;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$9qS42RIFm6zXpG6jQEwDyZWrORo(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;J)V

    return-void
.end method
