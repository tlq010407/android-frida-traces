.class abstract Lcom/google/android/gms/internal/mlkit_common/zztf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zztf;->zza:Ljava/util/Map;

    return-void
.end method

.method static zza()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zztf;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
