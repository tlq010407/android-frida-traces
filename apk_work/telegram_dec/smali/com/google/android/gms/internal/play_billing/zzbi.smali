.class public abstract Lcom/google/android/gms/internal/play_billing/zzbi;
.super Lcom/google/android/gms/internal/play_billing/zzaq;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Ljava/util/logging/Logger;

.field private static final zzd:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/play_billing/zzbj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbi;->zzc:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzbi;->zzd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>()V

    return-void
.end method

.method static bridge synthetic zzC()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzbi;->zzd:Z

    return v0
.end method

.method static zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzak;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result p1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result p0

    add-int/2addr p0, p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzu(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method static zzv(Lcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzak;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzw(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzev;->zzc(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/zzeu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzx(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzy(J)I
    .locals 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method

.method public static zzz([BII)Lcom/google/android/gms/internal/play_billing/zzbi;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzbf;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzbf;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final zzA()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zza()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzB(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzeu;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbi;->zzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzq(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzl([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzbg;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzbg;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(B)V
.end method

.method public abstract zzd(IZ)V
.end method

.method public abstract zze(ILcom/google/android/gms/internal/play_billing/zzba;)V
.end method

.method public abstract zzf(II)V
.end method

.method public abstract zzg(I)V
.end method

.method public abstract zzh(IJ)V
.end method

.method public abstract zzi(J)V
.end method

.method public abstract zzj(II)V
.end method

.method public abstract zzk(I)V
.end method

.method public abstract zzl([BII)V
.end method

.method public abstract zzm(ILjava/lang/String;)V
.end method

.method public abstract zzo(II)V
.end method

.method public abstract zzp(II)V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(IJ)V
.end method

.method public abstract zzs(J)V
.end method
