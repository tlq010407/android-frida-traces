.class final enum Lcom/google/android/gms/internal/vision/zzix;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzb:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzc:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzd:Lcom/google/android/gms/internal/vision/zzix;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/vision/zzix;


# instance fields
.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/vision/zzix;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zza:Lcom/google/android/gms/internal/vision/zzix;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzix;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzix;->zzb:Lcom/google/android/gms/internal/vision/zzix;

    new-instance v3, Lcom/google/android/gms/internal/vision/zzix;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/vision/zzix;->zzc:Lcom/google/android/gms/internal/vision/zzix;

    new-instance v5, Lcom/google/android/gms/internal/vision/zzix;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/google/android/gms/internal/vision/zzix;->zzd:Lcom/google/android/gms/internal/vision/zzix;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/vision/zzix;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/vision/zzix;->zzf:[Lcom/google/android/gms/internal/vision/zzix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/vision/zzix;->zze:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzf:[Lcom/google/android/gms/internal/vision/zzix;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzix;

    return-object v0
.end method
