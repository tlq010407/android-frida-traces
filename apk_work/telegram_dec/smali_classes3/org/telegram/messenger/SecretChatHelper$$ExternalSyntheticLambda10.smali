.class public final synthetic Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SecretChatHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput p3, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->$r8$lambda$xrKXTvgXsq45RfJhl95DJ_3i68U(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;I)V

    return-void
.end method
