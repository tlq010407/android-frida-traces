.class final Lcom/google/android/recaptcha/internal/zzki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzkr;


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzke;

.field private final zzb:Lcom/google/android/recaptcha/internal/zzll;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/recaptcha/internal/zzif;


# direct methods
.method private constructor <init>(Lcom/google/android/recaptcha/internal/zzll;Lcom/google/android/recaptcha/internal/zzif;Lcom/google/android/recaptcha/internal/zzke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzif;->zzj(Lcom/google/android/recaptcha/internal/zzke;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzc:Z

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    return-void
.end method

.method static zzc(Lcom/google/android/recaptcha/internal/zzll;Lcom/google/android/recaptcha/internal/zzif;Lcom/google/android/recaptcha/internal/zzke;)Lcom/google/android/recaptcha/internal/zzki;
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzki;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzki;-><init>(Lcom/google/android/recaptcha/internal/zzll;Lcom/google/android/recaptcha/internal/zzif;Lcom/google/android/recaptcha/internal/zzke;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzll;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v1, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzij;->zzb()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v1, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/recaptcha/internal/zzij;->zza:Lcom/google/android/recaptcha/internal/zzle;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzle;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    instance-of v1, v0, Lcom/google/android/recaptcha/internal/zzit;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzit;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzit;->zzs()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/recaptcha/internal/zzke;->zzW()Lcom/google/android/recaptcha/internal/zzkd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/recaptcha/internal/zzkd;->zzk()Lcom/google/android/recaptcha/internal/zzke;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-static {v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzkt;->zzr(Lcom/google/android/recaptcha/internal/zzll;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-static {v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzkt;->zzq(Lcom/google/android/recaptcha/internal/zzif;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzkq;Lcom/google/android/recaptcha/internal/zzie;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v2, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzc(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_5

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, p3, v5, v4}, Lcom/google/android/recaptcha/internal/zzif;->zzd(Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzke;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, p2, v4, p3, v3}, Lcom/google/android/recaptcha/internal/zzif;->zzg(Lcom/google/android/recaptcha/internal/zzkq;Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzij;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/recaptcha/internal/zzll;->zzr(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzkq;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzO()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/recaptcha/internal/zzll;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    :cond_6
    :goto_3
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    invoke-virtual {v2, p3, v4, v7}, Lcom/google/android/recaptcha/internal/zzif;->zzd(Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzke;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {v2, p2, v4, p3, v3}, Lcom/google/android/recaptcha/internal/zzif;->zzg(Lcom/google/android/recaptcha/internal/zzkq;Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzij;)V

    goto :goto_3

    :cond_9
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzp()Lcom/google/android/recaptcha/internal/zzgw;

    move-result-object v6

    goto :goto_3

    :cond_a
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzO()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_4
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzkq;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v6, :cond_0

    if-eqz v4, :cond_b

    invoke-virtual {v2, v6, v4, p3, v3}, Lcom/google/android/recaptcha/internal/zzif;->zzh(Lcom/google/android/recaptcha/internal/zzgw;Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzij;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v0, v1, v7, v6}, Lcom/google/android/recaptcha/internal/zzll;->zzk(Ljava/lang/Object;ILcom/google/android/recaptcha/internal/zzgw;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzje;->zzb()Lcom/google/android/recaptcha/internal/zzje;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/recaptcha/internal/zzll;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :goto_6
    throw p2

    :goto_7
    goto :goto_6
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/recaptcha/internal/zzgj;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    move-object v1, p1

    check-cast v1, Lcom/google/android/recaptcha/internal/zzit;

    iget-object v2, v1, Lcom/google/android/recaptcha/internal/zzit;->zzc:Lcom/google/android/recaptcha/internal/zzlm;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlm;->zzc()Lcom/google/android/recaptcha/internal/zzlm;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlm;->zzf()Lcom/google/android/recaptcha/internal/zzlm;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/recaptcha/internal/zzit;->zzc:Lcom/google/android/recaptcha/internal/zzlm;

    :cond_0
    check-cast p1, Lcom/google/android/recaptcha/internal/zzip;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzip;->zzi()Lcom/google/android/recaptcha/internal/zzij;

    const/4 p1, 0x0

    move-object v1, p1

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zzi([BILcom/google/android/recaptcha/internal/zzgj;)I

    move-result v5

    iget v3, p5, Lcom/google/android/recaptcha/internal/zzgj;->zza:I

    const/16 p3, 0xb

    const/4 v4, 0x2

    if-eq v3, p3, :cond_3

    and-int/lit8 p3, v3, 0x7

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    iget-object v1, p5, Lcom/google/android/recaptcha/internal/zzgj;->zzd:Lcom/google/android/recaptcha/internal/zzie;

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    ushr-int/lit8 v6, v3, 0x3

    invoke-virtual {p3, v1, v4, v6}, Lcom/google/android/recaptcha/internal/zzif;->zzd(Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzke;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v4, p2

    move v6, p4

    move-object v7, v2

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/google/android/recaptcha/internal/zzgk;->zzh(I[BIILcom/google/android/recaptcha/internal/zzlm;Lcom/google/android/recaptcha/internal/zzgj;)I

    move-result p3

    goto :goto_0

    :cond_1
    sget p2, Lcom/google/android/recaptcha/internal/zzkn;->zza:I

    throw p1

    :cond_2
    invoke-static {v3, p2, v5, p4, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zzo(I[BIILcom/google/android/recaptcha/internal/zzgj;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, p1

    :goto_1
    if-ge v5, p4, :cond_8

    invoke-static {p2, v5, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zzi([BILcom/google/android/recaptcha/internal/zzgj;)I

    move-result v5

    iget v6, p5, Lcom/google/android/recaptcha/internal/zzgj;->zza:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v4, :cond_6

    if-eq v7, v0, :cond_4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    if-ne v8, v4, :cond_7

    invoke-static {p2, v5, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zza([BILcom/google/android/recaptcha/internal/zzgj;)I

    move-result v5

    iget-object v3, p5, Lcom/google/android/recaptcha/internal/zzgj;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/recaptcha/internal/zzgw;

    goto :goto_1

    :cond_5
    sget p2, Lcom/google/android/recaptcha/internal/zzkn;->zza:I

    throw p1

    :cond_6
    if-nez v8, :cond_7

    invoke-static {p2, v5, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zzi([BILcom/google/android/recaptcha/internal/zzgj;)I

    move-result v5

    iget p3, p5, Lcom/google/android/recaptcha/internal/zzgj;->zza:I

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    iget-object v6, p5, Lcom/google/android/recaptcha/internal/zzgj;->zzd:Lcom/google/android/recaptcha/internal/zzie;

    iget-object v7, p0, Lcom/google/android/recaptcha/internal/zzki;->zza:Lcom/google/android/recaptcha/internal/zzke;

    invoke-virtual {v1, v6, v7, p3}, Lcom/google/android/recaptcha/internal/zzif;->zzd(Lcom/google/android/recaptcha/internal/zzie;Lcom/google/android/recaptcha/internal/zzke;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    invoke-static {v6, p2, v5, p4, p5}, Lcom/google/android/recaptcha/internal/zzgk;->zzo(I[BIILcom/google/android/recaptcha/internal/zzgj;)I

    move-result v5

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    shl-int/2addr p3, v0

    or-int/2addr p3, v4

    invoke-virtual {v2, p3, v3}, Lcom/google/android/recaptcha/internal/zzlm;->zzj(ILjava/lang/Object;)V

    :cond_9
    move p3, v5

    goto :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzje;->zzg()Lcom/google/android/recaptcha/internal/zzje;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzmd;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzij;->zzf()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/recaptcha/internal/zzii;

    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzii;->zze()Lcom/google/android/recaptcha/internal/zzmc;

    move-result-object v3

    sget-object v4, Lcom/google/android/recaptcha/internal/zzmc;->zzi:Lcom/google/android/recaptcha/internal/zzmc;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzii;->zzg()Z

    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzii;->zzf()Z

    instance-of v3, v1, Lcom/google/android/recaptcha/internal/zzjh;

    invoke-interface {v2}, Lcom/google/android/recaptcha/internal/zzii;->zza()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/android/recaptcha/internal/zzjh;

    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzjh;->zza()Lcom/google/android/recaptcha/internal/zzjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzjk;->zzb()Lcom/google/android/recaptcha/internal/zzgw;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/android/recaptcha/internal/zzmd;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzll;->zzp(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzmd;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzb:Lcom/google/android/recaptcha/internal/zzll;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzll;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/recaptcha/internal/zzll;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v0, p2}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzij;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzki;->zzd:Lcom/google/android/recaptcha/internal/zzif;

    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/recaptcha/internal/zzij;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzij;->zzk()Z

    move-result p1

    return p1
.end method
