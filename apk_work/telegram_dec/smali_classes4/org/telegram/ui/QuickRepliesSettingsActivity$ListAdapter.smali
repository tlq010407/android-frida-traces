.class Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/QuickRepliesSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/QuickRepliesSettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$000(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$600(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$100(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$200(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$300(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$400(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$100(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x9

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$100(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$200(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$300(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$400(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

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
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x4

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$100(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->QuickReplyDefault1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "quick_reply_msg1"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$200(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->QuickReplyDefault2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "quick_reply_msg2"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$300(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->QuickReplyDefault3:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "quick_reply_msg3"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$400(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->QuickReplyDefault4:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "quick_reply_msg4"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$400(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I

    move-result v3

    if-eq p2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->setTextAndHint(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget p2, Lorg/telegram/messenger/R$string;->AllowCustomQuickReply:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "quick_reply_allow_custom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_2

    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    goto :goto_2

    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lorg/telegram/messenger/R$string;->VoipQuickRepliesExplain:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    :goto_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/QuickRepliesSettingsActivity;->access$500(Lorg/telegram/ui/QuickRepliesSettingsActivity;)[Lorg/telegram/ui/Cells/EditTextSettingsCell;

    move-result-object v0

    add-int/lit8 p2, p2, -0x9

    aput-object p1, v0, p2

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
