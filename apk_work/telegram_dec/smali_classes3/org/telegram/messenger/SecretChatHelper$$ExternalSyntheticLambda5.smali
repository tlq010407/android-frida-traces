.class public final synthetic Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SecretChatHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iput p2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput p4, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SecretChatHelper;

    iget v1, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, p0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->$r8$lambda$hAvGcEfoiKV92u3auwfarJjL2p0(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    return-void
.end method
