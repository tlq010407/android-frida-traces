.class public final Lcom/google/android/gms/internal/cast/zzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zzb:Ljava/lang/String;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ApplicationAnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzm;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v0, "21.4.0"

    sput-object v0, Lcom/google/android/gms/internal/cast/zzm;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzc:Ljava/lang/String;

    const-string p2, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzah;->zza(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzd:Ljava/util/Map;

    const-string p2, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzah;->zza(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzm;->zze:Ljava/util/Map;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzno;->zzc()Lcom/google/android/gms/internal/cast/zznn;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/internal/cast/zzl;->zzd:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zznn;->zzm(J)Lcom/google/android/gms/internal/cast/zznn;

    iget v2, p1, Lcom/google/android/gms/internal/cast/zzl;->zze:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, 0x1

    iput v4, p1, Lcom/google/android/gms/internal/cast/zzl;->zze:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzh(I)Lcom/google/android/gms/internal/cast/zznn;

    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzl;->zzc:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzl;->zzh:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzne;->zza()Lcom/google/android/gms/internal/cast/zznd;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/cast/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zznd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zznd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/cast/zzne;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzb(Lcom/google/android/gms/internal/cast/zzne;)Lcom/google/android/gms/internal/cast/zznn;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzng;->zza()Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/cast/zzl;->zzb:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzok;->zza()Lcom/google/android/gms/internal/cast/zzoj;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/cast/zzl;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/cast/zzoj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzoj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzok;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zznf;->zza(Lcom/google/android/gms/internal/cast/zzok;)Lcom/google/android/gms/internal/cast/zznf;

    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznf;->zzf(Z)Lcom/google/android/gms/internal/cast/zznf;

    iget-object v4, p1, Lcom/google/android/gms/internal/cast/zzl;->zzf:Ljava/lang/String;

    if-eqz v4, :cond_3

    :try_start_0
    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Lcom/google/android/gms/internal/cast/zzm;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    const-string v0, "receiverSessionId %s is not valid for hash"

    invoke-virtual {v6, v5, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/cast/zznf;->zzh(J)Lcom/google/android/gms/internal/cast/zznf;

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzl;->zzg:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznf;->zzb(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzl;->zzd()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznf;->zzd(Z)Lcom/google/android/gms/internal/cast/zznf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/cast/zzl;->zzi:Z

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/cast/zznf;->zze(Z)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzd(Lcom/google/android/gms/internal/cast/zznf;)Lcom/google/android/gms/internal/cast/zznn;

    return-object v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/cast/zznn;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zznf;->zzf(Z)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/zznn;->zzd(Lcom/google/android/gms/internal/cast/zznf;)Lcom/google/android/gms/internal/cast/zznn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzl;Z)Lcom/google/android/gms/internal/cast/zzno;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zzi(Lcom/google/android/gms/internal/cast/zznn;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznf;->zzg(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzng;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zznn;->zze(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznn;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzm;->zzi(Lcom/google/android/gms/internal/cast/zznn;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/internal/cast/zzl;->zzj:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zznf;->zzg(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzng;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zznn;->zze(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznn;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zze:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zze:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit16 v1, p2, 0x2710

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznf;->zzg(I)Lcom/google/android/gms/internal/cast/zznf;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzd:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzd:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit16 p2, p2, 0x2710

    :goto_3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zznf;->zzc(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzng;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zznn;->zze(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/cast/zzl;II)Lcom/google/android/gms/internal/cast/zzno;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zznf;->zzj(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/cast/zznf;->zzi(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzng;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zznn;->zze(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzh(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zznn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznn;->zza()Lcom/google/android/gms/internal/cast/zzng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzng;->zzc(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zznf;->zzj(I)Lcom/google/android/gms/internal/cast/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzng;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zznn;->zze(Lcom/google/android/gms/internal/cast/zzng;)Lcom/google/android/gms/internal/cast/zznn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    return-object p1
.end method
