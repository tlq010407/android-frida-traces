.class public abstract Lorg/telegram/ui/Components/UItem$UItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UItemFactory"
.end annotation


# instance fields
.field private cache:Ljava/util/ArrayList;

.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$208()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    return-void
.end method

.method public static setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$000()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$100()Landroid/util/LongSparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->access$102(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/ui/Components/UItem;->access$100()Landroid/util/LongSparseArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachedView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    return-void
.end method

.method public abstract bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1
.end method

.method public abstract createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->itemEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1
.end method

.method protected getCached()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
