.class Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheChatsExceptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;Lorg/telegram/ui/CacheChatsExceptionsFragment$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;-><init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object v0, v0, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object v0, v0, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object v0, v0, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/UserCell;

    iget-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object p1, p1, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;->exception:Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    iget-object v0, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v4, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    iget p1, p1, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->keepMedia:I

    invoke-static {p1}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object p1, p1, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-eq p2, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Adapter;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    iget-object p1, p1, Lorg/telegram/ui/CacheChatsExceptionsFragment;->items:Ljava/util/ArrayList;

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllException:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZ)V

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsAddAnException:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {p2, p1, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_0

    :goto_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
