.class public final Lcom/google/android/gms/internal/play_billing/zzfw;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfw;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb:Lcom/google/android/gms/internal/play_billing/zzfw;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    return-void
.end method

.method static synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzfw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb:Lcom/google/android/gms/internal/play_billing/zzfw;

    return-object v0
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    const/4 p3, 0x3

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb:Lcom/google/android/gms/internal/play_billing/zzfw;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;-><init>(Lcom/google/android/gms/internal/play_billing/zzft;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfw;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v1, 0x0

    aput-object p3, p1, v1

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfv;->zza:Lcom/google/android/gms/internal/play_billing/zzce;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb:Lcom/google/android/gms/internal/play_billing/zzfw;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzm(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
