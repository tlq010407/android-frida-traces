.class public final synthetic Lorg/telegram/messenger/MessageObject$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->$r8$lambda$rylAEDaNeietO8Ax6oKWGGaSD8w(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
