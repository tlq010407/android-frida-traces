.class public Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/CastMediaOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/cast/framework/media/zzd;

.field private final zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private final zzf:Z

.field private final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastMediaOptions"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzc:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.cast.framework.media.IImagePicker"

    invoke-interface {p3, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/cast/framework/media/zzd;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/gms/cast/framework/media/zzd;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/cast/framework/media/zzb;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzd:Lcom/google/android/gms/cast/framework/media/zzd;

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzf:Z

    iput-boolean p6, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzg:Z

    return-void
.end method


# virtual methods
.method public getExpandedControllerActivityClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzd:Lcom/google/android/gms/cast/framework/media/zzd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzd;->zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v3, Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getWrappedClientObject"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Unable to call %s on %s."

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public getMediaIntentReceiverClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSessionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzg:Z

    return v0
.end method

.method public getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzd:Lcom/google/android/gms/cast/framework/media/zzd;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzf:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaSessionEnabled()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzf:Z

    return v0
.end method
