.class final Lcom/google/android/recaptcha/internal/zziq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzii;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/recaptcha/internal/zzmb;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zziw;ILcom/google/android/recaptcha/internal/zzmb;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/recaptcha/internal/zziq;->zza:I

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zziq;->zzb:Lcom/google/android/recaptcha/internal/zzmb;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/recaptcha/internal/zziq;

    iget p1, p1, Lcom/google/android/recaptcha/internal/zziq;->zza:I

    iget v0, p0, Lcom/google/android/recaptcha/internal/zziq;->zza:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/recaptcha/internal/zziq;->zza:I

    return v0
.end method

.method public final zzb(Lcom/google/android/recaptcha/internal/zzkd;Lcom/google/android/recaptcha/internal/zzke;)Lcom/google/android/recaptcha/internal/zzkd;
    .locals 1

    check-cast p2, Lcom/google/android/recaptcha/internal/zzit;

    move-object v0, p1

    check-cast v0, Lcom/google/android/recaptcha/internal/zzin;

    invoke-virtual {v0, p2}, Lcom/google/android/recaptcha/internal/zzin;->zzg(Lcom/google/android/recaptcha/internal/zzit;)Lcom/google/android/recaptcha/internal/zzin;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/recaptcha/internal/zzkj;Lcom/google/android/recaptcha/internal/zzkj;)Lcom/google/android/recaptcha/internal/zzkj;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzd()Lcom/google/android/recaptcha/internal/zzmb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zziq;->zzb:Lcom/google/android/recaptcha/internal/zzmb;

    return-object v0
.end method

.method public final zze()Lcom/google/android/recaptcha/internal/zzmc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zziq;->zzb:Lcom/google/android/recaptcha/internal/zzmb;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzmb;->zza()Lcom/google/android/recaptcha/internal/zzmc;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
