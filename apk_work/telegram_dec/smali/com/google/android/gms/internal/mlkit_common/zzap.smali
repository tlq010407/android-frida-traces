.class final Lcom/google/android/gms/internal/mlkit_common/zzap;
.super Lcom/google/android/gms/internal/mlkit_common/zzaq;
.source "SourceFile"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzaq;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzae;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzf(II)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_common/zzaq;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzae;->zzd(III)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzf(II)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object p1

    return-object p1
.end method
