.class public final Lcom/google/android/gms/internal/cast/zzqf;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzqf;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/cast/zzok;

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/cast/zztx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzqf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzqf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzqf;->zzb:Lcom/google/android/gms/internal/cast/zzqf;

    const-class v1, Lcom/google/android/gms/internal/cast/zzqf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzqf;->zzk:Lcom/google/android/gms/internal/cast/zztx;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzqf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzqf;->zzb:Lcom/google/android/gms/internal/cast/zzqf;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzqf;->zzb:Lcom/google/android/gms/internal/cast/zzqf;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqe;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzqe;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzqf;-><init>()V

    return-object p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzkp;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzkm;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzhj;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object v5

    const/16 v6, 0xd

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "zzd"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "zze"

    aput-object v7, v6, p2

    const-string p2, "zzf"

    aput-object p2, v6, v2

    aput-object p1, v6, v1

    const-string p1, "zzg"

    aput-object p1, v6, v0

    aput-object v3, v6, p3

    const-string p1, "zzh"

    const/4 p2, 0x6

    aput-object p1, v6, p2

    const/4 p1, 0x7

    aput-object v4, v6, p1

    const-string p1, "zzi"

    const/16 p2, 0x8

    aput-object p1, v6, p2

    const/16 p1, 0x9

    aput-object v5, v6, p1

    const-string p1, "zzj"

    const/16 p2, 0xa

    aput-object p1, v6, p2

    const-string p1, "zzk"

    const/16 p2, 0xb

    aput-object p1, v6, p2

    const-class p1, Lcom/google/android/gms/internal/cast/zzok;

    const/16 p2, 0xc

    aput-object p1, v6, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zzqf;->zzb:Lcom/google/android/gms/internal/cast/zzqf;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u1002\u0005\u0007\u001b"

    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
