.class public final Lcom/google/android/recaptcha/internal/zzof;
.super Lcom/google/android/recaptcha/internal/zzin;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzog;->zzg()Lcom/google/android/recaptcha/internal/zzog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/recaptcha/internal/zzoa;)V
    .locals 0

    .line 0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzog;->zzg()Lcom/google/android/recaptcha/internal/zzog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzin;-><init>(Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzof;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzm()V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzin;->zza:Lcom/google/android/recaptcha/internal/zzit;

    check-cast v0, Lcom/google/android/recaptcha/internal/zzog;

    invoke-static {v0, p1}, Lcom/google/android/recaptcha/internal/zzog;->zzJ(Lcom/google/android/recaptcha/internal/zzog;Ljava/lang/String;)V

    return-object p0
.end method
