.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf$zza;
    }
.end annotation


# static fields
.field private static final zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

.field private static volatile zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgj;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzb;

.field private zze:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzi;

.field private zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzd;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzc;

.field private zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzl;

.field private zzj:J

.field private zzk:J

.field private zzl:Z

.field private zzm:I

.field private zzn:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzn:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    const/4 p3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzic;->zza:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzn:B

    return-object v0

    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzn:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    sput-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_3
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzij;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p1

    const/16 p2, 0xc

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "zzc"

    aput-object v0, p2, p3

    const-string p3, "zzd"

    aput-object p3, p2, v1

    const-string p3, "zze"

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const-string p3, "zzg"

    const/4 v0, 0x3

    aput-object p3, p2, v0

    const/4 p3, 0x4

    aput-object p1, p2, p3

    const-string p1, "zzh"

    const/4 p3, 0x5

    aput-object p1, p2, p3

    const-string p1, "zzi"

    const/4 p3, 0x6

    aput-object p1, p2, p3

    const-string p1, "zzj"

    const/4 p3, 0x7

    aput-object p1, p2, p3

    const-string p1, "zzk"

    const/16 p3, 0x8

    aput-object p1, p2, p3

    const-string p1, "zzl"

    const/16 p3, 0x9

    aput-object p1, p2, p3

    const-string p1, "zzm"

    const/16 p3, 0xa

    aput-object p1, p2, p3

    const-string p1, "zzf"

    const/16 p3, 0xb

    aput-object p1, p2, p3

    const-string p1, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u100c\u0003\u0004\u1009\u0004\u0005\u1409\u0005\u0006\u1002\u0006\u0007\u1002\u0007\u0008\u1007\u0008\t\u1004\t\n\u1009\u0002"

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf$zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzic;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzid$zzf;-><init>()V

    return-object p1

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
