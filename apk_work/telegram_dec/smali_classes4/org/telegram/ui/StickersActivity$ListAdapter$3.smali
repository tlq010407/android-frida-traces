.class Lorg/telegram/ui/StickersActivity$ListAdapter$3;
.super Lorg/telegram/ui/Cells/StickerSetCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onAddButtonClick()V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$900(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$900(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$5100(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v1, :cond_5

    move-object v5, v0

    goto :goto_2

    :cond_5
    move-object v5, v1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v7, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onPremiumButtonClick()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method protected onRemoveButtonClick()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v5, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method
