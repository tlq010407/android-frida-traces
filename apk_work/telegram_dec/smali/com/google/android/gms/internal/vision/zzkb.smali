.class final Lcom/google/android/gms/internal/vision/zzkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzlf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/vision/zzkl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/vision/zzkl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzka;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzkb;->zzb:Lcom/google/android/gms/internal/vision/zzkl;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzkd;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjc;->zza()Lcom/google/android/gms/internal/vision/zzjc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkb;->zza()Lcom/google/android/gms/internal/vision/zzkl;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/vision/zzkl;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzkd;-><init>([Lcom/google/android/gms/internal/vision/zzkl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzkb;-><init>(Lcom/google/android/gms/internal/vision/zzkl;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/vision/zzkl;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzkl;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzkb;->zza:Lcom/google/android/gms/internal/vision/zzkl;

    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/vision/zzkl;
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

    check-cast v0, Lcom/google/android/gms/internal/vision/zzkl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzkb;->zzb:Lcom/google/android/gms/internal/vision/zzkl;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzki;)Z
    .locals 1

    .line 0
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzki;->zza()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/vision/zzkz;->zza:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 8

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzkb;->zza:Lcom/google/android/gms/internal/vision/zzkl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzkl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzki;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/zzki;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/vision/zzjb;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzle;->zzc()Lcom/google/android/gms/internal/vision/zzlu;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzir;->zza()Lcom/google/android/gms/internal/vision/zziq;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/zzki;->zzc()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzkq;->zza(Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkk;)Lcom/google/android/gms/internal/vision/zzkq;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzle;->zza()Lcom/google/android/gms/internal/vision/zzlu;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzir;->zzb()Lcom/google/android/gms/internal/vision/zziq;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/zzki;->zzc()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzkq;->zza(Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkk;)Lcom/google/android/gms/internal/vision/zzkq;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzkb;->zza(Lcom/google/android/gms/internal/vision/zzki;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzku;->zzb()Lcom/google/android/gms/internal/vision/zzks;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzju;->zzb()Lcom/google/android/gms/internal/vision/zzju;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzle;->zzc()Lcom/google/android/gms/internal/vision/zzlu;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzir;->zza()Lcom/google/android/gms/internal/vision/zziq;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkj;->zzb()Lcom/google/android/gms/internal/vision/zzkh;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkj;->zzb()Lcom/google/android/gms/internal/vision/zzkh;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzkb;->zza(Lcom/google/android/gms/internal/vision/zzki;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzku;->zza()Lcom/google/android/gms/internal/vision/zzks;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzju;->zza()Lcom/google/android/gms/internal/vision/zzju;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzle;->zza()Lcom/google/android/gms/internal/vision/zzlu;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzir;->zzb()Lcom/google/android/gms/internal/vision/zziq;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkj;->zza()Lcom/google/android/gms/internal/vision/zzkh;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzle;->zzb()Lcom/google/android/gms/internal/vision/zzlu;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkj;->zza()Lcom/google/android/gms/internal/vision/zzkh;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;

    move-result-object p1

    return-object p1
.end method
