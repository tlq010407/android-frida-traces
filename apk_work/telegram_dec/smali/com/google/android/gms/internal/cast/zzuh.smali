.class final Lcom/google/android/gms/internal/cast/zzuh;
.super Lcom/google/android/gms/internal/cast/zzul;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzuh;->zza:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzug;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzul;-><init>(Lcom/google/android/gms/internal/cast/zzuk;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzuf;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzuf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzuf;->zzd()Lcom/google/android/gms/internal/cast/zzuf;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzuh;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzve;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zztx;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzb()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/cast/zzwj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zzuf;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/cast/zzue;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzue;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zzve;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zztx;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cast/zztx;->zzg(I)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/cast/zzuh;->zza:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zzwe;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/cast/zzue;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/zzue;-><init>(I)V

    check-cast v1, Lcom/google/android/gms/internal/cast/zzwe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzue;->size()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/cast/zzsi;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zzve;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/google/android/gms/internal/cast/zztx;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/cast/zztx;->zzg(I)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_6

    if-lez v2, :cond_6

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-gtz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object p2, v1

    :goto_3
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzwj;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
