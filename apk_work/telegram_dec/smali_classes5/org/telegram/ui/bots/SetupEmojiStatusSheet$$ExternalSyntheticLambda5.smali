.class public final synthetic Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$UserFull;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/Utilities$Callback2;ILorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iput p3, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iget v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->$r8$lambda$84d1K1TcTg3Uc_f8QlS39OyHBJQ(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/Utilities$Callback2;ILorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
