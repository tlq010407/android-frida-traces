.class public abstract Lcom/google/android/gms/maps/internal/zzc;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzd;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.ICancelableCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzd;->zzb()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzd;->zzc()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2
.end method
