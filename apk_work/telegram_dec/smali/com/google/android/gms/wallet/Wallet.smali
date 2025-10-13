.class public abstract Lcom/google/android/gms/wallet/Wallet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/Wallet$WalletOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final zza:Lcom/google/android/gms/wallet/wobs/WalletObjects;

.field public static final zzb:Lcom/google/android/gms/internal/wallet/zzv;

.field public static final zzc:Lcom/google/android/gms/internal/wallet/zzad;

.field private static final zzd:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zze:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzd:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/wallet/zzap;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/zzap;-><init>()V

    sput-object v1, Lcom/google/android/gms/wallet/Wallet;->zze:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Wallet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/wallet/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzb:Lcom/google/android/gms/internal/wallet/zzv;

    new-instance v0, Lcom/google/android/gms/internal/wallet/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zza:Lcom/google/android/gms/wallet/wobs/WalletObjects;

    new-instance v0, Lcom/google/android/gms/internal/wallet/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzc:Lcom/google/android/gms/internal/wallet/zzad;

    return-void
.end method

.method public static getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)V

    return-object v0
.end method
