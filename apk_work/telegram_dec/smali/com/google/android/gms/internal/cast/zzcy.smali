.class public final Lcom/google/android/gms/internal/cast/zzcy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/cast/internal/Logger;

.field protected final zzb:Lcom/google/android/gms/internal/cast/zzda;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdd;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzsc;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/cast/zzrx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzdd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/zzrx;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzde;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzde;-><init>()V

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "BaseNetUtils"

    invoke-direct {p1, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcy;->zza:Lcom/google/android/gms/cast/internal/Logger;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzb:Lcom/google/android/gms/internal/cast/zzda;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzda;->zza()V

    return-void
.end method
