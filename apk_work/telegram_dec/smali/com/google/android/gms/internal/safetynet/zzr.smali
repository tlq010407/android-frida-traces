.class abstract Lcom/google/android/gms/internal/safetynet/zzr;
.super Lcom/google/android/gms/internal/safetynet/zze;
.source "SourceFile"


# instance fields
.field protected final zzc:Lcom/google/android/gms/internal/safetynet/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/safetynet/zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/safetynet/zzq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/safetynet/zzq;-><init>(Lcom/google/android/gms/internal/safetynet/zzr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzr;->zzc:Lcom/google/android/gms/internal/safetynet/zzg;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/safetynet/zzp;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    return-object v0
.end method
