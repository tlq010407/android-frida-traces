.class public final synthetic Lcom/google/android/gms/cast/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/internal/zzn;

.field public final synthetic zzb:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/internal/zzn;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zze;->zza:Lcom/google/android/gms/cast/internal/zzn;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zze;->zzb:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/cast/internal/zzo;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zze;->zza:Lcom/google/android/gms/cast/internal/zzn;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzaj;

    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zze;->zzb:[Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/zzaj;->zzh(Lcom/google/android/gms/cast/internal/zzaf;[Ljava/lang/String;)V

    return-void
.end method
