.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedDialogsAdapter"
.end annotation


# instance fields
.field public attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final controller:Lorg/telegram/messenger/SavedMessagesController;

.field private final dialogs:Ljava/util/ArrayList;

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mContext:Landroid/content/Context;

.field private notifyOrderUpdate:Ljava/lang/Runnable;

.field private final oldDialogs:Ljava/util/ArrayList;

.field private orderChanged:Z

.field public final selectedDialogs:Ljava/util/HashSet;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public static synthetic $r8$lambda$_UU7P_Y5H6MIs_qTEH_PC1a7Mmg(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->includeSavedDialogs()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->update(Z)V

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    return-wide v0

    :cond_1
    :goto_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0xd

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-object v4, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialogCell:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v3, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public select(Landroid/view/View;)V
    .locals 14

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v4, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v6, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v6, :cond_6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v6, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v6, :cond_6

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_4
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v11, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_9

    iget-boolean v7, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v7, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v2, :cond_8

    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v2, :cond_c

    const/16 v7, 0x8

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    const/16 v3, 0x8

    :goto_7
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    instance-of p1, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v1, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1, v5}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_10
    return-void
.end method

.method public unselectAll()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public update(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
