.class public final Lcom/google/android/recaptcha/internal/zznh;
.super Lcom/google/android/recaptcha/internal/zzin;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzni;->zzj()Lcom/google/android/recaptcha/internal/zzni;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/recaptcha/internal/zzng;)V
    .locals 0

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzni;->zzj()Lcom/google/android/recaptcha/internal/zzni;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method


# virtual methods
.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzni;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzni;->zzf()I

    move-result v0

    return v0
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzni;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzni;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzp(Lcom/google/android/recaptcha/internal/zznf;)Lcom/google/android/recaptcha/internal/zznh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzm()V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzni;

    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzni;->zzI(Lcom/google/android/recaptcha/internal/zzni;Lcom/google/android/recaptcha/internal/zznf;)V

    return-object p0
.end method

.method public final zzq(Lcom/google/android/recaptcha/internal/zznu;)Lcom/google/android/recaptcha/internal/zznh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzm()V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzni;

    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzni;->zzJ(Lcom/google/android/recaptcha/internal/zzni;Lcom/google/android/recaptcha/internal/zznu;)V

    return-object p0
.end method
