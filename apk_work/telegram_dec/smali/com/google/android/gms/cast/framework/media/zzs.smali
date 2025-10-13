.class public final Lcom/google/android/gms/cast/framework/media/zzs;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusUpdated()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza(Lcom/google/android/gms/cast/framework/media/MediaQueue;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    :cond_0
    return-void
.end method

.method public final zzb([I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzc([II)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void

    :cond_1
    :goto_0
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze(Lcom/google/android/gms/cast/framework/media/MediaQueue;II)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzd([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v5, v5, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zze:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zze([I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzf(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzf(Ljava/util/List;Ljava/util/List;I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb(Lcom/google/android/gms/cast/framework/media/MediaQueue;)Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p3

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Received a Queue Reordered message with an empty reordered items IDs list."

    invoke-virtual {p3, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iput-object p1, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzb:Ljava/util/List;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzk(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzg(Lcom/google/android/gms/cast/framework/media/MediaQueue;Ljava/util/List;I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzg([I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzd:Landroid/util/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzi(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzh(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzc(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    return-void
.end method

.method public final zzh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    return-void
.end method
