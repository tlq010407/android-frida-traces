.class public final Lcom/google/android/gms/internal/vision/zzfi$zzi;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

.field private static volatile zzh:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/vision/zzfi$zzj;

.field private zze:Lcom/google/android/gms/internal/vision/zzfi$zzl;

.field private zzf:Lcom/google/android/gms/internal/vision/zzjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjl;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfi$zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjb;->zzo()Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjb;->zzj()Lcom/google/android/gms/internal/vision/zzjb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzfi$zzi;Lcom/google/android/gms/internal/vision/zzfi$zzj;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zza(Lcom/google/android/gms/internal/vision/zzfi$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzfi$zzi;Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzfi$zzj;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzd:Lcom/google/android/gms/internal/vision/zzfi$zzj;

    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzc:I

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzhf;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/vision/zzfi$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    return-object v0
.end method

.method private final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Lcom/google/android/gms/internal/vision/zzjl;)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    sput-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const-string p2, "zze"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "zzf"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b"

    sget-object p3, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzjb;->zza(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;-><init>(Lcom/google/android/gms/internal/vision/zzfk;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzfi$zzi;-><init>()V

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
