.class Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView$1;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView$1;->this$0:Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView$1;->this$0:Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
