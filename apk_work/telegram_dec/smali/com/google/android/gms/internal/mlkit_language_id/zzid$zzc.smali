.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzb;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzd;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzc;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zze;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zza;
    }
.end annotation


# static fields
.field private static final zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

.field private static volatile zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgj;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zza;

.field private zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzd;

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/mlkit_language_id/zzew;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzew;"
        }
    .end annotation
.end field

.field private zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzl()Lcom/google/android/gms/internal/mlkit_language_id/zzew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzk:Lcom/google/android/gms/internal/mlkit_language_id/zzew;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzic;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    sput-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zza;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zze;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p2

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "zzc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "zzd"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const-string p1, "zze"

    const/4 p3, 0x3

    aput-object p1, v0, p3

    const/4 p1, 0x4

    aput-object p2, v0, p1

    const-string p1, "zzf"

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "zzg"

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "zzh"

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const-string p1, "zzi"

    const/16 p2, 0x8

    aput-object p1, v0, p2

    const-string p1, "zzj"

    const/16 p2, 0x9

    aput-object p1, v0, p2

    const-string p1, "zzk"

    const/16 p2, 0xa

    aput-object p1, v0, p2

    const-class p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzg;

    const/16 p2, 0xb

    aput-object p1, v0, p2

    const-string p1, "zzl"

    const/16 p2, 0xc

    aput-object p1, v0, p2

    const-string p1, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1009\u0004\u0006\u1009\u0005\u0007\u1004\u0006\u0008\u001b\t\u1004\u0007"

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzic;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;-><init>()V

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
