.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/MultiContactsSelectorBottomSheet$SelectorListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$2:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    return-void
.end method


# virtual methods
.method public final onUserSelected(Ljava/util/List;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda62;->f$2:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->$r8$lambda$Yp82o1qpVkLCkZqDWdF4Q72VMnQ(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;Ljava/util/List;)V

    return-void
.end method
