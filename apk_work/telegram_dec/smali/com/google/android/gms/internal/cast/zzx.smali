.class final Lcom/google/android/gms/internal/cast/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzd:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zze:Ljava/lang/String;

.field private static zzf:J


# instance fields
.field zza:Lcom/google/android/gms/cast/framework/CastSession;

.field public zzb:Ljava/lang/Integer;

.field private final zzg:Lcom/google/android/gms/internal/cast/zzfc;

.field private final zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private final zzj:Ljava/util/List;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Lcom/google/android/gms/internal/cast/zzg;

.field private final zzm:Ljava/lang/String;

.field private final zzn:J

.field private final zzo:J

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "SessionFlowSummary"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzx;->zzd:Lcom/google/android/gms/cast/internal/Logger;

    const-string v0, "21.4.0"

    sput-object v0, Lcom/google/android/gms/internal/cast/zzx;->zze:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/cast/zzw;->zza:Lcom/google/android/gms/internal/cast/zzw;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzff;->zza(Lcom/google/android/gms/internal/cast/zzfc;)Lcom/google/android/gms/internal/cast/zzfc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzg:Lcom/google/android/gms/internal/cast/zzfc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzl:Lcom/google/android/gms/internal/cast/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzm:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    sget-wide p1, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    sput-wide v0, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzo:J

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/cast/zzq;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzq;->zzb(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/cast/zzz;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzz;->zzb(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/cast/zzab;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzab;->zzb(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->zzj(Lcom/google/android/gms/cast/framework/zzs;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzo:J

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzno;->zzc()Lcom/google/android/gms/internal/cast/zznn;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzm(J)Lcom/google/android/gms/internal/cast/zznn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzr:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzne;->zza()Lcom/google/android/gms/internal/cast/zznd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/cast/zzx;->zze:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzne;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzb(Lcom/google/android/gms/internal/cast/zzne;)Lcom/google/android/gms/internal/cast/zznn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzg:Lcom/google/android/gms/internal/cast/zzfc;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zznu;->zza()Lcom/google/android/gms/internal/cast/zznt;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzfc;->zza()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzok;->zza()Lcom/google/android/gms/internal/cast/zzoj;

    move-result-object v4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/cast/zzoj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzoj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzok;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznt;->zze(Lcom/google/android/gms/internal/cast/zzok;)Lcom/google/android/gms/internal/cast/zznt;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    if-eqz v1, :cond_4

    :try_start_0
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/cast/zzx;->zzd:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v0

    const-string v0, "receiverSessionId %s is not valid for hash"

    invoke-virtual {v5, v4, v0, v6}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/cast/zznt;->zzf(J)Lcom/google/android/gms/internal/cast/zznt;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzz;->zza()Lcom/google/android/gms/internal/cast/zzns;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzab;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzab;->zza()Lcom/google/android/gms/internal/cast/zzny;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzq;->zza()Lcom/google/android/gms/internal/cast/zznq;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzad;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzad;->zza()Lcom/google/android/gms/internal/cast/zznw;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zznu;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/cast/zznn;->zzl(Lcom/google/android/gms/internal/cast/zznu;)Lcom/google/android/gms/internal/cast/zznn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzno;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzl:Lcom/google/android/gms/internal/cast/zzg;

    const/16 v2, 0xe9

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    return-void
.end method

.method final zzf(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->zzc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->zzm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzb:Ljava/lang/Integer;

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    :cond_3
    return-void
.end method

.method final zzg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    :cond_1
    return-void
.end method

.method public final zzh(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzac;-><init>(I)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzad;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzad;-><init>(Lcom/google/android/gms/internal/cast/zzac;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzad;->zzc(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzad;->zzb()V

    return-void
.end method
