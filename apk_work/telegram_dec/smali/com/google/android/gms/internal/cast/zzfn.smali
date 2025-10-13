.class public final Lcom/google/android/gms/internal/cast/zzfn;
.super Lcom/google/android/gms/internal/cast/zzfk;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzfn;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzfk;->zza:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/zzfl;->zza(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zza:[Ljava/lang/Object;

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzc:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzc:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zza:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzb:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/cast/zzfq;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfk;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfk;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzfq;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/cast/zzfq;

    move-result-object v0

    return-object v0
.end method
