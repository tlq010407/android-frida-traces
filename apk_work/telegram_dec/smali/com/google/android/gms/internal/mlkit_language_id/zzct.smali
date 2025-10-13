.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zzb;


# static fields
.field public static final zza:Lcom/google/firebase/components/Component;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzcr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zzb;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcr;

    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcs;->zza:Lcom/google/firebase/components/ComponentFactory;

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzct;->zza:Lcom/google/firebase/components/Component;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzct;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzcr;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzct;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzcr;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh$zza;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh$zza;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzcr;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;)V

    return-void
.end method
