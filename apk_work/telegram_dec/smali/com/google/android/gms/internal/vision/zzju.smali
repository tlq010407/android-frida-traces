.class abstract Lcom/google/android/gms/internal/vision/zzju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/vision/zzju;

.field private static final zzb:Lcom/google/android/gms/internal/vision/zzju;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzjw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzjw;-><init>(Lcom/google/android/gms/internal/vision/zzjx;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzju;->zza:Lcom/google/android/gms/internal/vision/zzju;

    new-instance v0, Lcom/google/android/gms/internal/vision/zzjz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzjz;-><init>(Lcom/google/android/gms/internal/vision/zzjx;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzju;->zzb:Lcom/google/android/gms/internal/vision/zzju;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/zzjx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzju;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/vision/zzju;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzju;->zza:Lcom/google/android/gms/internal/vision/zzju;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/vision/zzju;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzju;->zzb:Lcom/google/android/gms/internal/vision/zzju;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
