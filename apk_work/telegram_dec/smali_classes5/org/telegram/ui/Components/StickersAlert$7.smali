.class Lorg/telegram/ui/Components/StickersAlert$7;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private movedPos:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert$7;->movedPos:I

    return-void
.end method


# virtual methods
.method public getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/StickersAlert;->access$500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert$7;->movedPos:I

    const/4 p1, 0x1

    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$5500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$7;->movedPos:I

    if-lez v0, :cond_0

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_changeStickerPosition;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stickers_changeStickerPosition;-><init>()V

    iget p2, p0, Lorg/telegram/ui/Components/StickersAlert$7;->movedPos:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_changeStickerPosition;->position:I

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickersAlert;->access$5500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_changeStickerPosition;->sticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert$7;->movedPos:I

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->access$5502(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$7;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/StickersAlert;->access$5502(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
