.class public final synthetic Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->$r8$lambda$qNrDIlfZvMIJAoi59M9IN_6wTwI(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
