.class abstract Lcom/google/android/gms/internal/play_billing/zzao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static zza([BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    iput-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0
.end method

.method static zzb([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static zzc(Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 8

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    invoke-interface {p0, v7}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzf(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zzd(Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 7

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzf(Ljava/lang/Object;)V

    iput-object v6, p4, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzd(Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzd(Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p3

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static zzf([BILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iget p2, p3, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr p2, p1

    if-lt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    const/4 p0, 0x0

    throw p0
.end method

.method static zzg([BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0
.end method

.method static zzh([BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iget v4, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v4, :cond_b

    if-nez v4, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1

    :cond_0
    sget v5, Lcom/google/android/gms/internal/play_billing/zzev;->$r8$clinit:I

    array-length v5, p0

    sub-int v6, v5, p1

    or-int v7, p1, v4

    sub-int/2addr v6, v4

    or-int/2addr v6, v7

    if-ltz v6, :cond_a

    add-int v5, p1, v4

    new-array v4, v4, [C

    const/4 v6, 0x0

    :goto_0
    if-ge p1, v5, :cond_1

    aget-byte v7, p0, p1

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzer;->zzd(B)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/2addr p1, v3

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v4, v6

    move v6, v8

    goto :goto_0

    :cond_1
    move v12, v6

    :cond_2
    :goto_1
    if-ge p1, v5, :cond_9

    add-int/lit8 v6, p1, 0x1

    aget-byte v7, p0, p1

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzer;->zzd(B)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 p1, v12, 0x1

    int-to-char v7, v7

    aput-char v7, v4, v12

    move v12, p1

    move p1, v6

    :goto_2
    if-ge p1, v5, :cond_2

    aget-byte v6, p0, p1

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzer;->zzd(B)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/2addr p1, v3

    add-int/lit8 v7, v12, 0x1

    int-to-char v6, v6

    aput-char v6, v4, v12

    move v12, v7

    goto :goto_2

    :cond_3
    const/16 v8, -0x20

    if-ge v7, v8, :cond_5

    if-ge v6, v5, :cond_4

    add-int/2addr p1, v2

    aget-byte v6, p0, v6

    add-int/lit8 v8, v12, 0x1

    invoke-static {v7, v6, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzer;->zzc(BB[CI)V

    move v12, v8

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v8, -0x10

    if-ge v7, v8, :cond_7

    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_6

    add-int/lit8 v8, p1, 0x2

    aget-byte v6, p0, v6

    add-int/2addr p1, v1

    aget-byte v8, p0, v8

    add-int/lit8 v9, v12, 0x1

    invoke-static {v7, v6, v8, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzer;->zzb(BBB[CI)V

    move v12, v9

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_7
    add-int/lit8 v8, v5, -0x2

    if-ge v6, v8, :cond_8

    add-int/lit8 v8, p1, 0x2

    aget-byte v9, p0, v6

    add-int/lit8 v6, p1, 0x3

    aget-byte v8, p0, v8

    add-int/lit8 p1, p1, 0x4

    aget-byte v10, p0, v6

    move v6, v7

    move v7, v9

    move v9, v10

    move-object v10, v4

    move v11, v12

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/play_billing/zzer;->zza(BBBB[CI)V

    add-int/2addr v12, v2

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v0, v12}, Ljava/lang/String;-><init>([CII)V

    iput-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return v5

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    aput-object p1, v1, v3

    aput-object v4, v1, v2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzb()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzf()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v3

    iget p2, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    move v1, p2

    if-eq p2, v0, :cond_2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v3

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v1, v0, :cond_4

    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    :goto_1
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object p1

    goto :goto_1

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzb()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p0

    return p0
.end method

.method static zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 2

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_0

    shl-int/lit8 p1, v0, 0x7

    :goto_0
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v1

    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    shl-int/lit8 p1, v0, 0x15

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v1

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_1
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    iput p0, p3, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    return v0
.end method

.method static zzl(I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 0

    invoke-static {p4}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget p0, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    const/4 p0, 0x0

    throw p0
.end method

.method static zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-ltz v4, :cond_0

    iput-wide v0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    return v2

    :cond_0
    add-int/lit8 p1, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v3, v2, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    return p1
.end method

.method static zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdi;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result p1

    iput-object p0, p6, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget p3, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzan;)V

    iput-object p0, p5, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    return p3

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object p0

    throw p0
.end method

.method static zzp([BI)J
    .locals 18

    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
