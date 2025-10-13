.class public final Lcom/google/android/gms/vision/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:I


# instance fields
.field private final zzc:Landroid/util/SparseIntArray;

.field private final zzd:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/zzc;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/zzc;->zzc:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/zzc;->zzd:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/vision/zzc;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/zzc;->zzc:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/gms/vision/zzc;->zzb:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/gms/vision/zzc;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/vision/zzc;->zzc:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v2, p0, Lcom/google/android/gms/vision/zzc;->zzd:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseIntArray;->append(II)V

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
