.class public abstract Lcom/google/android/gms/internal/icing/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final zzb:Lcom/google/android/gms/common/api/Api;

.field public static final zzc:Lcom/google/android/gms/internal/icing/zzz;

.field private static final zzd:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/icing/zze;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/internal/icing/zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/icing/zzd;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/icing/zze;->zzd:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "AppDataSearch.LIGHTWEIGHT_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/icing/zze;->zzb:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/icing/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/icing/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/icing/zze;->zzc:Lcom/google/android/gms/internal/icing/zzz;

    return-void
.end method
