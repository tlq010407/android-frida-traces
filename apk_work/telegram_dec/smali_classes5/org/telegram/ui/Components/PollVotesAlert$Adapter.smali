.class public Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PollVotesAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field private currentAccount:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$Adapter;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const p1, 0x47919

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-nez p2, :cond_1

    const p1, -0xe2a38

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    sub-int/2addr p2, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p1, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_2
    const p1, -0x2c9ce

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    aput p1, p3, p1

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    move-result-object p2

    :cond_0
    move-object v7, p2

    check-cast v7, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 p1, p1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v5, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4500(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v2, :cond_4

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v2, v2, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v2, v2, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    const-string v1, ""

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    :goto_3
    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_6
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    goto :goto_4

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v3

    iget v4, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/CharSequence;Ljava/util/ArrayList;IIIZ)V

    sget v0, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v7, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_7
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    add-int/lit8 p1, p1, -0x1

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result p1

    sub-int/2addr p3, p1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ShowVotes"

    invoke-static {v0, p3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_8

    :cond_1
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    add-int/lit8 p1, p1, -0x1

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v4, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4500(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v0, v0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v0, v0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p3, :cond_5

    const-string v0, ""

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_5
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    goto :goto_3

    :goto_4
    if-nez p3, :cond_6

    const/4 p3, 0x0

    :goto_5
    move-object v4, p3

    goto :goto_6

    :cond_6
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    goto :goto_5

    :goto_6
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v5

    iget v6, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/CharSequence;Ljava/util/ArrayList;IIIZ)V

    sget p3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x17

    invoke-direct {p2, v0, v1, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    const/16 p1, 0x41

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4800(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_1

    iget-object v3, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v2, v0, v4}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->setData(Lorg/telegram/tgnet/TLObject;IZ)V

    :cond_2
    return-void
.end method
