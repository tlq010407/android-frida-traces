.class public final Lcom/google/android/recaptcha/internal/zzli;
.super Lcom/google/android/recaptcha/internal/zzin;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlj;->zzj()Lcom/google/android/recaptcha/internal/zzlj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/recaptcha/internal/zzlh;)V
    .locals 0

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlj;->zzj()Lcom/google/android/recaptcha/internal/zzlj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method


# virtual methods
.method public final zzd(I)Lcom/google/android/recaptcha/internal/zzli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzn()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzlj;

    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzlj;->zzH(Lcom/google/android/recaptcha/internal/zzlj;I)V

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/recaptcha/internal/zzli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzn()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzlj;

    invoke-static {v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzlj;->zzk(Lcom/google/android/recaptcha/internal/zzlj;J)V

    return-object p0
.end method
