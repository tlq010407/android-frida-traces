.class public abstract Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;,
        Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
    }
.end annotation


# instance fields
.field callback:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;-><init>(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->callback:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;

    return-void
.end method


# virtual methods
.method public setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->callback:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->callback:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
