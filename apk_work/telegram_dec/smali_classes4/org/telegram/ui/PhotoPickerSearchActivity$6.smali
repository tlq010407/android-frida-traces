.class Lorg/telegram/ui/PhotoPickerSearchActivity$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerSearchActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

.field final synthetic val$onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerSearchActivity;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->val$onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->val$onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$3300(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    div-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$1300(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    neg-int p1, p1

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$1300(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->val$onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$300(Lorg/telegram/ui/PhotoPickerSearchActivity;)[Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;->access$1300(Lorg/telegram/ui/PhotoPickerSearchActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$3400(Lorg/telegram/ui/PhotoPickerSearchActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    int-to-float p2, p3

    sub-float p2, p1, p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-lez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    cmpl-float p1, p2, p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerSearchActivity$6;->this$0:Lorg/telegram/ui/PhotoPickerSearchActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->access$3500(Lorg/telegram/ui/PhotoPickerSearchActivity;F)V

    :cond_2
    return-void
.end method
