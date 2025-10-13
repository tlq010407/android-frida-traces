.class Lorg/telegram/ui/MessageSendPreview$11;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$3100(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$3100(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview$11;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$3700(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$3800(Lorg/telegram/ui/MessageSendPreview;)I

    move-result v1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p2, p1}, Lorg/telegram/ui/MessageSendPreview;->access$1202(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/MessageSendPreview;->access$3902(Lorg/telegram/ui/MessageSendPreview;I)I

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    new-instance p1, Lorg/telegram/ui/MessageSendPreview$MessageCell;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$context:Landroid/content/Context;

    iget v3, v1, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/MessageSendPreview$MessageCell;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/MessageSendPreview$11$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/MessageSendPreview$11$1;-><init>(Lorg/telegram/ui/MessageSendPreview$11;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
