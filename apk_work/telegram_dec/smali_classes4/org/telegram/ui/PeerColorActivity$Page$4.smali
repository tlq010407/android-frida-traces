.class Lorg/telegram/ui/PeerColorActivity$Page$4;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$this$0:Lorg/telegram/ui/PeerColorActivity;

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$47OPN75tKCT-cf5LBKy1ymkIm5Y(Lorg/telegram/ui/PeerColorActivity$Page$4;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$4;->lambda$onCreateViewHolder$0(Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$context:Landroid/content/Context;

    iput p4, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1202(Lorg/telegram/ui/PeerColorActivity$Page;I)I

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1502(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1600(Lorg/telegram/ui/PeerColorActivity$Page;)V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1700(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v0, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1700(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->previewRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    const/4 v2, 0x2

    if-eq p1, v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    if-eq p1, v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->info2Row:I

    if-eq p1, v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    if-lt p1, v1, :cond_7

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    if-ge p1, v1, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    if-lt p1, v1, :cond_8

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    if-ge p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page$4;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_9

    const/4 p1, 0x4

    return p1

    :cond_9
    :goto_0
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p2, v1

    if-ltz p2, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->set(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p2, v3, v0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    goto/16 :goto_7

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ne p2, v0, :cond_e

    sget p2, Lorg/telegram/messenger/R$string;->UserProfileCollectibleHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_7

    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ne p2, v1, :cond_e

    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileColorReset:I

    goto :goto_2

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileColorReset:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_7

    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    if-ne p2, v1, :cond_b

    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    if-nez p2, :cond_9

    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->ChannelColorHint:I

    goto :goto_3

    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->UserColorHint:I

    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileHint:I

    goto :goto_3

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileHint:I

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ltz v0, :cond_d

    goto :goto_5

    :cond_b
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    if-ne p2, v1, :cond_c

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ltz v0, :cond_d

    :goto_5
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_6
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_c
    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    if-ne p2, v0, :cond_e

    sget p2, Lorg/telegram/messenger/R$string;->UserProfileCollectibleInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    :cond_d
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_6

    :cond_e
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p2, 0x23

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto/16 :goto_2

    :pswitch_2
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$700(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/PeerColorActivity$GiftCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, p2

    goto/16 :goto_2

    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$600(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :pswitch_5
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$1;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4$1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;Landroid/content/Context;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$2;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4$2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1302(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    goto :goto_0

    :pswitch_8
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v3, v3, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v4, v4, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity;->access$1100(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$902(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$500(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v3, 0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$302(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p2, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v2, v1, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->set(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    nop

    :cond_2
    :goto_1
    return-void
.end method
