.class public final Lcom/google/android/recaptcha/internal/zzdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzdi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzdi;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzdi;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzdi;->zza:Lcom/google/android/recaptcha/internal/zzdi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_6

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Object;

    const/4 v6, 0x1

    if-eq v6, v5, :cond_0

    move-object v4, v2

    :cond_0
    const/4 v5, 0x5

    if-eqz v4, :cond_5

    instance-of v7, v4, Ljava/lang/Class;

    if-eqz v7, :cond_1

    check-cast v4, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v7

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eq v6, v8, :cond_2

    move-object v7, v2

    :cond_2
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "forName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x6

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v2

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzg(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object p3

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Class;

    invoke-virtual {v4, v1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p3, 0xd

    invoke-direct {p2, v6, p3, p1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x30

    invoke-direct {p1, v6, p2, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    invoke-direct {p1, v1, v5, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    invoke-direct {p1, v1, v5, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1
.end method
