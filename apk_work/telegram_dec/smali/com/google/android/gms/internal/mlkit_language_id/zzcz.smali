.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/firebase/components/Component;

.field private static final zzb:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field private final zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzdb;->zza:Lcom/google/firebase/components/ComponentFactory;

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zza:Lcom/google/firebase/components/Component;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zze:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzcz$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_language_id/zzda;)V

    return-object v0
.end method
