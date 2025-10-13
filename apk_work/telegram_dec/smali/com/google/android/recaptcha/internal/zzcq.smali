.class public final Lcom/google/android/recaptcha/internal/zzcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcq;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcq;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcq;->zza:Lcom/google/android/recaptcha/internal/zzcq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzpl;->zzf()Lcom/google/android/recaptcha/internal/zzpi;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_a

    aget-object v7, p3, v6

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzpk;->zzf()Lcom/google/android/recaptcha/internal/zzpj;

    move-result-object v8

    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzt(I)Lcom/google/android/recaptcha/internal/zzpj;

    goto/16 :goto_2

    :cond_0
    instance-of v9, v7, Ljava/lang/Short;

    if-eqz v9, :cond_1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->shortValue()S

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzs(I)Lcom/google/android/recaptcha/internal/zzpj;

    goto/16 :goto_2

    :cond_1
    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_2

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v7

    new-array v9, v1, [B

    aput-byte v7, v9, v0

    invoke-static {v9, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zzm([BII)Lcom/google/android/recaptcha/internal/zzgw;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zze(Lcom/google/android/recaptcha/internal/zzgw;)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_2
    instance-of v9, v7, Ljava/lang/Long;

    if-eqz v9, :cond_3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/recaptcha/internal/zzpj;->zzu(J)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_3
    instance-of v9, v7, Ljava/lang/Double;

    if-eqz v9, :cond_4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/recaptcha/internal/zzpj;->zzq(D)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_4
    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzr(F)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_5
    instance-of v9, v7, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzd(Z)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_6
    instance-of v9, v7, Ljava/lang/Character;

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzp(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_7
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_8

    check-cast v7, Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Lcom/google/android/recaptcha/internal/zzpj;->zzv(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzpj;

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/recaptcha/internal/zzin;->zzh()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object v7

    check-cast v7, Lcom/google/android/recaptcha/internal/zzpk;

    invoke-virtual {v5, v7}, Lcom/google/android/recaptcha/internal/zzpi;->zze(Lcom/google/android/recaptcha/internal/zzpk;)Lcom/google/android/recaptcha/internal/zzpi;

    add-int/2addr v6, v1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    invoke-direct {p1, v4, v4, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    invoke-virtual {v5}, Lcom/google/android/recaptcha/internal/zzin;->zzh()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p3

    check-cast p3, Lcom/google/android/recaptcha/internal/zzpl;

    invoke-virtual {p3}, Lcom/google/android/recaptcha/internal/zzgf;->zzd()[B

    move-result-object p3

    array-length v1, p3

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzfy;->zzh()Lcom/google/android/recaptcha/internal/zzfy;

    move-result-object v2

    invoke-virtual {v2, p3, v0, v1}, Lcom/google/android/recaptcha/internal/zzfy;->zzi([BII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p2, 0x3

    invoke-direct {p1, v4, p2, v3}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
