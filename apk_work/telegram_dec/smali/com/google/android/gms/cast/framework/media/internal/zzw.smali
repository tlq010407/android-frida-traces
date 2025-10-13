.class public abstract Lcom/google/android/gms/cast/framework/media/internal/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaSessionUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I
    .locals 4

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result p0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I
    .locals 4

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzd()I

    move-result v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzb()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzc()I

    move-result p0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I
    .locals 4

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result p0

    return p0
.end method

.method public static zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I
    .locals 4

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzj()I

    move-result v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzh()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzi()I

    move-result p0

    return p0
.end method

.method public static zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/cast/framework/media/zzg;->zzf()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v1, Lcom/google/android/gms/cast/framework/media/zzg;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getNotificationActions"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Unable to call %s on %s."

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/cast/framework/media/zzg;->zzg()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v1, Lcom/google/android/gms/cast/framework/media/zzg;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getCompactViewActionIndices"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Unable to call %s on %s."

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
