.class Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->set(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$6200(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$000(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->onCloseByLink()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$2;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    return-void
.end method
