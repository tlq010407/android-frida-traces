.class public final Lcom/google/android/gms/internal/vision/zzfi$zzf;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;,
        Lcom/google/android/gms/internal/vision/zzfi$zzf$zza;
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

.field private static volatile zzm:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/vision/zzjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjl;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/vision/zzjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjl;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfi$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjb;->zzo()Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjb;->zzo()Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzk:Lcom/google/android/gms/internal/vision/zzjl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjb;->zzj()Lcom/google/android/gms/internal/vision/zzjb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    return-object v0
.end method

.method private final zza(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzi:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzfi$zzf;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzfi$zzf;Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzfi$zzf;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzk:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Lcom/google/android/gms/internal/vision/zzjl;)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzk:Lcom/google/android/gms/internal/vision/zzjl;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzk:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzhf;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/vision/zzfi$zzf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    return-object v0
.end method

.method private final zzb(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzj:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzfi$zzf;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzb(J)V

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    sget-object p2, Lcom/google/android/gms/internal/vision/zzfk;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    sput-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzm:Lcom/google/android/gms/internal/vision/zzkx;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zza;->zzb()Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object p1

    const/16 p2, 0xb

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "zzc"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "zzd"

    aput-object v0, p2, p3

    const-string p3, "zze"

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const-string p3, "zzf"

    const/4 v0, 0x3

    aput-object p3, p2, v0

    const-string p3, "zzg"

    const/4 v0, 0x4

    aput-object p3, p2, v0

    const/4 p3, 0x5

    aput-object p1, p2, p3

    const-string p1, "zzh"

    const/4 p3, 0x6

    aput-object p1, p2, p3

    const-string p1, "zzi"

    const/4 p3, 0x7

    aput-object p1, p2, p3

    const-string p1, "zzj"

    const/16 p3, 0x8

    aput-object p1, p2, p3

    const-string p1, "zzk"

    const/16 p3, 0x9

    aput-object p1, p2, p3

    const-class p1, Lcom/google/android/gms/internal/vision/zzfi$zzn;

    const/16 p3, 0xa

    aput-object p1, p2, p3

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a\u0004\u100c\u0002\u0005\u1008\u0003\u0006\u1002\u0004\u0007\u1002\u0005\u0008\u001b"

    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zzl:Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzfk;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzfi$zzf;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
