.class Lorg/telegram/ui/CachedMediaLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CachedMediaLayout$1;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CachedMediaLayout$1;

.field final synthetic val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CachedMediaLayout$1;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iput-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;

    iget-object v2, v1, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    instance-of v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;

    iget-boolean v2, v1, Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;->isStories:Z

    if-eqz v2, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    iget-object v1, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v2, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    iput-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object p2, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object p2, p2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object p2, p2, Lorg/telegram/ui/CachedMediaLayout$1;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object v0, v0, Lorg/telegram/ui/CachedMediaLayout$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object v0, v0, Lorg/telegram/ui/CachedMediaLayout$1;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object v2, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->val$recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-static {v0, p2, v1, v2, p1}, Lorg/telegram/ui/CachedMediaLayout;->access$600(Lorg/telegram/ui/CachedMediaLayout;Lorg/telegram/ui/CachedMediaLayout$ItemInner;Lorg/telegram/ui/CachedMediaLayout$MediaAdapter;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$1$1;->this$1:Lorg/telegram/ui/CachedMediaLayout$1;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout$1;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout;->delegate:Lorg/telegram/ui/CachedMediaLayout$Delegate;

    if-eqz p1, :cond_2

    iget-object v1, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-object p2, p2, Lorg/telegram/ui/CachedMediaLayout$ItemInner;->file:Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-interface {p1, v1, p2, v0}, Lorg/telegram/ui/CachedMediaLayout$Delegate;->onItemSelected(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    :cond_2
    return-void
.end method
