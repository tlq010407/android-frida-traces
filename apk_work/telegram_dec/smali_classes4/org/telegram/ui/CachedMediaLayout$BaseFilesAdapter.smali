.class abstract Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;
.super Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseFilesAdapter"
.end annotation


# instance fields
.field oldItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/CachedMediaLayout;


# direct methods
.method protected constructor <init>(Lorg/telegram/ui/CachedMediaLayout;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;-><init>(Lorg/telegram/ui/CachedMediaLayout;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->oldItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method update()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/CachedMediaLayout;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_5

    iget v1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    iget-object v5, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {v4, v5, v2, v6}, Lorg/telegram/ui/CachedMediaLayout$ItemInner;-><init>(Lorg/telegram/ui/CachedMediaLayout;ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseFilesAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
