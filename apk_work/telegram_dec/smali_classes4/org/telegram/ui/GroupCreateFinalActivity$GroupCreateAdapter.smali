.class public Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCreateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field items:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

.field private usersStartRow:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1700(Lorg/telegram/ui/GroupCreateFinalActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public notifyDataSetChanged()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1400(Lorg/telegram/ui/GroupCreateFinalActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    sget v4, Lorg/telegram/messenger/R$string;->ForumToggleDescription:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    sget v4, Lorg/telegram/messenger/R$string;->GroupCreateAutodeleteDescription:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1500(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->usersStartRow:I

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/messenger/R$string;->ChannelTopics:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_topics:I

    invoke-virtual {p1, p2, v2, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;

    iget-object p2, p2, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter$InnerItem;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1800(Lorg/telegram/ui/GroupCreateFinalActivity;)I

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1800(Lorg/telegram/ui/GroupCreateFinalActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->AutoDeleteMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1900(Lorg/telegram/ui/GroupCreateFinalActivity;)Z

    move-result v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

    goto :goto_3

    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1500(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->usersStartRow:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq p2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setDrawDivider(Z)V

    goto :goto_3

    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1500(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p2, v2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Members"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, 0x1

    if-eqz p2, :cond_7

    if-eq p2, p1, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v2, 0x17

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_0

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    goto :goto_2

    :cond_7
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_8
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->recycle()V

    :cond_0
    return-void
.end method
