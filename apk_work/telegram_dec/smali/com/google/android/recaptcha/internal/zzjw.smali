.class final Lcom/google/android/recaptcha/internal/zzjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzks;


# static fields
.field private static final zza:Lcom/google/android/recaptcha/internal/zzkc;


# instance fields
.field private final zzb:Lcom/google/android/recaptcha/internal/zzkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzju;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzju;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzjw;->zza:Lcom/google/android/recaptcha/internal/zzkc;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/recaptcha/internal/zzjv;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzim;->zza()Lcom/google/android/recaptcha/internal/zzim;

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

    check-cast v2, Lcom/google/android/recaptcha/internal/zzkc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/recaptcha/internal/zzjw;->zza:Lcom/google/android/recaptcha/internal/zzkc;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/recaptcha/internal/zzkc;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/recaptcha/internal/zzjv;-><init>([Lcom/google/android/recaptcha/internal/zzkc;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/recaptcha/internal/zzjc;->zzd:[B

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzjw;->zzb:Lcom/google/android/recaptcha/internal/zzkc;

    return-void
.end method

.method private static zzb(Lcom/google/android/recaptcha/internal/zzkb;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/recaptcha/internal/zzkb;->zzc()I

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
.method public final zza(Ljava/lang/Class;)Lcom/google/android/recaptcha/internal/zzkr;
    .locals 8

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzkt;->zzs(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzjw;->zzb:Lcom/google/android/recaptcha/internal/zzkc;

    invoke-interface {v0, p1}, Lcom/google/android/recaptcha/internal/zzkc;->zzb(Ljava/lang/Class;)Lcom/google/android/recaptcha/internal/zzkb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzkb;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/recaptcha/internal/zzit;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkt;->zzn()Lcom/google/android/recaptcha/internal/zzll;

    move-result-object p1

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzih;->zzb()Lcom/google/android/recaptcha/internal/zzif;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzkb;->zza()Lcom/google/android/recaptcha/internal/zzke;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/recaptcha/internal/zzki;->zzc(Lcom/google/android/recaptcha/internal/zzll;Lcom/google/android/recaptcha/internal/zzif;Lcom/google/android/recaptcha/internal/zzke;)Lcom/google/android/recaptcha/internal/zzki;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkt;->zzm()Lcom/google/android/recaptcha/internal/zzll;

    move-result-object p1

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzih;->zza()Lcom/google/android/recaptcha/internal/zzif;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/recaptcha/internal/zzjw;->zzb(Lcom/google/android/recaptcha/internal/zzkb;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkl;->zzb()Lcom/google/android/recaptcha/internal/zzkk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzjs;->zze()Lcom/google/android/recaptcha/internal/zzjs;

    move-result-object v4

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkt;->zzn()Lcom/google/android/recaptcha/internal/zzll;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzih;->zzb()Lcom/google/android/recaptcha/internal/zzif;

    move-result-object v6

    :goto_1
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzka;->zzb()Lcom/google/android/recaptcha/internal/zzjz;

    move-result-object v7

    :goto_2
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/recaptcha/internal/zzkh;->zzm(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzkb;Lcom/google/android/recaptcha/internal/zzkk;Lcom/google/android/recaptcha/internal/zzjs;Lcom/google/android/recaptcha/internal/zzll;Lcom/google/android/recaptcha/internal/zzif;Lcom/google/android/recaptcha/internal/zzjz;)Lcom/google/android/recaptcha/internal/zzkh;

    move-result-object p1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/google/android/recaptcha/internal/zzjw;->zzb(Lcom/google/android/recaptcha/internal/zzkb;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkl;->zza()Lcom/google/android/recaptcha/internal/zzkk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzjs;->zzd()Lcom/google/android/recaptcha/internal/zzjs;

    move-result-object v4

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkt;->zzm()Lcom/google/android/recaptcha/internal/zzll;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzih;->zza()Lcom/google/android/recaptcha/internal/zzif;

    move-result-object v6

    :goto_3
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzka;->zza()Lcom/google/android/recaptcha/internal/zzjz;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :goto_4
    return-object p1
.end method
