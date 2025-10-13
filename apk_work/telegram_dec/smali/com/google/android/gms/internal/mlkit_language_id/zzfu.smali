.class abstract Lcom/google/android/gms/internal/mlkit_language_id/zzfu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    return-object v0
.end method

.method private static zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzfs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
