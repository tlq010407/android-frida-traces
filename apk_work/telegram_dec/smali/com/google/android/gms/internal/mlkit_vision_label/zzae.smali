.class final Lcom/google/android/gms/internal/mlkit_vision_label/zzae;
.super Lcom/google/android/gms/internal/mlkit_vision_label/zzac;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzae;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzad;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;I)V
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzae;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzad;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzad;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzae;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzae;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;->zzf:Lcom/google/android/gms/internal/mlkit_vision_label/zzag;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzd(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzae;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzad;->zza()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzac;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
