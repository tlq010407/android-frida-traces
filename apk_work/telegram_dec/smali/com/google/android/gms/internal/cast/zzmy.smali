.class public final Lcom/google/android/gms/internal/cast/zzmy;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zztv;

.field private static final zzd:Lcom/google/android/gms/internal/cast/zzmy;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/cast/zzne;

.field private zzg:Lcom/google/android/gms/internal/cast/zzpj;

.field private zzh:Lcom/google/android/gms/internal/cast/zztx;

.field private zzi:Lcom/google/android/gms/internal/cast/zztu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzmw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzmw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzmy;->zzb:Lcom/google/android/gms/internal/cast/zztv;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzmy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzmy;->zzd:Lcom/google/android/gms/internal/cast/zzmy;

    const-class v1, Lcom/google/android/gms/internal/cast/zzmy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzi:Lcom/google/android/gms/internal/cast/zztu;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zzmx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzmy;->zzd:Lcom/google/android/gms/internal/cast/zzmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzv()Lcom/google/android/gms/internal/cast/zztm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzmx;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/cast/zzmy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzmy;->zzd:Lcom/google/android/gms/internal/cast/zzmy;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzmy;Lcom/google/android/gms/internal/cast/zzne;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzf:Lcom/google/android/gms/internal/cast/zzne;

    iget p1, p0, Lcom/google/android/gms/internal/cast/zzmy;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzmy;->zze:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zzmy;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzi:Lcom/google/android/gms/internal/cast/zztu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/zztu;->zzf(I)Lcom/google/android/gms/internal/cast/zztu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzi:Lcom/google/android/gms/internal/cast/zztu;

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzml;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzmy;->zzi:Lcom/google/android/gms/internal/cast/zztu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzml;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cast/zztu;->zzh(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 p2, 0x1

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzmy;->zzd:Lcom/google/android/gms/internal/cast/zzmy;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzmx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzmx;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzmy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzmy;-><init>()V

    return-object p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzml;->zzb()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zze"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zzf"

    aput-object v4, v3, p2

    const-string p2, "zzg"

    aput-object p2, v3, v2

    const-string p2, "zzh"

    aput-object p2, v3, v1

    const-class p2, Lcom/google/android/gms/internal/cast/zzpf;

    aput-object p2, v3, v0

    const-string p2, "zzi"

    aput-object p2, v3, p3

    const/4 p2, 0x6

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zzmy;->zzd:Lcom/google/android/gms/internal/cast/zzmy;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b\u0004\u081e"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
