.class Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

.field final synthetic val$animated:Z

.field final synthetic val$cell:Lorg/telegram/ui/Cells/DialogCell;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$cell:Lorg/telegram/ui/Cells/DialogCell;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean p4, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$cell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->access$500(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->access$1200(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$cell:Lorg/telegram/ui/Cells/DialogCell;

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iget-object v1, v1, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v1}, Lorg/telegram/ui/FilteredSearchView;->access$500(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v2}, Lorg/telegram/ui/FilteredSearchView;->access$1200(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$animated:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$cell:Lorg/telegram/ui/Cells/DialogCell;

    iget-boolean v1, p0, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter$2;->val$animated:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
