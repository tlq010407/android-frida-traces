.class Lorg/telegram/ui/Gifts/SendGiftSheet$3;
.super Lorg/telegram/ui/Cells/EditEmojiTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

.field final synthetic val$currentAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    move/from16 v0, p9

    iput v0, v8, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->val$currentAccount:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/EditEmojiTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$300(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/EditEmojiTextCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/CharSequence;

    aput-object v1, v3, p1

    iget v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->val$currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    aget-object p1, v3, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$400(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->setType()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$100(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$400(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$500(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->access$600(Lorg/telegram/ui/Gifts/SendGiftSheet;Z)V

    :cond_2
    return-void
.end method
