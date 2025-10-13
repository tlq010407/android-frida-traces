.class abstract Lcom/google/android/gms/internal/mlkit_language_id/zzhn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzb;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zza;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzd;,
        Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;
    }
.end annotation


# static fields
.field static final zza:Z

.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Z

.field private static final zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

.field private static final zzh:Z

.field private static final zzi:Z

.field private static final zzj:J

.field private static final zzk:J

.field private static final zzl:J

.field private static final zzm:J

.field private static final zzn:J

.field private static final zzo:J

.field private static final zzp:J

.field private static final zzq:J

.field private static final zzr:J

.field private static final zzs:J

.field private static final zzt:J

.field private static final zzu:J

.field private static final zzv:J

.field private static final zzw:J

.field private static final zzx:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zzb()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze:Z

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zza()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zza;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzb;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzd;-><init>(Lsun/misc/Unsafe;)V

    :cond_3
    :goto_0
    sput-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzh:Z

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzi:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzj:J

    const-class v2, [Z

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzk:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzl:J

    const-class v2, [I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzm:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzn:J

    const-class v2, [J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzo:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzp:J

    const-class v2, [F

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzq:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzr:J

    const-class v2, [D

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzs:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzt:J

    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzu:J

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzv:J

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 v2, -0x1

    :goto_2
    sput-wide v2, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzw:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzx:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza:Z

    return-void
.end method

.method static zza([BJ)B
    .locals 3

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    sget-wide v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzj:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/Object;J)I
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zze(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic zza(Ljava/lang/Object;JB)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JD)V
    .locals 6

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JF)V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JI)V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JJ)V
    .locals 6

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JZ)V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zza([BJB)V
    .locals 3

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    sget-wide v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzj:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zza()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzi:Z

    return v0
.end method

.method private static zzb(Ljava/lang/Class;)I
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzb(Ljava/lang/Object;J)J
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zzb(Ljava/lang/Object;JB)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzb(Ljava/lang/Object;JZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzb()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzh:Z

    return v0
.end method

.method private static zzc(Ljava/lang/Class;)I
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzc()Lsun/misc/Unsafe;
    .locals 1

    .line 0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhm;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static zzc(Ljava/lang/Object;JB)V
    .locals 4

    .line 0
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic zzc(Ljava/lang/Object;JZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zze(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzc(Ljava/lang/Object;J)Z
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zzb(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzd(Ljava/lang/Object;J)F
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zzc(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static zzd(Ljava/lang/Object;JB)V
    .locals 4

    .line 0
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzd(Ljava/lang/Object;JZ)V
    .locals 0

    .line 0
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzd()Z
    .locals 10

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "objectFieldOffset"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/reflect/Field;

    aput-object v9, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "arrayBaseOffset"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v3, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "arrayIndexScale"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v3, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getInt"

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putInt"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getLong"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putLong"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    aput-object v7, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getObject"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putObject"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    aput-object v4, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zza()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const-string v3, "getByte"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putByte"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v6

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v4, v0, v6

    aput-object v7, v0, v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    invoke-virtual {v5, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.protobuf.UnsafeUtil"

    const-string v4, "supportsUnsafeArrayOperations"

    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private static zzd(Ljava/lang/Class;)Z
    .locals 11

    .line 0
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-class v4, [B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zza()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    :try_start_0
    sget-object v5, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd:Ljava/lang/Class;

    const-string v7, "peekLong"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v9, v2, [Ljava/lang/Class;

    aput-object p0, v9, v6

    aput-object v8, v9, v3

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeLong"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object p0, v9, v6

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v8, v9, v2

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeInt"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v10, v1, [Ljava/lang/Class;

    aput-object p0, v10, v6

    aput-object v9, v10, v3

    aput-object v8, v10, v2

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekInt"

    new-array v10, v2, [Ljava/lang/Class;

    aput-object p0, v10, v6

    aput-object v8, v10, v3

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeByte"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object p0, v8, v6

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekByte"

    new-array v8, v3, [Ljava/lang/Class;

    aput-object p0, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeByteArray"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object p0, v8, v6

    aput-object v4, v8, v3

    aput-object v9, v8, v2

    aput-object v9, v8, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekByteArray"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p0, v0, v6

    aput-object v4, v0, v3

    aput-object v9, v0, v2

    aput-object v9, v0, v1

    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    return v6
.end method

.method static zze(Ljava/lang/Object;J)D
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zzd(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static zze(Ljava/lang/Object;JZ)V
    .locals 0

    .line 0
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zze()Z
    .locals 12

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "copyMemory"

    const-string v4, "getLong"

    const-class v5, Ljava/lang/Object;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzc:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "objectFieldOffset"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Ljava/lang/reflect/Field;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v5, v9, v7

    aput-object v8, v9, v2

    invoke-virtual {v6, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzf()Ljava/lang/reflect/Field;

    move-result-object v9

    if-nez v9, :cond_1

    return v7

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zza()Z

    move-result v9

    if-eqz v9, :cond_2

    return v2

    :cond_2
    const-string v9, "getByte"

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v8, v10, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "putByte"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v8, v10, v7

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "getInt"

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v8, v10, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "putInt"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v8, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v8, v9, v7

    invoke-virtual {v6, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putLong"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v8, v9, v7

    aput-object v8, v9, v2

    invoke-virtual {v6, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v8, v4, v7

    aput-object v8, v4, v2

    aput-object v8, v4, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v5, v4, v7

    aput-object v8, v4, v2

    aput-object v5, v4, v1

    aput-object v8, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzb:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.protobuf.UnsafeUtil"

    const-string v4, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzhn$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zzf()Ljava/lang/reflect/Field;
    .locals 3

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdl;->zza()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    const-string v0, "effectiveDirectAddress"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "address"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzg(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzk(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzh(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzl(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzi(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzm(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic zzj(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzn(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static zzk(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzl(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zza(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzm(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzk(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzn(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzhn;->zzl(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
