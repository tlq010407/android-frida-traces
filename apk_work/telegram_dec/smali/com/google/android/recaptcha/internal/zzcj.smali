.class public final Lcom/google/android/recaptcha/internal/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:Lcom/google/android/recaptcha/internal/zzz;

.field private final zzb:Lcom/google/android/recaptcha/internal/zzcl;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private final zze:Lcom/google/android/recaptcha/internal/zzck;

.field private final zzf:Lcom/google/android/recaptcha/internal/zzaa;

.field private final zzg:Lcom/google/android/recaptcha/internal/zzz;

.field private final zzh:Lcom/google/android/recaptcha/internal/zzcd;

.field private final zzi:Lcom/google/android/recaptcha/internal/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzcl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzb:Lcom/google/android/recaptcha/internal/zzcl;

    const-string v0, "recaptcha.m.Main.rge"

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzcl;->zzb()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zze:Lcom/google/android/recaptcha/internal/zzck;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzcl;->zze()Lcom/google/android/recaptcha/internal/zzcd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzh:Lcom/google/android/recaptcha/internal/zzcd;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzcl;->zza()Lcom/google/android/recaptcha/internal/zzaa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzf:Lcom/google/android/recaptcha/internal/zzaa;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzz;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzz;-><init>()V

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzg:Lcom/google/android/recaptcha/internal/zzz;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzcl;->zzd()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzi:Lcom/google/android/recaptcha/internal/zzag;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzd:I

    return v0
.end method

.method public final zzb()Lcom/google/android/recaptcha/internal/zzz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzg:Lcom/google/android/recaptcha/internal/zzz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/recaptcha/internal/zzck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zze:Lcom/google/android/recaptcha/internal/zzck;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzb:Lcom/google/android/recaptcha/internal/zzcl;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzcl;->zzc()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final zzg(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzd:I

    return-void
.end method

.method public final zzh()Lcom/google/android/recaptcha/internal/zzag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzi:Lcom/google/android/recaptcha/internal/zzag;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/recaptcha/internal/zzcd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcj;->zzh:Lcom/google/android/recaptcha/internal/zzcd;

    return-object v0
.end method
