.class Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;
.super Lorg/telegram/ui/Components/voip/GroupCallGridCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$ListAdapter;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7300(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/telegram/ui/GroupCallActivity;->access$12600(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Z)V

    return-void
.end method
