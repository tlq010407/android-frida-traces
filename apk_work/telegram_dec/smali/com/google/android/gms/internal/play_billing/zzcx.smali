.class final Lcom/google/android/gms/internal/play_billing/zzcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdq;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzdd;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->zza()Lcom/google/android/gms/internal/play_billing/zzbw;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzdd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/zzdd;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/play_billing/zzdd;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzcw;-><init>([Lcom/google/android/gms/internal/play_billing/zzdd;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdp;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzC(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcb;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzz()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzdc;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)Lcom/google/android/gms/internal/play_billing/zzdj;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzy()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzd()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzz()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v6

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zzb()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v7

    :goto_2
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;

    move-result-object p1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzc()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzy()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v6

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zza()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :goto_4
    return-object p1
.end method
