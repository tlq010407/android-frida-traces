.class public abstract Lcom/google/android/gms/location/LocationServices;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

.field public static final GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

.field public static final SettingsApi:Lcom/google/android/gms/location/SettingsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/location/zzbp;->zzb:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/location/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    new-instance v0, Lcom/google/android/gms/internal/location/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    new-instance v0, Lcom/google/android/gms/internal/location/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzcc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    return-void
.end method

.method public static getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzbp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzce;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzce;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
