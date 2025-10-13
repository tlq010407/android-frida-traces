.class Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# instance fields
.field checks:[Z

.field collapsed:Z

.field filter:[Z

.field filteredCount:I

.field options:Ljava/util/ArrayList;

.field selectedCount:I

.field final synthetic this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

.field title:Ljava/lang/String;

.field totalCount:I

.field type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez p1, :cond_0

    iput-object p3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateTitle()V

    :cond_0
    return-void
.end method


# virtual methods
.method areAllSelected()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v2, :cond_0

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method collapseOrExpand()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->access$100(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method first()Lorg/telegram/tgnet/TLObject;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method forEach(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-interface {p1, v1, v0}, Lorg/telegram/messenger/Utilities$IndexedConsumer;->accept(Ljava/lang/Object;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v1, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-interface {p1, v1, v0}, Lorg/telegram/messenger/Utilities$IndexedConsumer;->accept(Ljava/lang/Object;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    return v0
.end method

.method isExpandable()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isOneSelected()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v2, :cond_0

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isPresent()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAllChecks(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setAllChecks(ZZ)V

    return-void
.end method

.method setAllChecks(ZZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateCounters()V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->access$100(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method setFilter([Z)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateCounters()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->updateTitle()V

    return-void
.end method

.method toggleAllChecks()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isOneSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setAllChecks(Z)V

    return-void
.end method

.method toggleCheck(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-eqz v0, :cond_0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-eqz v1, :cond_1

    add-int/2addr p1, v2

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->access$100(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method updateCounters()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    iput v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filter:[Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_0
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->filteredCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateTitle()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->first()Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    if-nez v3, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->DeleteReportSpam:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    goto :goto_3

    :cond_2
    if-ne v3, v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->DeleteAllFromUsers:I

    goto :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->DeleteAllFrom:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->access$000(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->DeleteRestrictUsers:I

    goto :goto_1

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->DeleteRestrict:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->DeleteBanUsers:I

    goto :goto_1

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->DeleteBan:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method
