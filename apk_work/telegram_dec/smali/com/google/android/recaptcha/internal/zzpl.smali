.class public final Lcom/google/android/recaptcha/internal/zzpl;
.super Lcom/google/android/recaptcha/internal/zzit;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkf;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzpl;


# instance fields
.field private zzd:Lcom/google/android/recaptcha/internal/zzjb;

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/internal/zzpl;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzpl;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzpl;->zzb:Lcom/google/android/recaptcha/internal/zzpl;

    const-class v1, Lcom/google/android/recaptcha/internal/zzpl;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzit;->zzD(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzit;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzit;-><init>()V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzit;->zzx()Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzpl;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    return-void
.end method

.method public static zzf()Lcom/google/android/recaptcha/internal/zzpi;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzpl;->zzb:Lcom/google/android/recaptcha/internal/zzpl;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzp()Lcom/google/android/recaptcha/internal/zzin;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzpi;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/recaptcha/internal/zzpl;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzpl;->zzb:Lcom/google/android/recaptcha/internal/zzpl;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/recaptcha/internal/zzpl;Lcom/google/android/recaptcha/internal/zzpk;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzpl;->zzk()V

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzpl;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/recaptcha/internal/zzpl;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzpl;->zzk()V

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzpl;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    invoke-static {p1, p0}, Lcom/google/android/recaptcha/internal/zzgf;->zzc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzpl;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/recaptcha/internal/zzjb;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzy(Lcom/google/android/recaptcha/internal/zzjb;)Lcom/google/android/recaptcha/internal/zzjb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzpl;->zzd:Lcom/google/android/recaptcha/internal/zzjb;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/recaptcha/internal/zzpl;->zzb:Lcom/google/android/recaptcha/internal/zzpl;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzpi;

    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zzpi;-><init>(Lcom/google/android/recaptcha/internal/zzor;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzpl;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzpl;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v1, 0x0

    aput-object p3, p1, v1

    const-class p3, Lcom/google/android/recaptcha/internal/zzpk;

    aput-object p3, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/recaptcha/internal/zzpl;->zzb:Lcom/google/android/recaptcha/internal/zzpl;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzit;->zzA(Lcom/google/android/recaptcha/internal/zzke;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
