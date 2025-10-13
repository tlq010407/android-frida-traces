.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zzb;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zza;
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzex;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzex;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/mlkit_language_id/zzex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzex;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

.field private static volatile zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgj;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

.field private zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

.field private zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzcc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzex;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzce;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzex;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzcd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzj:Lcom/google/android/gms/internal/mlkit_language_id/zzex;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzk()Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzk()Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzk()Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzx;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    sput-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "zzc"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "zzd"

    aput-object v2, v1, p3

    const-string p3, "zze"

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 p3, 0x3

    aput-object p1, v1, p3

    const-string p1, "zzg"

    const/4 p3, 0x4

    aput-object p1, v1, p3

    const/4 p1, 0x5

    aput-object p2, v1, p1

    const-string p1, "zzi"

    const/4 p2, 0x6

    aput-object p1, v1, p2

    const/4 p1, 0x7

    aput-object v0, v1, p1

    const-string p1, "zzk"

    const/16 p2, 0x8

    aput-object p1, v1, p2

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u1003\u0000\u0002\u001e\u0003\u001e\u0004\u001e\u0005\u1004\u0001"

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    invoke-static {p2, p1, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzx;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzbg;-><init>()V

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
