.class abstract Lcom/google/android/gms/internal/mlkit_language_id/zzgu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Iterator;

.field private static final zzb:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgu;->zza:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzgw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgu;->zzb:Ljava/lang/Iterable;

    return-void
.end method

.method static zza()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgu;->zzb:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic zzb()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgu;->zza:Ljava/util/Iterator;

    return-object v0
.end method
