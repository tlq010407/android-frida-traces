.class Lorg/telegram/ui/GroupStickersActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;

.field final synthetic val$isSelected:Z

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;


# direct methods
.method public static synthetic $r8$lambda$HWGd0ak9LhcfIWoLsW6m1fgj9Fw(Lorg/telegram/ui/GroupStickersActivity$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity$4;->lambda$onCustomButtonPressed$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    iput-object p3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCustomButtonPressed$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->done:I

    sget v2, Lorg/telegram/messenger/R$string;->GroupsEmojiPackUpdated:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public getCustomButtonColorKey()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCustomButtonRippleColorKey()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCustomButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->RemoveGroupEmojiPackSet:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->SetAsGroupEmojiPackSet:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->RemoveGroupStickerSet:I

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SetAsGroupStickerSet:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomButtonTextColorKey()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    :goto_0
    return v0
.end method

.method public onCustomButtonPressed()Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const v2, 0x7fffffff

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v3

    iget-boolean v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$isSelected:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/telegram/ui/GroupStickersActivity;->access$802(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4, v6}, Lorg/telegram/ui/GroupStickersActivity;->access$902(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v4, v7}, Lorg/telegram/ui/GroupStickersActivity;->access$802(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/GroupStickersActivity;->access$902(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/telegram/ui/GroupStickersActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/GroupStickersActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupStickersActivity$4;)V

    const-wide/16 v7, 0x15e

    invoke-static {v4, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)V

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$800(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v10

    add-int/2addr v10, v3

    if-ne v9, v10, :cond_3

    check-cast v8, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v8, v5, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v3

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_6

    check-cast v4, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v4, v6, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_8
    :goto_5
    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    add-int/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$4;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField(Z)V

    :cond_a
    return v6
.end method
