.class public final synthetic Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iput p4, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iget v3, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->$r8$lambda$ucmKbYbq6KPA0hOkeStQQwoEK5Q(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
