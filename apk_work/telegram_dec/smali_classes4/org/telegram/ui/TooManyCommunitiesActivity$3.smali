.class Lorg/telegram/ui/TooManyCommunitiesActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field expanded:Z

.field final synthetic this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->expanded:Z

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 6

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchCollapse()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$100(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$200(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TooManyCommunitiesActivity$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$3$1;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->expanded:Z

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$400(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;->search(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->expanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/TooManyCommunitiesActivity$3$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$3$2;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity$3;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$400(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;->searchResultsSignatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$400(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$400(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->expanded:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->expanded:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$3;->onSearchCollapse()V

    :cond_2
    :goto_0
    return-void
.end method
