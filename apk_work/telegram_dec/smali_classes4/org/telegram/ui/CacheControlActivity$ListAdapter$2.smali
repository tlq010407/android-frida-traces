.class Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;
.super Lorg/telegram/ui/CachedMediaLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/CachedMediaLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->onMeasure(II)V

    return-void
.end method

.method protected showActionMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/CacheControlActivity;->access$1500(Lorg/telegram/ui/CacheControlActivity;Z)V

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3900(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :goto_0
    return-void
.end method
