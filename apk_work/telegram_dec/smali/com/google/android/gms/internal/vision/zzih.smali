.class final Lcom/google/android/gms/internal/vision/zzih;
.super Lcom/google/android/gms/internal/vision/zzif;
.source "SourceFile"


# instance fields
.field private final zzd:[B

.field private final zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzk:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzif;-><init>(Lcom/google/android/gms/internal/vision/zzie;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzk:I

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzd:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/vision/zzih;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzih;->zzh:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzih;->zzi:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/vision/zzih;->zze:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/vision/zzie;)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/gms/internal/vision/zzih;-><init>([BIIZ)V

    return-void
.end method

.method private final zzz()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzi:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzih;->zzk:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzg:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzf:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzk:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzih;->zzz()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method

.method public final zzu()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzih;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzih;->zzi:I

    sub-int/2addr v0, v1

    return v0
.end method
