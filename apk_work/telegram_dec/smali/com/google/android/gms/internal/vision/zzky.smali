.class final Lcom/google/android/gms/internal/vision/zzky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/vision/zzky;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/vision/zzlf;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzky;->zza:Lcom/google/android/gms/internal/vision/zzky;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzky;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/vision/zzkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzkb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzky;->zzb:Lcom/google/android/gms/internal/vision/zzlf;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/vision/zzky;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzky;->zza:Lcom/google/android/gms/internal/vision/zzky;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 2

    .line 0
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzky;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzlc;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzky;->zzb:Lcom/google/android/gms/internal/vision/zzlf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/vision/zzlf;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzky;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzlc;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    return-object p1
.end method
