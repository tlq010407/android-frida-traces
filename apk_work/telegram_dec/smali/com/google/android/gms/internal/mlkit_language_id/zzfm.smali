.class final Lcom/google/android/gms/internal/mlkit_language_id/zzfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfo;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzep;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzep;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzfo;-><init>([Lcom/google/android/gms/internal/mlkit_language_id/zzfw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzfw;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfw;
    .locals 3

    .line 0
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfx;)Z
    .locals 1

    .line 0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzfx;->zza()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/mlkit_language_id/zzgl;->zza:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzgp;
    .locals 8

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzfw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzfw;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_language_id/zzfx;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzfx;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeg;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzfx;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Lcom/google/android/gms/internal/mlkit_language_id/zzgc;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeg;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzfx;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzgc;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfz;)Lcom/google/android/gms/internal/mlkit_language_id/zzgc;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfx;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzc()Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeg;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzfx;Lcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)Lcom/google/android/gms/internal/mlkit_language_id/zzgd;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzfx;Lcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)Lcom/google/android/gms/internal/mlkit_language_id/zzgd;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzfm;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfx;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgg;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzge;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfj;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfj;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeg;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzee;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzfx;Lcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)Lcom/google/android/gms/internal/mlkit_language_id/zzgd;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzgr;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzhh;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzfu;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzfs;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzgd;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzfx;Lcom/google/android/gms/internal/mlkit_language_id/zzge;Lcom/google/android/gms/internal/mlkit_language_id/zzfj;Lcom/google/android/gms/internal/mlkit_language_id/zzhh;Lcom/google/android/gms/internal/mlkit_language_id/zzee;Lcom/google/android/gms/internal/mlkit_language_id/zzfs;)Lcom/google/android/gms/internal/mlkit_language_id/zzgd;

    move-result-object p1

    return-object p1
.end method
