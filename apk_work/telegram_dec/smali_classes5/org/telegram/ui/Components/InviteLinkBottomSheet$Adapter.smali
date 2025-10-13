.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-eq p1, v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq p1, v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-lt p1, v1, :cond_d

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-ge p1, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->dividerRow:I

    if-eq p1, v1, :cond_c

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider2Row:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkActionRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkInfoRow:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadingRow:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x5

    return p1

    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView2:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView3:I

    if-ne p1, v1, :cond_7

    goto :goto_0

    :cond_7
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider3Row:I

    if-ne p1, v1, :cond_8

    const/4 p1, 0x7

    return p1

    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyHintRow:I

    if-ne p1, v1, :cond_9

    const/16 p1, 0x8

    return p1

    :cond_9
    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueRow:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0x9

    return p1

    :cond_a
    return v2

    :cond_b
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_c
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_d
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_e
    :goto_3
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-lt p1, v1, :cond_3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt p1, v1, :cond_4

    iget v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-ge p1, v0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v3
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    const/4 v4, -0x1

    if-eq v1, v0, :cond_b

    const/4 p2, 0x3

    if-eq v1, p2, :cond_a

    const/4 p2, 0x4

    if-eq v1, p2, :cond_3

    const/16 p2, 0x8

    if-eq v1, p2, :cond_1

    const/16 p2, 0x9

    if-eq v1, p2, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;I)V

    goto/16 :goto_10

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_2

    iget-object p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PeopleCanJoinViaLinkCount"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    :cond_2
    iget-object p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->cancelTimer()V

    iput-boolean v3, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v1, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->LinkIsNoActive:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_4
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-eqz v1, :cond_6

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_5

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-ne v0, p2, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->LinkIsExpiredLimitReached:I

    goto :goto_0

    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->LinkIsExpired:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_10

    :cond_6
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lez p2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v1, v4

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    int-to-long v4, p2

    mul-long v8, v4, v6

    sub-long/2addr v8, v1

    const-wide/16 v1, 0x0

    cmp-long p2, v8, v1

    if-gez p2, :cond_7

    move-wide v8, v1

    :cond_7
    const-wide/32 v1, 0x5265c00

    cmp-long p2, v8, v1

    if-lez p2, :cond_8

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->LinkExpiresIn:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "LinkExpiresIn"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    div-long/2addr v8, v6

    const-wide/16 v1, 0x3c

    rem-long v4, v8, v1

    long-to-int p2, v4

    div-long/2addr v8, v1

    rem-long v4, v8, v1

    long-to-int v5, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v1, "%02d"

    invoke-static {v4, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v1, ":%02d"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-boolean v0, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->runTimer()V

    sget v1, Lorg/telegram/messenger/R$string;->LinkExpiresInTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "LinkExpiresInTime"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setRevoke(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setPermanent(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    goto/16 :goto_10

    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne p2, v5, :cond_c

    iget-object v1, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    move-object v1, v2

    goto :goto_2

    :cond_c
    iget v5, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    iget-object v6, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    iget v7, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredStartRow:I

    if-eq v7, v4, :cond_d

    if-lt p2, v7, :cond_d

    iget-object v6, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    move v5, v7

    :cond_d
    iget v7, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-eq v7, v4, :cond_e

    if-lt p2, v7, :cond_e

    iget-object v6, v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    move v5, v7

    :cond_e
    sub-int v1, p2, v5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_10

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    iget-object v8, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_4

    :cond_f
    add-int/2addr v7, v0

    goto :goto_3

    :cond_10
    move-object v0, v2

    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v8, v7, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne p2, v8, :cond_13

    iget-object v6, v7, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v4, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$3200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_12

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    int-to-long v5, v5

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :goto_5
    move-object v6, v4

    goto :goto_6

    :cond_12
    move-object v8, v2

    goto :goto_5

    :cond_13
    move-object v8, v2

    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne p2, v3, :cond_18

    if-eqz v0, :cond_18

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v3, :cond_16

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    goto :goto_a

    :cond_14
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v3, :cond_15

    goto :goto_7

    :cond_15
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_16
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_17

    :goto_7
    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_17
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_18

    :goto_9
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    goto :goto_8

    :cond_18
    :goto_a
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq p2, v2, :cond_21

    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz p2, :cond_21

    if-eqz v1, :cond_21

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;->setRevenue(Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;I)V

    goto/16 :goto_10

    :cond_19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    if-ne p2, v1, :cond_1b

    sget p2, Lorg/telegram/messenger/R$string;->LinkCreatedeBy:I

    :goto_b
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_c
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_1b
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    if-ne p2, v1, :cond_1c

    sget p2, Lorg/telegram/messenger/R$string;->LinkRevenue:I

    goto :goto_b

    :cond_1c
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    if-ne p2, v1, :cond_1f

    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v0, :cond_1d

    new-array p2, v3, [Ljava/lang/Object;

    const-string v1, "PeopleJoined"

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_d
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_1d
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz p2, :cond_1e

    sget p2, Lorg/telegram/messenger/R$string;->NoOneSubscribed:I

    goto :goto_e

    :cond_1e
    sget p2, Lorg/telegram/messenger/R$string;->NoOneJoined:I

    :goto_e
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :goto_f
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v0, :cond_1a

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_1a

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez p2, :cond_1a

    sub-int/2addr v0, p2

    new-array p2, v3, [Ljava/lang/Object;

    const-string v1, "PeopleJoinedRemaining"

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_1f
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredHeaderRow:I

    if-ne p2, v1, :cond_20

    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_expired:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "PeopleSubscriptionExpired"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_20
    iget v1, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    if-ne p2, v1, :cond_21

    iget-object p2, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "JoinRequests"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_21
    :goto_10
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 p1, -0x2

    const/4 v9, -0x1

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;I)V

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v2, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$3;

    invoke-direct {p2, p0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$3;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingLeft(I)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v3, v4, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J

    move-result-wide v5

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$2;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {p2, v2, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_8
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
