.class final Lcom/google/android/gms/cast/framework/zzbl;
.super Lcom/google/android/gms/cast/framework/zzbb;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/SessionProvider;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/SessionProvider;Lcom/google/android/gms/cast/framework/zzbk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzbl;->zza:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzbb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbl;->zza:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionProvider;->createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbl;->zza:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbl;->zza:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->isSessionRecoverable()Z

    move-result v0

    return v0
.end method
