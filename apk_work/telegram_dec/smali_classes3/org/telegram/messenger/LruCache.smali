.class public Lorg/telegram/messenger/LruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mapFilters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lorg/telegram/messenger/LruCache;->maxSize:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LruCache;->sizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trimToSize(ILjava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/LruCache;->size:I

    if-le v1, p1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    aget-object v7, v3, v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v3, v3, v6

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v5, v2, v1, v3}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final evictAll()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LruCache;->trimToSize(ILjava/lang/String;)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public moveToFront(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/LruCache;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/LruCache;->size:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, p1, v0, p2}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget p2, p0, Lorg/telegram/messenger/LruCache;->maxSize:I

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/LruCache;->trimToSize(ILjava/lang/String;)V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/LruCache;->size:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v4, p1, v0, v1}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
