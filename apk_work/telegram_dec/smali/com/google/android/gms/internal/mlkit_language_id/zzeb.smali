.class final Lcom/google/android/gms/internal/mlkit_language_id/zzeb;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzdz;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:Z

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzdz;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzdy;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zza:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zze:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzf:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzb:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/mlkit_language_id/zzdy;)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzf:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(I)I
    .locals 3

    .line 0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzdz;->zza()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzg:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzf:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzc:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeb;->zzd:I

    :goto_0
    return v0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzez;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzez;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzez;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzez;-><init>(Ljava/lang/String;)V

    throw p1
.end method
