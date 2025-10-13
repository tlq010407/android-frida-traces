.class Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteMembersBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/Components/InviteMembersBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2300(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1900(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1700(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getObject(I)Lorg/telegram/tgnet/TLObject;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1300(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1400(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->getObject(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1700(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p2, v5, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v5, p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_2

    :cond_4
    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v8, v8

    goto :goto_2

    :cond_5
    move-wide v8, v3

    :goto_2
    cmp-long p2, v8, v3

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_6

    invoke-virtual {p1, v7, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    :goto_3
    cmp-long v0, v1, v8

    if-nez v0, :cond_8

    const/4 v6, 0x1

    :cond_8
    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto :goto_4

    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_a
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipGroupCopyInviteLink:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_link:I

    const/4 v7, 0x7

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IIZ)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-virtual {p2, p1, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto :goto_3

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, v2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter$2;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;Landroid/content/Context;Landroid/view/View;I)V

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->FilterNoChats:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoContacts:I

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    goto :goto_3

    :cond_2
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p2, p1, v1, v2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_3

    :cond_5
    new-instance p2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;Landroid/content/Context;)V

    :goto_3
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
