.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

.field final synthetic val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRepostVideoPreview:Z

.field final synthetic val$videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iput-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$isRepostVideoPreview:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object p2, p2, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_2

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-byte p1, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    goto :goto_2

    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$2;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->val$context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean p1, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
