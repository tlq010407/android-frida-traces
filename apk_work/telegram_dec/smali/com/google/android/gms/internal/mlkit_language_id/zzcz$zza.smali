.class public Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    return-void
.end method


# virtual methods
.method protected synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;->zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V

    return-object p1
.end method
