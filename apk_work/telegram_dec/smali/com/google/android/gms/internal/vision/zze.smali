.class public abstract Lcom/google/android/gms/internal/vision/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/vision/zzf;

.field private static volatile zzb:Lcom/google/android/gms/internal/vision/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzg;-><init>(Lcom/google/android/gms/internal/vision/zzh;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zze;->zza:Lcom/google/android/gms/internal/vision/zzf;

    sput-object v0, Lcom/google/android/gms/internal/vision/zze;->zzb:Lcom/google/android/gms/internal/vision/zzf;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/vision/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zze;->zzb:Lcom/google/android/gms/internal/vision/zzf;

    return-object v0
.end method
