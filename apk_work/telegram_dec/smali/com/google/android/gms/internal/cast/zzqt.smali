.class public final Lcom/google/android/gms/internal/cast/zzqt;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzqt;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/cast/zztx;

.field private zzg:Lcom/google/android/gms/internal/cast/zztx;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzqt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzqt;->zzb:Lcom/google/android/gms/internal/cast/zzqt;

    const-class v1, Lcom/google/android/gms/internal/cast/zzqt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzqt;->zzf:Lcom/google/android/gms/internal/cast/zztx;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzqt;->zzg:Lcom/google/android/gms/internal/cast/zztx;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/cast/zzqt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzqt;->zzb:Lcom/google/android/gms/internal/cast/zzqt;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzqt;->zzb:Lcom/google/android/gms/internal/cast/zzqt;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqs;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzqs;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzqt;-><init>()V

    return-object p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlw;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zzd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zze"

    aput-object v4, v3, p2

    aput-object p1, v3, v2

    const-string p1, "zzf"

    aput-object p1, v3, v1

    const-class p1, Lcom/google/android/gms/internal/cast/zzpv;

    aput-object p1, v3, v0

    const-string p2, "zzg"

    aput-object p2, v3, p3

    const/4 p2, 0x6

    aput-object p1, v3, p2

    const-string p1, "zzh"

    const/4 p2, 0x7

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zzqt;->zzb:Lcom/google/android/gms/internal/cast/zzqt;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u180c\u0000\u0002\u001b\u0003\u001b\u0004\u1004\u0001"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
